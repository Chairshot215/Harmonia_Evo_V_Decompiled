.class Lcom/htc/video/ViewVideo$SoundEffectThread;
.super Landroid/os/HandlerThread;
.source "ViewVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundEffectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;

.field threadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 1
    .parameter

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/htc/video/ViewVideo$SoundEffectThread;->this$0:Lcom/htc/video/ViewVideo;

    .line 2675
    const-string v0, "SoundEffectThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/ViewVideo$SoundEffectThread;->threadHandler:Landroid/os/Handler;

    .line 2677
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo$SoundEffectThread;->start()V

    .line 2678
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 2681
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/video/ViewVideo$SoundEffectThread;->threadHandler:Landroid/os/Handler;

    .line 2682
    return-void
.end method
