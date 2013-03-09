.class Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;
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
    name = "ChangeExifToFitRunnable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPostPosition:I

.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->mPostPosition:I

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v4}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v4}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2600(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I

    move-result v4

    iget v5, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->mPostPosition:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ChangeExifToFitRunnable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    #setter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z
    invoke-static {v2, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->access$2702(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
