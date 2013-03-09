.class Lcom/htc/video/HtcMediaController$15;
.super Ljava/lang/Object;
.source "HtcMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcMediaController;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1631
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 1634
    .local v0, pos:I
    add-int/lit16 v0, v0, 0x3a98

    .line 1635
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->seekTo(I)V

    .line 1636
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->setProgress()I
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$200(Lcom/htc/video/HtcMediaController;)I

    .line 1638
    .end local v0           #pos:I
    :cond_0
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->show()V

    .line 1640
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v1, v1, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v1, :cond_1

    .line 1641
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$15;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v1, v1, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onFfwdTarget()V

    .line 1645
    :cond_1
    return-void
.end method
