.class public Lcom/google/android/finsky/layout/ThumbnailListener;
.super Ljava/lang/Object;
.source "ThumbnailListener.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# instance fields
.field private final mFadeIn:Z

.field protected final mImageView:Landroid/widget/ImageView;

.field protected final mViewToFadeIn:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "imageView"
    .parameter "fadeIn"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;ZLandroid/view/View;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;ZLandroid/view/View;)V
    .locals 0
    .parameter "imageView"
    .parameter "fadeIn"
    .parameter "viewToFadeIn"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    .line 47
    iput-boolean p2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mFadeIn:Z

    .line 48
    iput-object p3, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToFadeIn:Landroid/view/View;

    .line 49
    return-void
.end method


# virtual methods
.method protected onImageFailed()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 4
    .parameter "bitmapContainer"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    .local v1, response:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ThumbnailListener;->onImageFailed()V

    .line 78
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mFadeIn:Z

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToFadeIn:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 69
    .local v0, fadeInAnimation:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToFadeIn:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mViewToFadeIn:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    .end local v0           #fadeInAnimation:Landroid/view/animation/Animation;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/ThumbnailListener;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/ThumbnailListener;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
