.class public final Lcom/google/appinventor/components/runtime/Player;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that plays audio or video and controls phone vibration.  The name of a multimedia field is specified in the <code>Source</code> property, which can be set in the Designer or in the Blocks Editor.  The length of time for a vibration is specified in the Blocks Editor in milliseconds (thousandths of a second).</p><p>For legal sound and video formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>If you will only be playing sound files and vibrating, not using video, this component is best for long sound files, such as songs, while the <code>Sound</code> component is more efficient for short files, such as sound effects.</p>"
    iconName = "images/player.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# instance fields
.field private mp:Landroid/media/MediaPlayer;

.field private playerState:I

.field private sourcePath:Ljava/lang/String;

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    return-void
.end method

.method private prepare()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const-string v0, "Player"

    const-string v1, "Successfully prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    iput v5, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Source"

    const/16 v2, 0x2be

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private prepareToDie()V
    .locals 2

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method


# virtual methods
.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v3, 0x2

    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Pause -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v3, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    :cond_0
    return-void
.end method

.method public PlayerError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The PlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_4

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    iput v5, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully loaded source path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Source"

    const/16 v2, 0x2bd

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v3, 0x2

    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Start -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput v3, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    :cond_1
    return-void
.end method

.method public Stop()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Stop -- State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    :cond_1
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    return-void
.end method
