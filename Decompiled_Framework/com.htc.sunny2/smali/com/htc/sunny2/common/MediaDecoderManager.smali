.class public Lcom/htc/sunny2/common/MediaDecoderManager;
.super Ljava/lang/Object;
.source "MediaDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;,
        Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_PRIORITY:I

.field private final FIRST_VIDEO_DECODE_PRIORITY:I

.field private mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

.field private mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

.field private mRaisePriorityOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    iput v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->DEFAULT_PRIORITY:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->FIRST_VIDEO_DECODE_PRIORITY:I

    new-instance v0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;-><init>(Lcom/htc/sunny2/common/MediaDecoderManager;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setPriority(I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/common/MediaDecoderManager;Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/common/MediaDecoderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/common/MediaDecoderManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    return p1
.end method

.method private onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    const-string v2, "MediaUpdateListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    :cond_0
    return-void
.end method

.method public raisePriorityOnce()V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaUpdateListener raisePriorityOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setPriority(I)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->cancel()V

    iput-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    iput-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    return-void
.end method

.method public remvoeAllTask()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->removeAllTasks()V

    :cond_0
    return-void
.end method

.method public runMediaDecoder()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->start()V

    :cond_0
    return-void
.end method

.method public setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaUpdateListener set to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setVisibleRange(II)V

    :cond_0
    return-void
.end method
