.class Lcom/htc/video/HtcMediaController$7;
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
    .line 1104
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x2

    .line 1107
    invoke-static {}, Lcom/htc/video/HtcMediaController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mStereoConvertListener][onClick]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget v2, v2, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->pauseVideoPlayBack()V

    .line 1112
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget v0, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-ne v3, v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1116
    invoke-static {v3}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 1117
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 1126
    :goto_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget v1, v1, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onUpdateStereoStatus(I)V

    .line 1127
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->updatePlaybackMode()V

    .line 1128
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->doPauseResume()V

    .line 1129
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$000(Lcom/htc/video/HtcMediaController;)V

    .line 1131
    :cond_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1123
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 1124
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$7;->this$0:Lcom/htc/video/HtcMediaController;

    iput v3, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    goto :goto_0
.end method
