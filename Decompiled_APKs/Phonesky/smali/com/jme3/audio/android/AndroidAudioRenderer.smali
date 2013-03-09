.class public Lcom/jme3/audio/android/AndroidAudioRenderer;
.super Ljava/lang/Object;
.source "AndroidAudioRenderer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;
.implements Lcom/jme3/audio/AudioRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/android/AndroidAudioRenderer$1;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private audioDisabled:Z

.field private final context:Landroid/content/Context;

.field private final distanceVector:Lcom/jme3/math/Vector3f;

.field private listener:Lcom/jme3/audio/Listener;

.field private final listenerPosition:Lcom/jme3/math/Vector3f;

.field private final manager:Landroid/media/AudioManager;

.field private final musicPlaying:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/jme3/audio/AudioNode;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field private soundpoolStillLoading:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/audio/AudioNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/jme3/audio/android/AndroidAudioRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    .line 67
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->listenerPosition:Lcom/jme3/math/Vector3f;

    .line 69
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->distanceVector:Lcom/jme3/math/Vector3f;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundpoolStillLoading:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->audioDisabled:Z

    .line 78
    iput-object p1, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->context:Landroid/content/Context;

    .line 79
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->manager:Landroid/media/AudioManager;

    .line 80
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->assetManager:Landroid/content/res/AssetManager;

    .line 82
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    .line 277
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 279
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    .line 283
    :cond_0
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/AudioNode;

    .line 284
    .local v2, src:Lcom/jme3/audio/AudioNode;
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 286
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 287
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 288
    sget-object v3, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    invoke-virtual {v2, v3}, Lcom/jme3/audio/AudioNode;->setStatus(Lcom/jme3/audio/AudioNode$Status;)V

    goto :goto_0

    .line 291
    .end local v1           #mp:Landroid/media/MediaPlayer;
    .end local v2           #src:Lcom/jme3/audio/AudioNode;
    :cond_1
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 292
    return-void
.end method

.method public deleteAudioData(Lcom/jme3/audio/AudioData;)V
    .locals 6
    .parameter "ad"

    .prologue
    const/4 v5, -0x1

    .line 472
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/AudioNode;

    .line 473
    .local v2, src:Lcom/jme3/audio/AudioNode;
    invoke-virtual {v2}, Lcom/jme3/audio/AudioNode;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 474
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 475
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 476
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 477
    sget-object v3, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    invoke-virtual {v2, v3}, Lcom/jme3/audio/AudioNode;->setStatus(Lcom/jme3/audio/AudioNode$Status;)V

    .line 478
    invoke-virtual {v2, v5}, Lcom/jme3/audio/AudioNode;->setChannel(I)V

    .line 479
    invoke-virtual {p1, v5}, Lcom/jme3/audio/AudioData;->setId(I)V

    .line 484
    .end local v1           #mp:Landroid/media/MediaPlayer;
    .end local v2           #src:Lcom/jme3/audio/AudioNode;
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getId()I

    move-result v3

    if-lez v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Lcom/jme3/audio/AudioData;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 486
    invoke-virtual {p1, v5}, Lcom/jme3/audio/AudioData;->setId(I)V

    .line 488
    :cond_2
    return-void
.end method

