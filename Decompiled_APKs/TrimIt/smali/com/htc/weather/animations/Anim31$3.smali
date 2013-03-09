.class Lcom/htc/weather/animations/Anim31$3;
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
    .line 157
    iput-object p1, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 161
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim31;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim31;->mContext:Landroid/content/Context;

    const v2, 0x2080593

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v1, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->width_:I

    add-int/lit16 v2, v2, -0x8c

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v3, v3, Lcom/htc/weather/animations/Anim31;->shift_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v3, v3, Lcom/htc/weather/animations/Anim31;->shift_y_:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->width_:I

    int-to-float v2, v2

    const/high16 v3, 0x430c

    iget-object v4, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v3, v3, Lcom/htc/weather/animations/Anim31;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v3, v3, Lcom/htc/weather/animations/Anim31;->shift_y_:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim31;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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
    .line 180
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 182
    .local v8, inAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v2, v2, Lcom/htc/weather/animations/Anim31;->alpha_:F

    const-wide/16 v3, 0x3de

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim31;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 187
    return-object v8
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    .line 192
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 194
    .local v8, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget v1, v1, Lcom/htc/weather/animations/Anim31;->alpha_:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x294

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim31$3;->this$0:Lcom/htc/weather/animations/Anim31;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim31;->delay_:J

    const-wide/16 v9, 0x21

    mul-long/2addr v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 199
    return-object v8
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method
