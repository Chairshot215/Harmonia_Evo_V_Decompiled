.class public Lcom/google/android/talk/videochat/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# static fields
.field private static sInstance:Lcom/google/android/talk/videochat/AudioFocusManager;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mMode:I

.field private mRequested:Z

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/AudioFocusManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mMode:I

    .line 17
    iput v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mStreamType:I

    .line 33
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/talk/videochat/AudioFocusManager;
    .locals 2
    .parameter "c"

    .prologue
    .line 24
    sget-object v1, Lcom/google/android/talk/videochat/AudioFocusManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/android/talk/videochat/AudioFocusManager;->sInstance:Lcom/google/android/talk/videochat/AudioFocusManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/talk/videochat/AudioFocusManager;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/AudioFocusManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/talk/videochat/AudioFocusManager;->sInstance:Lcom/google/android/talk/videochat/AudioFocusManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/google/android/talk/videochat/AudioFocusManager;->sInstance:Lcom/google/android/talk/videochat/AudioFocusManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mRequested:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mRequested:Z

    .line 63
    const-string v0, "Talk:AudioFocus"

    const-string v1, "releasing audio focus"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mMode:I

    .line 67
    iget-object v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mStreamType:I

    .line 70
    :cond_0
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAudioFocus(II)V
    .locals 3
    .parameter "streamType"
    .parameter "mode"

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    const-string v0, "Talk:AudioFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting audio focus. mRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mRequested:Z

    .line 40
    iget v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mStreamType:I

    if-eq v0, p1, :cond_0

    .line 42
    const-string v0, "Talk:AudioFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus: requesting audio focus for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 46
    iput p1, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mStreamType:I

    .line 49
    :cond_0
    iget v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mMode:I

    if-eq v0, p2, :cond_1

    .line 52
    const-string v0, "Talk:AudioFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus: setting mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setMode(I)V

    .line 54
    iput p2, p0, Lcom/google/android/talk/videochat/AudioFocusManager;->mMode:I

    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
