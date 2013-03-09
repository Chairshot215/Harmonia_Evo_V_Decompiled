.class Lcom/htc/weather/animations/Anim53$6;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim53.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim53;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim53;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim53;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    const v2, 0x2080530

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    iget-object v3, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    const-wide/16 v3, 0x3de

    const-wide/16 v9, 0x21

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v0, v0, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v0, v0, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-wide v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v8

    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-wide v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    const-wide/16 v3, 0x294

    const-wide/16 v9, 0x21

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v0, v0, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-object v0, v0, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-wide v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v8

    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim53$6;->this$0:Lcom/htc/weather/animations/Anim53;

    iget-wide v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
