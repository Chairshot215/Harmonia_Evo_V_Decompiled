.class Lcom/htc/weather/animations/Anim31$1;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim31.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim31;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim31;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/high16 v4, 0x3f80

    const/4 v6, -0x2

    .line 53
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim31;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, imageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim31;->mContext:Landroid/content/Context;

    const v3, 0x2080591

    invoke-static {v2, v3}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 59
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->width_:I

    add-int/lit16 v3, v3, -0x82

    iget-object v4, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v4, v4, Lcom/htc/weather/animations/Anim31;->shift_x_:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v4, v4, Lcom/htc/weather/animations/Anim31;->shift_y_:I

    add-int/lit16 v4, v4, 0xf5

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->width_:I

    int-to-float v3, v3

    const/high16 v4, 0x4302

    iget-object v5, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v5, v5, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v4, v4, Lcom/htc/weather/animations/Anim31;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->height_:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v5, v5, Lcom/htc/weather/animations/Anim31;->shift_y_:I

    add-int/2addr v4, v5

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    .line 75
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 77
    .local v8, inAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3ee66666

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v3, v3, Lcom/htc/weather/animations/Anim31;->alpha_:F

    mul-float/2addr v2, v3

    const-wide/16 v3, 0x3de

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim31;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 82
    return-object v8
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    .line 87
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 89
    .local v8, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const v1, 0x3e99999a

    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v2, v2, Lcom/htc/weather/animations/Anim31;->alpha_:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x294

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim31$1;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim31;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 94
    return-object v8
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
