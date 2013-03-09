.class Lcom/htc/weather/animations/Anim11$5;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim11;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim11;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 369
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim11;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim11;->mContext:Landroid/content/Context;

    const v2, 0x208058e

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 373
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    add-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    add-int/lit8 v3, v3, 0x46

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    :goto_0
    return-object v0

    .line 378
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    add-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    add-int/lit8 v3, v3, 0x46

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 18

    .prologue
    .line 388
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 389
    .local v14, inAnimationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 390
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x41f0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x428c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4248

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v5, v5, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4248

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v6, v6, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 394
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    const/high16 v3, 0x3fa0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    const/high16 v5, 0x3fa0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v6, v6, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 408
    :goto_0
    const/4 v1, 0x2

    new-array v13, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->alpha_:F

    aput v2, v13, v1

    .line 409
    .local v13, from:[F
    const/4 v1, 0x2

    new-array v15, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->alpha_:F

    aput v2, v15, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->alpha_:F

    aput v2, v15, v1

    .line 410
    .local v15, to:[F
    const/4 v1, 0x2

    new-array v12, v1, [J

    fill-array-data v12, :array_0

    .line 411
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 413
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 414
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 425
    return-object v14

    .line 399
    .end local v11           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v12           #dur:[J
    .end local v13           #from:[F
    .end local v15           #to:[F
    :cond_0
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x41f0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x428c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4248

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v5, v5, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v5, v5, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4248

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v6, v6, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v6, v6, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v6, v6, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 403
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    const/high16 v3, 0x3fa0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    const/high16 v5, 0x3fa0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v6, v6, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 410
    :array_0
    .array-data 0x8
        0x4at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x94t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 13

    .prologue
    .line 430
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 431
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x428c

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42c8

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4248

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x425c

    iget-object v5, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v5, v5, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const-wide/16 v5, 0x294

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v11, 0x21

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 436
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const/high16 v1, 0x3fa0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    mul-float/2addr v1, v2

    const v2, 0x3f666666

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3fa0

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    mul-float/2addr v3, v4

    const v4, 0x3f666666

    iget-object v5, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v5, v5, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    mul-float/2addr v4, v5

    const-wide/16 v5, 0x294

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v11, 0x21

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 440
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v1, v1, Lcom/htc/weather/animations/Anim11;->alpha_:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x294

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v8, 0x21

    mul-long/2addr v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 456
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 458
    return-object v10

    .line 444
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x428c

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4248

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x425c

    iget-object v5, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v5, v5, Lcom/htc/weather/animations/Anim11;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-object v5, v5, Lcom/htc/weather/animations/Anim11;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v5

    const-wide/16 v5, 0x294

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v11, 0x21

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 448
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const/high16 v1, 0x3fa0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v2, v2, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    mul-float/2addr v1, v2

    const v2, 0x3f666666

    iget-object v3, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v3, v3, Lcom/htc/weather/animations/Anim11;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3fa0

    iget-object v4, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v4, v4, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    mul-float/2addr v3, v4

    const v4, 0x3f666666

    iget-object v5, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v5, v5, Lcom/htc/weather/animations/Anim11;->scale_y_:F

    mul-float/2addr v4, v5

    const-wide/16 v5, 0x294

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v11, 0x21

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 452
    new-instance v0, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget v1, v1, Lcom/htc/weather/animations/Anim11;->alpha_:F

    const/4 v2, 0x0

    const-wide/16 v3, 0x294

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v6, p0, Lcom/htc/weather/animations/Anim11$5;->this$0:Lcom/htc/weather/animations/Anim11;

    iget-wide v6, v6, Lcom/htc/weather/animations/Anim11;->delay_:J

    const-wide/16 v8, 0x21

    mul-long/2addr v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return-object v0
.end method
