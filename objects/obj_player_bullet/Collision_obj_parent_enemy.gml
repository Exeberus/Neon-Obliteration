var AoE_Effect = instance_create_layer(x, y, "Instances", obj_AoE_effect);
AoE_Effect.effectRadioTarget = bulletAoERange;
AoE_Effect.effectType = "Explosion";
AoE_Effect.effectColour = image_blend;

bulletCollision();