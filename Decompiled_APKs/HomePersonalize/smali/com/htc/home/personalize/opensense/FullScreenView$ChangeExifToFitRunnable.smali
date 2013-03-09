.class Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;
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
    name = "ChangeExifToFitRunnable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPostPosition:I

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "b"
    .parameter "position"

    .prologue
    .line 622
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->mBitmap:Landroid/graphics/Bitmap;

    .line 623
    iput p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->mPostPosition:I

    .line 624
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 627
    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v4}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 628
    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v4}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    .local v0, arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 629
    .local v2, iv:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    if-eqz v2, :cond_0

    .line 630
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$2200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)I

    move-result v4

    iget v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->mPostPosition:I

    if-ne v4, v5, :cond_0

    .line 631
    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ChangeExifToFitRunnable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 632
    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v2, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$2302(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    .line 628
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v0           #arr$:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    .end local v1           #i$:I
    .end local v2           #iv:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
