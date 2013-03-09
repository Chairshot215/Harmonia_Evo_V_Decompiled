.class public Lcom/google/appinventor/components/runtime/Sound;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A multimedia component that plays sound files and optionally vibrates for the number of milliseconds (thousandths of a second) specified in the Blocks Editor.  The name of the sound file to play can be specified either in the Designer or in the Blocks Editor.</p> <p>For legal sound and video formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>This component is best for short sound files, such as sound effects, while the <code>Player</code> component is more efficient for longer sounds, such as songs.</p>"
    iconName = "images/soundEffect.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOOP_MODE_NO_LOOP:I = 0x0

.field private static final MAX_STREAMS:I = 0xa

.field private static final PLAYBACK_RATE_NORMAL:F = 1.0f

.field private static final VOLUME_FULL:F = 1.0f


# instance fields
.field private minimumInterval:I

.field private soundId:I

.field private final soundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field private sourcePath:Ljava/lang/String;

.field private streamId:I

.field private timeLastPlayed:J

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    const/4 v3, 0x3

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sound;->MinimumInterval(I)V

    return-void
.end method

.method private prepareToDie()V
    .locals 2

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval..."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to pause. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Play()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    iget v3, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    cmp-long v3, v0, v5

    if-ltz v3, :cond_2

    :cond_0
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    const-string v0, "Sound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundPool.play returned stream id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Play"

    const/16 v2, 0x2bf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "Sound"

    const-string v1, "Unable to play because MinimumInterval has not elapsed since last play."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "Sound"

    const-string v1, "Unable to play. Did you remember to set the Source property?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Resume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to resume. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SoundError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The SoundError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the sound file.  Only <a href=\"http://developer.android.com/guide/appendix/media-formats.html\">certain formats</a> are supported."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/16 v8, 0x2bd

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_2

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iput v6, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    :cond_0
    iput v6, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    const-string v0, "Sound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing sound with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Sound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully loaded sound: setting soundId to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Source"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, p0, v1, v8, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Source"

    const/16 v2, 0x2bd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to stop. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Vibrate(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Sound"

    const-string v1, "Got onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Sound"

    const-string v1, "Got onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    :cond_0
    return-void
.end method
