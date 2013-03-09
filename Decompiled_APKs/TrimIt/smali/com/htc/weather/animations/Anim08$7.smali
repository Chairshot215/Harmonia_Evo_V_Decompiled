.class Lcom/htc/weather/animations/Anim08$7;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim08.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim08;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim08;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 606
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim08;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 607
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim08;->mContext:Landroid/content/Context;

    const v2, 0x2080106

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 610
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    add-int/lit8 v3, v3, 0x2d

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    :goto_0
    return-object v0

    .line 615
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    add-int/lit8 v3, v3, 0x2d

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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

    const/high16 v7, 0x420c

    const v13, 0x3f4ccccd

    const-wide/16 v5, 0x3de

    const-wide/16 v11, 0x21

    .line 625
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 626
    .local v10, inAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x4120

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 631
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    mul-float/2addr v1, v13

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 635
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/high16 v0, 0x3f40

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->alpha_:F

    mul-float v4, v0, v1

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long v8, v0, v11

    move v3, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 651
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 653
    return-object v10

    .line 639
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x4120

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 643
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    mul-float/2addr v1, v13

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    mul-float/2addr v3, v13

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 647
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/high16 v0, 0x3f40

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->alpha_:F

    mul-float v4, v0, v1

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim08;->delay_:J

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

    const/high16 v7, 0x420c

    const v13, 0x3f4ccccd

    const-wide/16 v5, 0x294

    const-wide/16 v11, 0x21

    .line 658
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 659
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x41f0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42dc

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 664
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 668
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/high16 v0, 0x3f40

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->alpha_:F

    mul-float v3, v0, v1

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long v8, v0, v11

    move v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 684
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 686
    return-object v10

    .line 672
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x41f0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42dc

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim08;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 676
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v2, v2, Lcom/htc/weather/animations/Anim08;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v3, v3, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v4, v4, Lcom/htc/weather/animations/Anim08;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 680
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/high16 v0, 0x3f40

    iget-object v1, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget v1, v1, Lcom/htc/weather/animations/Anim08;->alpha_:F

    mul-float v3, v0, v1

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim08$7;->this$0:Lcom/htc/weather/animations/Anim08;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim08;->delay_:J

    mul-long v8, v0, v11

    move v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return-object v0
.end method
