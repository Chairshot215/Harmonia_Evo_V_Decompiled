.class public Lcom/google/android/voicesearch/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    }
.end annotation


# static fields
.field private static final SOUND_IDS:[Ljava/lang/Integer;


# instance fields
.field private mAddSoundsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mSounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f070006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f070002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f070001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f070004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f070005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x7f07

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/SoundManager;->SOUND_IDS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mSounds:Ljava/util/Map;

    .line 41
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/google/android/voicesearch/SoundManager;->mVolume:F

    .line 45
    new-instance v0, Lcom/google/android/voicesearch/SoundManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/SoundManager$1;-><init>(Lcom/google/android/voicesearch/SoundManager;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mAddSoundsTask:Landroid/os/AsyncTask;

    .line 80
    iput-object p1, p0, Lcom/google/android/voicesearch/SoundManager;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    sget-object v0, Lcom/google/android/voicesearch/SoundManager;->SOUND_IDS:[Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SoundManager;->addSounds([Ljava/lang/Integer;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/SoundManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/SoundManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/voicesearch/SoundManager;->mVolume:F

    return v0
.end method

.method static synthetic access$200(Ljava/util/Map;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/voicesearch/SoundManager;->releaseSounds(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/voicesearch/SoundManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/voicesearch/SoundManager;->mSounds:Ljava/util/Map;

    return-object p1
.end method

.method private static releaseSounds(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, soundsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 120
    .local v1, key:Ljava/lang/Integer;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;

    .line 121
    .local v2, player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v2}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    new-instance v4, Lcom/google/android/voicesearch/SoundManager$2;

    invoke-direct {v4, v2}, Lcom/google/android/voicesearch/SoundManager$2;-><init>(Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 131
    invoke-virtual {v2}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->release()V

    goto :goto_0

    .line 135
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #player:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 136
    return-void
.end method


# virtual methods
.method public addSounds([Ljava/lang/Integer;)V
    .locals 2
    .parameter "resids"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mAddSoundsTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mAddSoundsTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "SoundManager"

    const-string v1, "Attempted to add sounds more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 4
    .parameter "resid"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/android/voicesearch/SoundManager;->mSounds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;

    .line 87
    .local v1, releasablePlayer:Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 91
    .local v0, player:Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/voicesearch/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mAddSoundsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 111
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager;->mSounds:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/voicesearch/SoundManager;->releaseSounds(Ljava/util/Map;)V

    .line 112
    return-void
.end method
