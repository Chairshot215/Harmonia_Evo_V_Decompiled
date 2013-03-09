.class Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQDecodeCB"
.end annotation


# instance fields
.field b:Landroid/graphics/Bitmap;

.field pos:I

.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "b"
    .parameter "position"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->b:Landroid/graphics/Bitmap;

    .line 657
    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->pos:I

    .line 658
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 662
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 665
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->pos:I

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 669
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setHQBitmap(Landroid/graphics/Bitmap;)V

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->reset()V

    goto :goto_0
.end method
