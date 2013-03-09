.class public abstract Lcom/google/android/finsky/layout/YoutubeFrameView;
.super Landroid/view/ViewGroup;
.source "YoutubeFrameView.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# instance fields
.field protected mAccessibilityOverlay:Landroid/view/View;

.field protected mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field protected mPlayImageView:Landroid/widget/ImageView;

.field protected mThumbnailImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 96
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 50
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mThumbnailImageView:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mPlayImageView:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    .line 53
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 2
    .parameter "bitmapContainer"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, response:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 80
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->requestLayout()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/YoutubeFrameView;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method

.method public setContentDescription(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public showPlayIcon(Ljava/lang/String;)V
    .locals 2
    .parameter "youtubeUrl"

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/YoutubeFrameView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/YoutubeFrameView$1;-><init>(Lcom/google/android/finsky/layout/YoutubeFrameView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
