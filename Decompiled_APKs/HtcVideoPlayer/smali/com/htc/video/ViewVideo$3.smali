.class Lcom/htc/video/ViewVideo$3;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbort()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 319
    return-void
.end method

.method public onRenewRight()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/video/ViewVideo$3;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/video/ViewVideo$3$1;

    invoke-direct {v1, p0}, Lcom/htc/video/ViewVideo$3$1;-><init>(Lcom/htc/video/ViewVideo$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method
