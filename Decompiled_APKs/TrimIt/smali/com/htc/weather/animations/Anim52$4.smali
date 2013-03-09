.class Lcom/htc/weather/animations/Anim52$4;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim52.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim52;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim52;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 296
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mContext:Landroid/content/Context;

    const v2, 0x2080665

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    :goto_0
    return-object v0

    .line 305
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const-wide/16 v3, 0x3de

    const-wide/16 v9, 0x21

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 315
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 316
    .local v8, inAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->alpha_:F

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 325
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 327
    return-object v8

    .line 321
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->alpha_:F

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const-wide/16 v3, 0x294

    const-wide/16 v9, 0x21

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 332
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 333
    .local v8, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->alpha_:F

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 342
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 344
    return-object v8

    .line 338
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->alpha_:F

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim52$4;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method
