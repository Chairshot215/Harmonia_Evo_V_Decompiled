.class Lcom/htc/weather/animations/Anim52$2;
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
    .line 102
    iput-object p1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 106
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mContext:Landroid/content/Context;

    const v2, 0x208010c

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    add-int/lit8 v2, v2, 0x28

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    add-int/lit8 v3, v3, 0x37

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    add-int/lit8 v2, v2, 0x28

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    add-int/lit8 v3, v3, 0x37

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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
    const/4 v14, 0x0

    const/high16 v3, 0x4234

    const v13, 0x3f4ccccd

    const-wide/16 v5, 0x3de

    const-wide/16 v11, 0x21

    .line 125
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 126
    .local v10, inAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/high16 v3, 0x4248

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41a0

    iget-object v7, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v7, v7, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    mul-float/2addr v1, v13

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const v0, 0x3e4ccccd

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->alpha_:F

    mul-float v4, v0, v1

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long v8, v0, v11

    move v3, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 153
    return-object v10

    .line 139
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4248

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x41a0

    iget-object v7, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v7, v7, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 143
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    mul-float/2addr v1, v13

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 147
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const v0, 0x3e4ccccd

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->alpha_:F

    mul-float v4, v0, v1

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long v8, v0, v11

    move v3, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v3, 0x4234

    const v13, 0x3f4ccccd

    const-wide/16 v5, 0x294

    const-wide/16 v11, 0x21

    .line 158
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 159
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/high16 v3, 0x41a0

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41f0

    iget-object v7, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v7, v7, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const v0, 0x3e4ccccd

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->alpha_:F

    mul-float v3, v0, v1

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long v8, v0, v11

    move v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 186
    return-object v10

    .line 172
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a0

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x41f0

    iget-object v7, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v7, v7, Lcom/htc/weather/animations/Anim52;->shift_y_:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim52;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 176
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v2, v2, Lcom/htc/weather/animations/Anim52;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v3, v3, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v4, v4, Lcom/htc/weather/animations/Anim52;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 180
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const v0, 0x3e4ccccd

    iget-object v1, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget v1, v1, Lcom/htc/weather/animations/Anim52;->alpha_:F

    mul-float v3, v0, v1

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim52$2;->this$0:Lcom/htc/weather/animations/Anim52;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim52;->delay_:J

    mul-long v8, v0, v11

    move v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method