.method public deleteFilter(Lcom/jme3/audio/Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 497
    return-void
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    .line 88
    iget-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 89
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 296
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 297
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 300
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/audio/AudioNode;

    .line 301
    .local v1, src:Lcom/jme3/audio/AudioNode;
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 302
    sget-object v2, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    invoke-virtual {v1, v2}, Lcom/jme3/audio/AudioNode;->setStatus(Lcom/jme3/audio/AudioNode$Status;)V

    .line 306
    .end local v1           #src:Lcom/jme3/audio/AudioNode;
    :cond_1
    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 10
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    const/high16 v2, 0x3f80

    .line 354
    iget-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundpoolStillLoading:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/audio/AudioNode;

    .line 356
    .local v9, src:Lcom/jme3/audio/AudioNode;
    if-nez v9, :cond_1

    .line 357
    sget-object v0, Lcom/jme3/audio/android/AndroidAudioRenderer;->logger:Ljava/util/logging/Logger;

    const-string v1, "Something went terribly wrong! onLoadComplete had sampleId which was not in the HashMap of loading items"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {v9}, Lcom/jme3/audio/AudioNode;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v7

    .line 364
    .local v7, audioData:Lcom/jme3/audio/AudioData;
    if-nez p3, :cond_0

    .line 367
    invoke-virtual {v7}, Lcom/jme3/audio/AudioData;->getId()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 368
    .local v8, channelIndex:I
    invoke-virtual {v9, v8}, Lcom/jme3/audio/AudioNode;->setChannel(I)V

    goto :goto_0
.end method

.method public pauseAll()V
    .locals 3

    .prologue
    .line 411
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->autoPause()V

    .line 413
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 414
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 417
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :cond_0
    return-void
.end method

.method public resumeAll()V
    .locals 3

    .prologue
    .line 423
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->autoResume()V

    .line 425
    iget-object v2, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 426
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 429
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/jme3/audio/Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->audioDisabled:Z

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/audio/Listener;->setRenderer(Lcom/jme3/audio/AudioRenderer;)V

    .line 269
    :cond_1
    iput-object p1, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    .line 270
    iget-object v0, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {v0, p0}, Lcom/jme3/audio/Listener;->setRenderer(Lcom/jme3/audio/AudioRenderer;)V

    goto :goto_0
.end method

.method public update(F)V
    .locals 8
    .parameter "tpf"

    .prologue
    .line 228
    iget-object v6, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/audio/AudioNode;

    .line 230
    .local v4, src:Lcom/jme3/audio/AudioNode;
    iget-object v6, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->musicPlaying:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaPlayer;

    .line 233
    .local v3, mp:Landroid/media/MediaPlayer;
    iget-object v6, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->distanceVector:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->listenerPosition:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 234
    iget-object v6, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->distanceVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 235
    iget-object v6, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->distanceVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->length()F

    move-result v6

    invoke-static {v6}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    .line 237
    .local v1, distance:F
    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getRefDistance()F

    move-result v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    .line 238
    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getRefDistance()F

    move-result v1

    .line 240
    :cond_1
    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getMaxDistance()F

    move-result v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    .line 241
    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getMaxDistance()F

    move-result v1

    .line 243
    :cond_2
    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getRefDistance()F

    move-result v6

    div-float v5, v6, v1

    .line 245
    .local v5, volume:F
    invoke-virtual {v4}, Lcom/jme3/audio/AudioNode;->getAudioData()Lcom/jme3/audio/AudioData;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/android/AndroidAudioData;

    .line 247
    .local v0, audioData:Lcom/jme3/audio/android/AndroidAudioData;
    invoke-virtual {v0}, Lcom/jme3/audio/android/AndroidAudioData;->getCurrentVolume()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v6

    const/high16 v7, 0x3400

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 250
    invoke-virtual {v3, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 252
    invoke-virtual {v0, v5}, Lcom/jme3/audio/android/AndroidAudioData;->setCurrentVolume(F)V

    goto :goto_0

    .line 256
    .end local v0           #audioData:Lcom/jme3/audio/android/AndroidAudioData;
    .end local v1           #distance:F
    .end local v3           #mp:Landroid/media/MediaPlayer;
    .end local v4           #src:Lcom/jme3/audio/AudioNode;
    .end local v5           #volume:F
    :cond_3
    return-void
.end method

.method public updateSourceParam(Lcom/jme3/audio/AudioNode;Lcom/jme3/audio/AudioParam;)V
    .locals 8
    .parameter "src"
    .parameter "param"

    .prologue
    .line 95
    iget-boolean v4, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->audioDisabled:Z

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getChannel()I

    move-result v4

    if-ltz v4, :cond_0

    .line 103
    sget-object v4, Lcom/jme3/audio/android/AndroidAudioRenderer$1;->$SwitchMap$com$jme3$audio$AudioParam:[I

    invoke-virtual {p2}, Lcom/jme3/audio/AudioParam;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isPositional()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 110
    .local v2, pos:Lcom/jme3/math/Vector3f;
    goto :goto_0

    .line 112
    .end local v2           #pos:Lcom/jme3/math/Vector3f;
    :pswitch_2
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isPositional()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 117
    .local v3, vel:Lcom/jme3/math/Vector3f;
    goto :goto_0

    .line 119
    .end local v3           #vel:Lcom/jme3/math/Vector3f;
    :pswitch_3
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isPositional()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 124
    :pswitch_4
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isPositional()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 129
    :pswitch_5
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isPositional()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isReverbEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 134
    :pswitch_6
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isPositional()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isReverbEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    sget-object v4, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    invoke-virtual {p0, p1, v4}, Lcom/jme3/audio/android/AndroidAudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioNode;Lcom/jme3/audio/AudioParam;)V

    goto :goto_0

    .line 145
    :pswitch_7
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isDirectional()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 150
    .local v0, dir:Lcom/jme3/math/Vector3f;
    goto :goto_0

    .line 152
    .end local v0           #dir:Lcom/jme3/math/Vector3f;
    :pswitch_8
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isDirectional()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 157
    :pswitch_9
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isDirectional()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 162
    :pswitch_a
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isDirectional()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    sget-object v4, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    invoke-virtual {p0, p1, v4}, Lcom/jme3/audio/android/AndroidAudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioNode;Lcom/jme3/audio/AudioParam;)V

    .line 164
    sget-object v4, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    invoke-virtual {p0, p1, v4}, Lcom/jme3/audio/android/AndroidAudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioNode;Lcom/jme3/audio/AudioParam;)V

    .line 165
    sget-object v4, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    invoke-virtual {p0, p1, v4}, Lcom/jme3/audio/android/AndroidAudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioNode;Lcom/jme3/audio/AudioParam;)V

    goto/16 :goto_0

    .line 170
    :pswitch_b
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getDryFilter()Lcom/jme3/audio/Filter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getDryFilter()Lcom/jme3/audio/Filter;

    move-result-object v1

    .line 172
    .local v1, f:Lcom/jme3/audio/Filter;
    invoke-virtual {v1}, Lcom/jme3/audio/Filter;->isUpdateNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 178
    .end local v1           #f:Lcom/jme3/audio/Filter;
    :pswitch_c
    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->isLooping()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 183
    :pswitch_d
    iget-object v4, p0, Lcom/jme3/audio/android/AndroidAudioRenderer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getChannel()I

    move-result v5

    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getVolume()F

    move-result v6

    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->getVolume()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
