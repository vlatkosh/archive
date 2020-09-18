using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour {

    public GameObject[] hazards;
    public Vector3 spawnValues;
    public int initialHazardCount;
    public float startWait;
    public float initialSpawnWait;
    public float initialWaveWait;
    public float minimumSpawnWait;
    public float minimumWaveWait;

    public Text scoreText;
    private int score;
    private int hazardCount;
    private float spawnWait;
    private float waveWait;

    public Text restartText;
    public Text gameOverText;

    private bool gameOver;
    private bool restart;
    
    private string lastHazardTag;

    private void Start() {
        gameOver = false;
        restart = false;
        restartText.text = "";
        gameOverText.text = "";
        score = 0;
        UpdateScore();
        hazardCount = initialHazardCount;
        spawnWait = initialSpawnWait;
        waveWait = initialWaveWait;
        StartCoroutine(SpawnWaves());
    }

    private void Update() {
        if (restart && Input.GetKeyDown(KeyCode.R)) {
            //Reload scene
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }

    private void SpawnHazard() {
        GameObject hazard;

        //we don't want to spawn 2 enemies in a row because in the later waves, they will clip
        do {
            hazard = hazards[Random.Range(0, hazards.Length)];
        } while (hazard.CompareTag("Enemy") && lastHazardTag == "Enemy");

        lastHazardTag = hazard.tag;

        Vector3 spawnPosition = new Vector3(Random.Range(-spawnValues.x, spawnValues.x), spawnValues.y, spawnValues.z);
        Quaternion spawnRotation = Quaternion.identity;
        Instantiate(hazard, spawnPosition, spawnRotation);
    }

    private IEnumerator SpawnWaves() {
        yield return new WaitForSeconds(startWait);

        while (true) {
            for (int i = 0; i < hazardCount; ++i) {
                SpawnHazard();
                yield return new WaitForSeconds(spawnWait);
            }
            yield return new WaitForSeconds(waveWait);

            if (gameOver) {
                restartText.text = "Press 'R' for Restart";
                restart = true;
                break;
            }

            //Steadily increase difficulty
            hazardCount += 2;
            spawnWait = Mathf.Max(minimumSpawnWait, spawnWait - 0.05f);
            waveWait = Mathf.Max(minimumWaveWait, waveWait - 0.5f);
        }
    }

    public void AddScore(int newScoreValue) {
        score += newScoreValue;
        UpdateScore();
    }

    private void UpdateScore() {
        scoreText.text = "Score: " + score;
    }

    public void GameOver() {
        gameOverText.text = "Game Over!";
        gameOver = true;
    }
	
}
