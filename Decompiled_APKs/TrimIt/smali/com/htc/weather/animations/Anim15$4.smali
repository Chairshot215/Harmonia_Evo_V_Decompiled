.class Lcom/htc/weather/animations/Anim15$4;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim15;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim15;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 326
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim15;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim15;->mContext:Landroid/content/Context;

    const v2, 0x2080106

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    add-int/lit8 v3, v3, 0x23

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    :goto_0
    return-object v0

    .line 336
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    add-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    add-int/lit8 v3, v3, 0x23

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 14

    .prologue
    const/high16 v2, 0x425c

    const-wide/16 v5, 0x3de

    const-wide/16 v12, 0x21

    const/high16 v11, 0x3f80

    const/high16 v7, 0x4170

    .line 346
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 347
    .local v10, inAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_2

    .line 348
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v1, v1, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v4, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long/2addr v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v0, v0, Lcom/htc/weather/animations/Anim15;->scale_x_:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v0, v0, Lcom/htc/weather/animations/Anim15;->scale_y_:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v1, v1, Lcom/htc/weather/animations/Anim15;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v4, Lcom/htc/weather/animations/Anim15;->scale_y_:F

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long/2addr v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 364
    :cond_1
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v0, Lcom/htc/weather/animations/Anim15;->alpha_:F

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long v8, v0, v12

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 368
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 370
    return-object v10

    .line 353
    :cond_2
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v1, v1, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v4, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long/2addr v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 14

    .prologue
    const/high16 v3, 0x41f0

    const-wide/16 v5, 0x294

    const-wide/16 v12, 0x21

    const/high16 v11, 0x3f80

    const/high16 v7, 0x4170

    .line 375
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 376
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_2

    .line 377
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v1, v1, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v4, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long/2addr v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v0, v0, Lcom/htc/weather/animations/Anim15;->scale_x_:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v0, v0, Lcom/htc/weather/animations/Anim15;->scale_y_:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v1, v1, Lcom/htc/weather/animations/Anim15;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v4, Lcom/htc/weather/animations/Anim15;->scale_y_:F

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long/2addr v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 394
    :cond_1
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v0, Lcom/htc/weather/animations/Anim15;->alpha_:F

    const/4 v4, 0x0

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long v8, v0, v12

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 398
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 400
    return-object v10

    .line 382
    :cond_2
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v1, v1, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v2, v2, Lcom/htc/weather/animations/Anim15;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v3, v3, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget v4, v4, Lcom/htc/weather/animations/Anim15;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim15;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim15$4;->this$0:Lcom/htc/weather/animations/Anim15;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim15;->delay_:J

    mul-long/2addr v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method
