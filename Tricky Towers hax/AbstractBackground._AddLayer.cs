using System;
using System.Collections.Generic;
using UnityEngine;

// Token: 0x0200043E RID: 1086
public abstract partial class AbstractBackground : IInjectable, ICleanup, IUpdatable
{
	// Token: 0x06001627 RID: 5671
	public BackgroundLayer _AddLayer(BackgroundLayer layer)
	{
		Type[] forbiddenTypes = {
			typeof(CloudLayer),
			typeof(StarrySkyLayer),
			typeof(MistLayer),
			typeof(LightningLayer),
			typeof(WavesLayer),
			typeof(WindZoneLayer),
			//typeof(RainLayer)
			typeof(SurvivalBackgroundIslandsLayer),
			typeof(SurvivalForegroundIslandsLayer),
			typeof(IslandsLayer),
			typeof(IslandsProLayer),
			typeof(IslandsEndlessLayer),
			typeof(GradientLayer),
			typeof(WaterGradientLayer),
			//typeof(RuinsLayersBack),
			//typeof(RuinsLayerMiddle),
			//typeof(RuinsLayerFront),
			//typeof(SandLayer),
			//typeof(SandStormLayer),
		};
		Type layerType = layer.GetType();
		bool shouldAdd = true;
		foreach (Type t in forbiddenTypes) {
			if (layerType == t) {
				shouldAdd = false;
				break;
			}
		}
		if (shouldAdd)
		{
			this._layers.Add(layer);
			layer.SetParent(this._container);
			layer.zoomableCamera = this._zoomableCamera;
			layer.cameraOffsetModel = this._cameraOffsetModel;
		}
		return layer;
	}
}
