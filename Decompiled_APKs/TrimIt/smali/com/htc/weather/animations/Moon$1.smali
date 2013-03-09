.class Lcom/htc/weather/animations/Moon$1;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Moon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Moon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Moon;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Moon;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 39
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v1, v1, Lcom/htc/weather/animations/Moon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v1, v1, Lcom/htc/weather/animations/Moon;->mContext:Landroid/content/Context;

    const v2, 0x20805d3

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v1, v1, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v1, v1, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v2, v2, Lcom/htc/weather/animations/Moon;->shift_x_:I

    add-int/lit8 v2, v2, 0x4b

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v3, v3, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v3, v3, Lcom/htc/weather/animations/Moon;->shift_y_:I

    add-int/lit8 v3, v3, 0x1e

    iget-object v4, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v4, v4, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v2, v2, Lcom/htc/weather/animations/Moon;->shift_x_:I

    add-int/lit8 v2, v2, 0x4b

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v3, v3, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v3, v3, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v3, v3, Lcom/htc/weather/animations/Moon;->shift_y_:I

    add-int/lit8 v3, v3, 0x1e

    iget-object v4, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v4, v4, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-object v4, v4, Lcom/htc/weather/animations/Moon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 15

    .prologue
    const v4, 0x3f4ccccd

    const/high16 v14, 0x3f00

    const/4 v13, 0x0

    const-wide/16 v5, 0x3de

    const-wide/16 v11, 0x21

    .line 58
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 60
    .local v10, inAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v1, v1, Lcom/htc/weather/animations/Moon;->scale_x_:F

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v2, v2, Lcom/htc/weather/animations/Moon;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v3, v3, Lcom/htc/weather/animations/Moon;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v4, v4, Lcom/htc/weather/animations/Moon;->scale_y_:F

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-wide v8, v8, Lcom/htc/weather/animations/Moon;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 64
    new-instance v0, Lcom/htc/weather/animations/WeatherRotateAnimation;

    const/high16 v1, -0x3e38

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v2, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-wide v2, v2, Lcom/htc/weather/animations/Moon;->delay_:J

    mul-long v8, v2, v11

    move v2, v13

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherRotateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 68
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v0, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v4, v0, Lcom/htc/weather/animations/Moon;->alpha_:F

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-wide v0, v0, Lcom/htc/weather/animations/Moon;->delay_:J

    mul-long v8, v0, v11

    move v3, v13

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 74
    return-object v10
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 15

    .prologue
    const v7, 0x3f4ccccd

    const/high16 v14, 0x3f00

    const/4 v13, 0x0

    const-wide/16 v5, 0x294

    const-wide/16 v11, 0x21

    .line 80
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 82
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v1, v1, Lcom/htc/weather/animations/Moon;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v2, v2, Lcom/htc/weather/animations/Moon;->scale_x_:F

    mul-float/2addr v2, v7

    iget-object v3, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v3, v3, Lcom/htc/weather/animations/Moon;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v4, v4, Lcom/htc/weather/animations/Moon;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-wide v8, v8, Lcom/htc/weather/animations/Moon;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 86
    new-instance v0, Lcom/htc/weather/animations/WeatherRotateAnimation;

    const/high16 v2, 0x41c8

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-wide v3, v1, Lcom/htc/weather/animations/Moon;->delay_:J

    mul-long v8, v3, v11

    move v1, v13

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherRotateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 90
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v0, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget v3, v0, Lcom/htc/weather/animations/Moon;->alpha_:F

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Moon$1;->this$0:Lcom/htc/weather/animations/Moon;

    iget-wide v0, v0, Lcom/htc/weather/animations/Moon;->delay_:J

    mul-long v8, v0, v11

    move v4, v13

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 96
    return-object v10
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
