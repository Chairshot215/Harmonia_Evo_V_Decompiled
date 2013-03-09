.class public Lcom/google/android/talk/videochat/FilterFrameworkEffects;
.super Ljava/lang/Object;
.source "FilterFrameworkEffects.java"


# instance fields
.field private mActiveBuffer:[I

.field private mActiveFbo:[I

.field private mActiveProgram:[I

.field private mEffect:Landroid/media/effect/Effect;

.field private mEffectContext:Landroid/media/effect/EffectContext;

.field private mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    .line 34
    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mActiveFbo:[I

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mActiveProgram:[I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mActiveBuffer:[I

    .line 123
    invoke-direct {p0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->setupEnvironment()V

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->activateEffect(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)V

    .line 125
    return-void
.end method

.method private activateEffect(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectId:I

    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget v1, v1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectId:I

    if-ne v0, v1, :cond_0

    .line 81
    iget v0, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectId:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    .line 97
    iget v0, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectId:I

    iget-object v1, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectParam:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->setupEffect(ILjava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    const-string v2, "currentEffect"

    iget-object v0, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectParam:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v1, "Talk:ffw"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting funny face effect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectParam:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget-object v1, p1, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectParam:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectParam:Ljava/lang/Object;

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static isEffectAvailable(I)Z
    .locals 1
    .parameter "effectId"

    .prologue
    .line 128
    packed-switch p0, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    const-string v0, "com.google.android.media.effect.effects.VCOEffect"

    invoke-static {v0}, Landroid/media/effect/EffectFactory;->isEffectSupported(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "com.google.android.media.effect.effects.GoofyFaceEffect"

    invoke-static {v0}, Landroid/media/effect/EffectFactory;->isEffectSupported(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "android.media.effect.effects.BackDropperEffect"

    invoke-static {v0}, Landroid/media/effect/EffectFactory;->isEffectSupported(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setupEffect(ILjava/lang/Object;)V
    .locals 4
    .parameter "effectId"
    .parameter "param"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->isEffectAvailable(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const-string v1, "Talk:ffw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->releaseEffect()V

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 73
    .end local p2
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    if-nez v1, :cond_0

    .line 74
    const-string v1, "Talk:ffw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not initialize the effect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v1}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    move-result-object v1

    const-string v2, "com.google.android.media.effect.effects.GoofyFaceEffect"

    invoke-virtual {v1, v2}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    .line 56
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    const-string v2, "currentEffect"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    .restart local p2
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v1}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    move-result-object v1

    const-string v2, "com.google.android.media.effect.effects.VCOEffect"

    invoke-virtual {v1, v2}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    .line 61
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    const-string v2, "maxOutputSize"

    const/16 v3, 0x140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    move-object v0, p2

    .line 64
    check-cast v0, Landroid/net/Uri;

    .line 65
    .local v0, backgroundUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v1}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    move-result-object v1

    const-string v2, "android.media.effect.effects.BackDropperEffect"

    invoke-virtual {v1, v2}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    .line 67
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    const-string v2, "source"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget-object v2, v2, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->effectCallback:Landroid/media/effect/EffectUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/effect/Effect;->setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setupEnvironment()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/media/effect/EffectContext;->createWithCurrentGlContext()Landroid/media/effect/EffectContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 42
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->releaseEffect()V

    .line 112
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->release()V

    .line 113
    return-void
.end method

.method public releaseEffect()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    invoke-virtual {v0}, Landroid/media/effect/Effect;->release()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    .line 120
    :cond_0
    return-void
.end method

.method public renderFrame()Z
    .locals 6

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    iget-object v2, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget v2, v2, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureName:I

    iget-object v3, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget v3, v3, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureWidth:I

    iget-object v4, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget v4, v4, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureHeight:I

    iget-object v5, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget v5, v5, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->outputTextureName:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/effect/Effect;->apply(IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v1, 0x1

    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Talk:ffw"

    const-string v2, "Error running effect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    throw v0
.end method

.method public setInputTextureName(I)V
    .locals 1
    .parameter "inputTextureName"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iput p1, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->inputTextureName:I

    .line 102
    return-void
.end method

.method public setTimestamp(J)V
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    invoke-virtual {v0}, Landroid/media/effect/Effect;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.media.effect.effects.VCOEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mEffect:Landroid/media/effect/Effect;

    const-string v1, "timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method public switchEffect(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->activateEffect(Lcom/google/android/talk/videochat/FilterSetupInputParameters;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/talk/videochat/FilterFrameworkEffects;->mSetupParams:Lcom/google/android/talk/videochat/FilterSetupInputParameters;

    iget v0, v0, Lcom/google/android/talk/videochat/FilterSetupInputParameters;->outputTextureName:I

    return v0
.end method
