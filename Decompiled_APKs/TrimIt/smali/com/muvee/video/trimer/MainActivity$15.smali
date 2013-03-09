.class Lcom/muvee/video/trimer/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/MainActivity;->preLoadBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1515
    const/4 v0, 0x1

    iput v0, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1518
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_5

    .line 1523
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/video/trimer/view/ThumbView;->getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_2

    .line 1524
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-virtual {v1, v4}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1525
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/MainActivity;->access$41(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1528
    :cond_2
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/ThumbView;->getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v1

    iget v2, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    div-int/lit8 v2, v2, 0x2

    aget-object v0, v1, v2

    .line 1538
    .local v0, mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    :goto_1
    invoke-virtual {v0}, Lcom/muvee/video/trimer/MediaDetail;->getBitmap()[B

    move-result-object v1

    if-nez v1, :cond_7

    .line 1539
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/muvee/video/trimer/view/ThumbView;->generateThumb(ILcom/muvee/video/trimer/MediaDetail;)I

    move-result v2

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$9(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1540
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1541
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$34(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1542
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$42(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1543
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$34(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$42(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1544
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/MainActivity;->access$41(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V

    .line 1546
    :cond_3
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/MainActivity;->access$36(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Handler;)V

    .line 1549
    :cond_4
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v2, 0x2

    #calls: Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/MainActivity;->access$24(Lcom/muvee/video/trimer/MainActivity;I)V

    .line 1550
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mResult:I
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$20(Lcom/muvee/video/trimer/MainActivity;)I

    move-result v2

    #calls: Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V
    invoke-static {v1, v2, v4}, Lcom/muvee/video/trimer/MainActivity;->access$25(Lcom/muvee/video/trimer/MainActivity;IZ)V

    goto/16 :goto_0

    .line 1530
    .end local v0           #mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    :cond_5
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    div-int/lit8 v1, v1, 0x2

    if-ge v1, v2, :cond_6

    .line 1531
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-virtual {v1, v4}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1532
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/MainActivity;->access$41(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1535
    :cond_6
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/ThumbView;->getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/video/trimer/view/ThumbView;->getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v2

    array-length v2, v2

    iget v3, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .restart local v0       #mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    goto/16 :goto_1

    .line 1555
    :cond_7
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    .line 1556
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->count:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_8

    .line 1557
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    invoke-virtual {v1, v4}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1558
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/MainActivity;->access$41(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1561
    :cond_8
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$34(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$15;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$34(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
