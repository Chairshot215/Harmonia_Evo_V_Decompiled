.class Lcom/htc/weather/animations/Shower$5;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Shower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Shower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Shower;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Shower;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 362
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v1, v1, Lcom/htc/weather/animations/Shower;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v1, v1, Lcom/htc/weather/animations/Shower;->mContext:Landroid/content/Context;

    const v2, 0x208066e

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v1, v1, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v1, v1, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v2, v2, Lcom/htc/weather/animations/Shower;->shift_x_:I

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v3, v3, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_y_:I

    add-int/lit8 v3, v3, 0x3e

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v4, v4, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :goto_0
    return-object v0

    .line 371
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v2, v2, Lcom/htc/weather/animations/Shower;->shift_x_:I

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v3, v3, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v3, v3, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_y_:I

    add-int/lit8 v3, v3, 0x3e

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v4, v4, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v4, v4, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 13

    .prologue
    const/high16 v2, 0x4268

    const/high16 v5, 0x4250

    const/high16 v4, 0x4228

    const/high16 v1, 0x3f80

    const-wide/16 v11, 0x21

    .line 381
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 382
    .local v10, inAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v0, v0, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v0, v0, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v1, v1, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    const/high16 v2, 0x429c

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v4, v4, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    const-wide/16 v5, 0x3de

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v8, v8, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 393
    :goto_0
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v1, v1, Lcom/htc/weather/animations/Shower;->alpha_:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x14a

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v6, v6, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long/2addr v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 400
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 402
    return-object v10

    .line 388
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v1, v1, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v2, v2, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x429c

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v3, v3, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v4, v4, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v4, v4, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v5, v5, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v5

    const-wide/16 v5, 0x3de

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v8, v8, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 14

    .prologue
    const/high16 v4, 0x4250

    const/high16 v1, 0x3f80

    const v13, 0x3f666666

    const-wide/16 v5, 0x294

    const-wide/16 v11, 0x21

    .line 407
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 408
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v0, v0, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v0, v0, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x429c

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v2, v2, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42d8

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    const/high16 v4, 0x42e0

    iget-object v7, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v7, v7, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v8, v8, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 419
    :goto_0
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v1, v1, Lcom/htc/weather/animations/Shower;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v2, v2, Lcom/htc/weather/animations/Shower;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v4, v4, Lcom/htc/weather/animations/Shower;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v8, v8, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v0, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v0, Lcom/htc/weather/animations/Shower;->alpha_:F

    const/4 v4, 0x0

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v0, v0, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long v8, v0, v11

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 428
    return-object v10

    .line 414
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x429c

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v2, v2, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v2, v2, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42d8

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v3, v3, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v3, v3, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v4, v4, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x42e0

    iget-object v7, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget v7, v7, Lcom/htc/weather/animations/Shower;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-object v7, v7, Lcom/htc/weather/animations/Shower;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Shower$5;->this$0:Lcom/htc/weather/animations/Shower;

    iget-wide v8, v8, Lcom/htc/weather/animations/Shower;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method
