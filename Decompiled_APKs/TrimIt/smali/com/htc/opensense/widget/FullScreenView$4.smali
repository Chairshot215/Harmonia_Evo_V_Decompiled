.class Lcom/htc/opensense/widget/FullScreenView$4;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 402
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v1

    .line 407
    .local v1, x:I
    const/4 v0, 0x0

    .line 408
    .local v0, direction:I
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getScrollState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 410
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_5

    .line 411
    const/4 v0, 0x1

    .line 423
    :cond_2
    :goto_1
    if-ne v0, v4, :cond_8

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v5

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v5

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v5

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v2

    if-ne v2, v4, :cond_8

    .line 427
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v4}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 428
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v5

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v2, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0

    .line 412
    :cond_5
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 413
    const/4 v0, -0x1

    goto :goto_1

    .line 417
    :cond_6
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_7

    .line 418
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 419
    :cond_7
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 420
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 429
    :cond_8
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 434
    :cond_a
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v4}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v2, v3, v4, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 435
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$4;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v2

    aget-object v2, v2, v6

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v2, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0
.end method
