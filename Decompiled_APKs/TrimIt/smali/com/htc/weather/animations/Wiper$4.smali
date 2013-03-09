.class Lcom/htc/weather/animations/Wiper$4;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Wiper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Wiper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Wiper;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Wiper;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 294
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget-object v1, v1, Lcom/htc/weather/animations/Wiper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, imageView:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 296
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget-object v1, v1, Lcom/htc/weather/animations/Wiper;->mContext:Landroid/content/Context;

    const v2, 0x2080663

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    return-object v0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x3f19999a

    const/high16 v8, 0x3ec0

    const/4 v7, 0x0

    .line 307
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    .local v3, inAnimationSet:Landroid/view/animation/AnimationSet;
    const/4 v5, 0x6

    new-array v2, v5, [F

    aput v7, v2, v10

    iget-object v5, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v5, v5, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v5, v7

    aput v5, v2, v11

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v9

    aput v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v9

    aput v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v8

    aput v6, v2, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v8

    aput v6, v2, v5

    .line 325
    .local v2, from:[F
    const/4 v5, 0x6

    new-array v4, v5, [F

    aput v7, v4, v10

    iget-object v5, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v5, v5, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v5, v9

    aput v5, v4, v11

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v9

    aput v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v8

    aput v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget v6, v6, Lcom/htc/weather/animations/Wiper;->alpha_:F

    mul-float/2addr v6, v8

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    .line 326
    .local v4, to:[F
    const/4 v5, 0x6

    new-array v1, v5, [J

    fill-array-data v1, :array_0

    .line 327
    .local v1, dur:[J
    new-instance v0, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v5, v2

    invoke-direct {v0, v5, v2, v4}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 329
    .local v0, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v0, v1}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 330
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 347
    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 349
    return-object v3

    .line 326
    :array_0
    .array-data 0x8
        0xbct 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x94t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x94t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x94t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 354
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 356
    .local v8, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const-wide/16 v3, 0x294

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v2, p0, Lcom/htc/weather/animations/Wiper$4;->this$0:Lcom/htc/weather/animations/Wiper;

    iget-wide v6, v2, Lcom/htc/weather/animations/Wiper;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    move v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 360
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 362
    return-object v8
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method
