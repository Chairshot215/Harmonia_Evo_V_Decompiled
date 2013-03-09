.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field private controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    return-void
.end method


# virtual methods
.method public AfterSoundRecorded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    const-string v0, "AfterSoundRecorded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Start()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/16 v5, 0x322

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v0, :cond_0

    const-string v0, "SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start() called, but already recording to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "SoundRecorder"

    const-string v1, "Start() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Start"

    const/16 v2, 0x2c1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Start"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, p0, v2, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Start"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, p0, v2, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    const-string v0, "StartedRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Stop()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-nez v0, :cond_0

    const-string v0, "SoundRecorder"

    const-string v1, "Stop() called, but already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "SoundRecorder"

    const-string v1, "Stop() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SoundRecorder"

    const-string v1, "stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V

    const-string v0, "SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing AfterSoundRecorded with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Stop"

    const/16 v2, 0x321

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    throw v0
.end method

.method public StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    const-string v0, "StoppedRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v0, :cond_1

    :cond_0
    const-string v0, "SoundRecorder"

    const-string v1, "onError called with wrong recorder. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "onError"

    const/16 v2, 0x321

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SoundRecorder"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    throw v0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    if-eq p1, v0, :cond_1

    :cond_0
    const-string v0, "SoundRecorder"

    const-string v1, "onInfo called with wrong recorder. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "SoundRecorder"

    const-string v1, "Recoverable condition while recording. Will attempt to stop normally."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->controller:Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    goto :goto_0
.end method
