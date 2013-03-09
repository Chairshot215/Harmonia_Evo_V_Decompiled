.class public Lcom/google/android/finsky/layout/ScreenshotView;
.super Landroid/widget/FrameLayout;
.source "ScreenshotView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ScreenshotView$1;,
        Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;,
        Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;
    }
.end annotation


# instance fields
.field private mFadeInRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/google/android/finsky/layout/FifeImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;-><init>(Lcom/google/android/finsky/layout/ScreenshotView;Lcom/google/android/finsky/layout/ScreenshotView$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mFadeInRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;-><init>(Lcom/google/android/finsky/layout/ScreenshotView;Lcom/google/android/finsky/layout/ScreenshotView$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mFadeInRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;-><init>(Lcom/google/android/finsky/layout/ScreenshotView;Lcom/google/android/finsky/layout/ScreenshotView$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mFadeInRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/ScreenshotView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ScreenshotView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mImageView:Lcom/google/android/finsky/layout/FifeImageView;

    .line 50
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ScreenshotView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 51
    return-void
.end method

.method public onLoaded(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "imageView"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    .local v0, fadeOutAnimation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/layout/ScreenshotView$HideAfterEndAnimationListener;-><init>(Lcom/google/android/finsky/layout/ScreenshotView;Lcom/google/android/finsky/layout/ScreenshotView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .end local v0           #fadeOutAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 4
    .parameter "image"
    .parameter "loader"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mImageView:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setViewToFadeIn(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/FifeImageView;->setOnLoadedListener(Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/FifeImageView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView;->mFadeInRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_0
    return-void
.end method
