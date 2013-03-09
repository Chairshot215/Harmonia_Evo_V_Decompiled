.class Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;
.super Ljava/util/TimerTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setURITimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/MediaController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2086
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/MediaController$setURITimeoutTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->rendererSetUriResponseMsg(Lcom/awox/jUPnPCP/CmdSetURI2;)V

    .line 2090
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "set uri response timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    return-void
.end method
