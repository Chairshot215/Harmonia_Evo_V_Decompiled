.class Lcom/htc/weather/animations/Sun3$2;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Sun3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Sun3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Sun3;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Sun3;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 183
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v1, v1, Lcom/htc/weather/animations/Sun3;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v1, v1, Lcom/htc/weather/animations/Sun3;->mContext:Landroid/content/Context;

    const v2, 0x2080685

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v1, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v1, v1, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v1, v1, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v2, v2, Lcom/htc/weather/animations/Sun3;->shift_x_:I

    add-int/lit8 v2, v2, 0x4b

    iget-object v3, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v3, v3, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v3, v3, Lcom/htc/weather/animations/Sun3;->shift_y_:I

    add-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v4, v4, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v2, v2, Lcom/htc/weather/animations/Sun3;->shift_x_:I

    add-int/lit8 v2, v2, 0x4b

    iget-object v3, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v3, v3, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v3, v3, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v3, v3, Lcom/htc/weather/animations/Sun3;->shift_y_:I

    add-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v4, v4, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-object v4, v4, Lcom/htc/weather/animations/Sun3;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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
    .line 203
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 245
    .local v14, inAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const v2, 0x3f0f5c29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v3, v3, Lcom/htc/weather/animations/Sun3;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v4, v4, Lcom/htc/weather/animations/Sun3;->scale_x_:F

    mul-float/2addr v3, v4

    const v4, 0x3f0f5c29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v5, v5, Lcom/htc/weather/animations/Sun3;->scale_y_:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v6, v6, Lcom/htc/weather/animations/Sun3;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-wide v9, v9, Lcom/htc/weather/animations/Sun3;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 250
    new-instance v1, Lcom/htc/weather/animations/WeatherRotateAnimation;

    const/high16 v2, -0x3dcc

    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f00

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-wide v9, v9, Lcom/htc/weather/animations/Sun3;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherRotateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    const/4 v1, 0x1

    new-array v13, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v13, v1

    .line 256
    .local v13, from:[F
    const/4 v1, 0x1

    new-array v15, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v2, v2, Lcom/htc/weather/animations/Sun3;->alpha_:F

    aput v2, v15, v1

    .line 257
    .local v15, to:[F
    const/4 v1, 0x1

    new-array v12, v1, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x14a

    aput-wide v2, v12, v1

    .line 258
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 260
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 261
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 276
    return-object v14
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 18

    .prologue
    .line 281
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 283
    .local v14, outAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const/high16 v2, 0x3f40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v3, v3, Lcom/htc/weather/animations/Sun3;->scale_x_:F

    mul-float/2addr v2, v3

    const v3, 0x3f0f5c29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v4, v4, Lcom/htc/weather/animations/Sun3;->scale_x_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v5, v5, Lcom/htc/weather/animations/Sun3;->scale_y_:F

    mul-float/2addr v4, v5

    const v5, 0x3f0f5c29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v6, v6, Lcom/htc/weather/animations/Sun3;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-wide v9, v9, Lcom/htc/weather/animations/Sun3;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    new-instance v1, Lcom/htc/weather/animations/WeatherRotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x4234

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f00

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget-wide v9, v9, Lcom/htc/weather/animations/Sun3;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherRotateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 292
    const/4 v1, 0x1

    new-array v13, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Sun3$2;->this$0:Lcom/htc/weather/animations/Sun3;

    iget v2, v2, Lcom/htc/weather/animations/Sun3;->alpha_:F

    aput v2, v13, v1

    .line 293
    .local v13, from:[F
    const/4 v1, 0x1

    new-array v15, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v15, v1

    .line 294
    .local v15, to:[F
    const/4 v1, 0x1

    new-array v12, v1, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x294

    aput-wide v2, v12, v1

    .line 295
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 297
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 298
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 311
    return-object v14
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method
