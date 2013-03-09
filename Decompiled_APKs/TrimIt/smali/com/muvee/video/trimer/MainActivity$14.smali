.class Lcom/muvee/video/trimer/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/MainActivity;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1425
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/TrimBar;->getCurrentPlayPosition()I

    move-result v0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v1

    .line 1427
    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimRight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->pause(Z)V
    invoke-static {v0, v4}, Lcom/muvee/video/trimer/MainActivity;->access$37(Lcom/muvee/video/trimer/MainActivity;Z)V

    .line 1430
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 1431
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/TrimBar;->setPositionChanged()V

    .line 1432
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$38(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V

    .line 1434
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v1

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/muvee/video/trimer/view/ThumbView;->setCurrentPosition(ILandroid/view/View;ZZ)I

    .line 1436
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->setThumbForImageView()I
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$40(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v1

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$9(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1437
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x2

    #calls: Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$24(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1439
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v1

    #calls: Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V
    invoke-static {v0, v1, v3}, Lcom/muvee/video/trimer/MainActivity;->access$25(Lcom/muvee/video/trimer/MainActivity;IZ)V

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$5(Lcom/muvee/video/trimer/MainActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$5(Lcom/muvee/video/trimer/MainActivity;)Landroid/widget/VideoView;

    move-result-object v1

    .line 1447
    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 1446
    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$14;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
