.class Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/s0up/goomanager/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/ImageLoader;Landroid/graphics/Bitmap;Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)V
    .locals 0
    .parameter
    .parameter "b"
    .parameter "p"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->this$0:Lcom/s0up/goomanager/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->this$0:Lcom/s0up/goomanager/ImageLoader;

    iget-object v1, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/ImageLoader;->imageViewReused(Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
