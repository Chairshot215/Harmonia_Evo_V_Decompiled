.class Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingController"
.end annotation


# instance fields
.field final file:Ljava/lang/String;

.field final recorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3gp"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getRecordingFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    const-string v0, "SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting output file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const-string v0, "SoundRecorder"

    const-string v1, "preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method


# virtual methods
.method start()V
    .locals 2

    const-string v0, "SoundRecorder"

    const-string v1, "starting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method
