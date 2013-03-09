.class public abstract Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.super Ljava/lang/Object;
.source "ImageViewAndAnimationSets.java"


# static fields
.field public static mDither:Z


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mInAnimationSet:Landroid/view/animation/AnimationSet;

.field private mOutAnimationSet:Landroid/view/animation/AnimationSet;

.field private mRestAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mDither:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialImageView()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 64
    .local v0, dw:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 65
    sget-boolean v1, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getInAnimationSet(Z)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "reset"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mInAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getOutAnimationSet(Z)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "reset"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mOutAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getRestAnimationSet(Z)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "reset"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->initialRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->mRestAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected abstract initialImageView()Landroid/widget/ImageView;
.end method

.method protected abstract initialInAnimationSet()Landroid/view/animation/AnimationSet;
.end method

.method protected abstract initialOutAnimationSet()Landroid/view/animation/AnimationSet;
.end method

.method protected abstract initialRestAnimationSet()Landroid/view/animation/AnimationSet;
.end method
