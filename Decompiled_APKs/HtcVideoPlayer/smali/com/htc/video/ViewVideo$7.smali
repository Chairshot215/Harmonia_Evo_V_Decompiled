.class Lcom/htc/video/ViewVideo$7;
.super Landroid/os/Handler;
.source "ViewVideo.java"


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
    .line 680
    iput-object p1, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 682
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 689
    :pswitch_0
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HtcVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HtcVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v0, v4

    .line 690
    .local v0, anchorView:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 691
    .local v3, viewW:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 693
    .local v1, viewH:I
    if-eq v3, v1, :cond_3

    .line 694
    if-ge v3, v1, :cond_2

    move v2, v5

    .line 695
    .local v2, viewOrientation:I
    :goto_2
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCorrectOrientation:I
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2300(Lcom/htc/video/ViewVideo;)I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 696
    const-wide/16 v6, 0x32

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/video/ViewVideo$7;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 689
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #viewH:I
    .end local v2           #viewOrientation:I
    .end local v3           #viewW:I
    :cond_1
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v0

    goto :goto_1

    .restart local v0       #anchorView:Landroid/view/View;
    .restart local v1       #viewH:I
    .restart local v3       #viewW:I
    :cond_2
    move v2, v6

    .line 694
    goto :goto_2

    .line 701
    :cond_3
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->startVideoAfterPrepared()V
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2400(Lcom/htc/video/ViewVideo;)V

    goto :goto_0

    .line 709
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #viewH:I
    .end local v3           #viewW:I
    :pswitch_1
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HtcVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HtcVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v0, v4

    .line 710
    .restart local v0       #anchorView:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 711
    .restart local v3       #viewW:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 715
    .restart local v1       #viewH:I
    if-eq v3, v1, :cond_6

    .line 716
    if-ge v3, v1, :cond_5

    move v2, v5

    .line 717
    .restart local v2       #viewOrientation:I
    :goto_4
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCorrectOrientation:I
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2300(Lcom/htc/video/ViewVideo;)I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 718
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v6, v4, v5}, Lcom/htc/video/ViewVideo$7;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 709
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #viewH:I
    .end local v2           #viewOrientation:I
    .end local v3           #viewW:I
    :cond_4
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v0

    goto :goto_3

    .restart local v0       #anchorView:Landroid/view/View;
    .restart local v1       #viewH:I
    .restart local v3       #viewW:I
    :cond_5
    move v2, v6

    .line 716
    goto :goto_4

    .line 723
    :cond_6
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 724
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 725
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 726
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/video/ViewVideo$VideoMediaController;->show(I)V

    goto/16 :goto_0

    .line 729
    :cond_7
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo$VideoMediaController;->show()V

    goto/16 :goto_0

    .line 737
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #viewH:I
    .end local v3           #viewW:I
    :pswitch_2
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2600(Lcom/htc/video/ViewVideo;)Lcom/htc/video/Common/SoundEffectAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/htc/video/ViewVideo$7;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$2600(Lcom/htc/video/ViewVideo;)Lcom/htc/video/Common/SoundEffectAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/video/Common/SoundEffectAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
