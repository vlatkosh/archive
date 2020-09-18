using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EvasiveManeuver : MonoBehaviour {

    // Maneuver variables
    public float dodge; //maximum length to move in X axis, for evasive maneuver
    public float smoothing;
    private float targetManeuver;

    public Vector2 startWait;
    public Vector2 maneuverTime;
    public Vector2 maneuverWait;

    // Other variables
    public float tilt;
    public Boundary boundary;
    
    private float currentSpeed;
    private Rigidbody rb;
    private Transform playerTransform; //moving towards the player, agressive maneuver

    private void Start() {
        rb = GetComponent<Rigidbody>();

        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null) playerTransform = player.transform;

        currentSpeed = rb.velocity.z;
        StartCoroutine(Evade());
    }

    private IEnumerator Evade() {
        yield return new WaitForSeconds(Random.Range(startWait.x, startWait.y));
        while (true) {

            // evasive maneuver
            // the following will make it so the enemy always moves towards the centre
            // the Range(1, dodge) specifies how far to move
            //targetManeuver = Random.Range(1, dodge) * -Mathf.Sign(transform.position.x);

            //aggresive maneuver
            if (playerTransform != null) {
                targetManeuver = playerTransform.position.x;
            }

            yield return new WaitForSeconds(Random.Range(maneuverTime.x, maneuverTime.y));
            targetManeuver = 0;
            yield return new WaitForSeconds(Random.Range(maneuverWait.x, maneuverWait.y));
        }
    }

    private void FixedUpdate() {
        float newManeuver = Mathf.MoveTowards(rb.velocity.x, targetManeuver, Time.deltaTime * smoothing);
        rb.velocity = new Vector3(newManeuver, 0.0f, currentSpeed);
        rb.position = new Vector3(
            Mathf.Clamp(rb.position.x, boundary.xMin, boundary.xMax),
            0.0f,
            Mathf.Clamp(rb.position.z, boundary.zMin, boundary.zMax)
        );
        rb.rotation = Quaternion.Euler(0.0f, 0.0f, rb.velocity.x * -tilt);
    }

}
