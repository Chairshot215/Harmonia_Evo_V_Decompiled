.class public Lcom/android/camera/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"


# static fields
.field static final ACTIVE_AP:Ljava/lang/String; = "active_ap=Camcorder;"

.field public static final CamcoderEffects:[Ljava/lang/String; = null

.field static final DISABLE_AUDIO_EFFECT:Ljava/lang/String; = "active_ap=Camcorder;sound_effect_enable=off"

.field static final EFFECT_PARAMETER:Ljava/lang/String; = "dolby_srs_eq"

.field static final ENABLE_AUDIO_EFFECT:Ljava/lang/String; = "active_ap=Camcorder;sound_effect_enable=on"

.field public static Landscape_Left:I = 0x0

.field public static Landscape_Right:I = 0x0

.field public static Mono:I = 0x0

.field public static Portrait:I = 0x0

.field static final SET_AUDIO_EFFECT:Ljava/lang/String; = "active_ap=Camcorder;dolby_srs_eq="

.field static final TAG:Ljava/lang/String; = "CamcoderSoundEffect"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mono"

    aput-object v1, v0, v2

    const-string v1, "Landscape_Left"

    aput-object v1, v0, v3

    const-string v1, "Landscape_Right"

    aput-object v1, v0, v4

    const-string v1, "Portrait"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/SoundEffect;->CamcoderEffects:[Ljava/lang/String;

    sput v2, Lcom/android/camera/SoundEffect;->Mono:I

    sput v3, Lcom/android/camera/SoundEffect;->Landscape_Left:I

    sput v4, Lcom/android/camera/SoundEffect;->Landscape_Right:I

    sput v5, Lcom/android/camera/SoundEffect;->Portrait:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSoundEffect()I
    .locals 3

    const-string v1, "CamcoderSoundEffect"

    const-string v2, "disableSoundEffect"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "active_ap=Camcorder;sound_effect_enable=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static enableSoundEffect()I
    .locals 3

    const-string v1, "CamcoderSoundEffect"

    const-string v2, "enableSoundEffect"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "active_ap=Camcorder;sound_effect_enable=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setHWSoundEffect(Ljava/lang/String;)I
    .locals 4

    const-string v1, "CamcoderSoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHWSoundEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static setSoundEffect(ZI)I
    .locals 4

    const-string v1, "CamcoderSoundEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSoundEffect hasEffect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/android/camera/SoundEffect;->CamcoderEffects:[Ljava/lang/String;

    sget v2, Lcom/android/camera/SoundEffect;->Mono:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/camera/SoundEffect;->setHWSoundEffect(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/camera/SoundEffect;->CamcoderEffects:[Ljava/lang/String;

    sget v2, Lcom/android/camera/SoundEffect;->Landscape_Left:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/camera/SoundEffect;->setHWSoundEffect(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    sget-object v1, Lcom/android/camera/SoundEffect;->CamcoderEffects:[Ljava/lang/String;

    sget v2, Lcom/android/camera/SoundEffect;->Landscape_Right:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/camera/SoundEffect;->setHWSoundEffect(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/camera/SoundEffect;->CamcoderEffects:[Ljava/lang/String;

    sget v2, Lcom/android/camera/SoundEffect;->Portrait:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/camera/SoundEffect;->setHWSoundEffect(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
