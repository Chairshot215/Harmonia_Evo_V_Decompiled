.class Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQDecodeCB"
.end annotation


# instance fields
.field b:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->b:Landroid/graphics/Bitmap;

    .line 600
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 602
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 607
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeCB;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setHQBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    :cond_0
    return-void
.end method
