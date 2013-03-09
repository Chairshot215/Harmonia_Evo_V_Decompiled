.class Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;
.super Ljava/util/TimerTask;
.source "PlaylistBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/PlaylistBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "browseTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/PlaylistBase;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;Lcom/htc/dlnamiddlelayer/PlaylistBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    const/16 v1, -0x132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->sendNotify(II)V

    .line 331
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Notify server response timeout task"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method
