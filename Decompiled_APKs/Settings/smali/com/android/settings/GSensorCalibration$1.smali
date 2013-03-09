.class Lcom/android/settings/GSensorCalibration$1;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 219
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 224
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/high16 v4, -0x3de0

    const/high16 v3, -0x3e10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 227
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 231
    .local v0, values:[F
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->isCHS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 233
    aget v1, v0, v9

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    aput v1, v0, v9

    .line 234
    aget v1, v0, v7

    const/high16 v2, 0x40a0

    mul-float/2addr v1, v2

    aput v1, v0, v7

    .line 236
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_4

    .line 239
    aget v1, v0, v9

    const/high16 v2, 0x42b4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/high16 v1, 0x42b4

    aput v1, v0, v9

    .line 241
    :cond_0
    :goto_0
    aget v1, v0, v7

    const/high16 v2, 0x428c

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 v1, 0x428c

    aput v1, v0, v7

    .line 285
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->isCHS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 286
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    aget v4, v0, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    .line 287
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v9

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v2, v2, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->isCHS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 299
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v5, v5, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    aget v6, v0, v7

    neg-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    .line 300
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v7

    neg-float v2, v2

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    .line 306
    :goto_3
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v1, v1, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v2, v2, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    return-void

    .line 240
    :cond_2
    aget v1, v0, v8

    const/high16 v2, -0x3d4c

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/high16 v1, -0x3d4c

    aput v1, v0, v8

    goto/16 :goto_0

    .line 242
    :cond_3
    aget v1, v0, v7

    const/high16 v2, -0x3d56

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3d56

    aput v1, v0, v7

    goto/16 :goto_1

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_8

    .line 245
    aget v1, v0, v9

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    const/high16 v1, 0x41f0

    aput v1, v0, v9

    .line 247
    :cond_5
    :goto_4
    aget v1, v0, v7

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    const/high16 v1, 0x41f0

    aput v1, v0, v7

    goto/16 :goto_1

    .line 246
    :cond_6
    aget v1, v0, v8

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    aput v3, v0, v8

    goto :goto_4

    .line 248
    :cond_7
    aget v1, v0, v7

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    aput v3, v0, v7

    goto/16 :goto_1

    .line 252
    :cond_8
    aget v1, v0, v9

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    const/high16 v1, 0x4220

    aput v1, v0, v9

    .line 254
    :cond_9
    :goto_5
    aget v1, v0, v7

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    const/high16 v1, 0x4220

    aput v1, v0, v7

    goto/16 :goto_1

    .line 253
    :cond_a
    aget v1, v0, v9

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9

    aput v4, v0, v9

    goto :goto_5

    .line 255
    :cond_b
    aget v1, v0, v7

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    aput v4, v0, v7

    goto/16 :goto_1

    .line 261
    :cond_c
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_10

    .line 264
    aget v1, v0, v8

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const/high16 v1, 0x4248

    aput v1, v0, v8

    .line 266
    :cond_d
    :goto_6
    aget v1, v0, v7

    const/high16 v2, 0x428c

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    const/high16 v1, 0x428c

    aput v1, v0, v7

    goto/16 :goto_1

    .line 265
    :cond_e
    aget v1, v0, v8

    const/high16 v2, -0x3db8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    const/high16 v1, -0x3db8

    aput v1, v0, v8

    goto :goto_6

    .line 267
    :cond_f
    aget v1, v0, v7

    const/high16 v2, -0x3db8

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/high16 v1, -0x3db8

    aput v1, v0, v7

    goto/16 :goto_1

    .line 269
    :cond_10
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v1, v1, Lcom/android/settings/GSensorCalibration;->dpi:I

    const/16 v2, 0x78

    if-ne v1, v2, :cond_14

    .line 270
    aget v1, v0, v8

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    const/high16 v1, 0x41f0

    aput v1, v0, v8

    .line 272
    :cond_11
    :goto_7
    aget v1, v0, v7

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    const/high16 v1, 0x41f0

    aput v1, v0, v7

    goto/16 :goto_1

    .line 271
    :cond_12
    aget v1, v0, v8

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    aput v3, v0, v8

    goto :goto_7

    .line 273
    :cond_13
    aget v1, v0, v7

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    aput v3, v0, v7

    goto/16 :goto_1

    .line 277
    :cond_14
    aget v1, v0, v8

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    const/high16 v1, 0x4220

    aput v1, v0, v8

    .line 279
    :cond_15
    :goto_8
    aget v1, v0, v7

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    const/high16 v1, 0x4220

    aput v1, v0, v7

    goto/16 :goto_1

    .line 278
    :cond_16
    aget v1, v0, v8

    cmpg-float v1, v1, v4

    if-gez v1, :cond_15

    aput v4, v0, v8

    goto :goto_8

    .line 280
    :cond_17
    aget v1, v0, v7

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    aput v4, v0, v7

    goto/16 :goto_1

    .line 290
    :cond_18
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    aget v4, v0, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_V:Landroid/view/animation/TranslateAnimation;

    .line 291
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v8

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    goto/16 :goto_2

    .line 303
    :cond_19
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v5, v5, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    aget v6, v0, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, v1, Lcom/android/settings/GSensorCalibration;->animBubble_H:Landroid/view/animation/TranslateAnimation;

    .line 304
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$1;->this$0:Lcom/android/settings/GSensorCalibration;

    aget v2, v0, v7

    iput v2, v1, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    goto/16 :goto_3
.end method
