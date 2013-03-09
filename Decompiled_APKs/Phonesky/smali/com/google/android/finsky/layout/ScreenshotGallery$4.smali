.class Lcom/google/android/finsky/layout/ScreenshotGallery$4;
.super Ljava/lang/Object;
.source "ScreenshotGallery.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

.field final synthetic val$hasDimension:Z

.field final synthetic val$index:I

.field final synthetic val$numImagesToLoad:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ScreenshotGallery;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    iput p2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$index:I

    iput p3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$numImagesToLoad:I

    iput-boolean p4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$hasDimension:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 4
    .parameter "bitmapContainer"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$400(Lcom/google/android/finsky/layout/ScreenshotGallery;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$index:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$504(Lcom/google/android/finsky/layout/ScreenshotGallery;)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$numImagesToLoad:I

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$600(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$600(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->isDataMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$600(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$index:I

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    .line 287
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->val$hasDimension:Z

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->this$0:Lcom/google/android/finsky/layout/ScreenshotGallery;

    #getter for: Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->access$700(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/HorizontalStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/ScreenshotGallery$4;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
