.class Lcom/htc/weather/animations/Windy$3;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Windy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Windy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Windy;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Windy;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 222
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mContext:Landroid/content/Context;

    const v2, 0x208069c

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v1, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v2, v2, Lcom/htc/weather/animations/Windy;->shift_x_:I

    iget-object v3, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v3, v3, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->shift_y_:I

    add-int/lit8 v3, v3, 0x32

    iget-object v4, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v4, v4, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :goto_0
    return-object v0

    .line 231
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v2, v2, Lcom/htc/weather/animations/Windy;->shift_x_:I

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v3, v3, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v3, v3, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->shift_y_:I

    add-int/lit8 v3, v3, 0x32

    iget-object v4, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v4, v4, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v4, v4, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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
    .line 241
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 243
    .local v14, inAnimationSet:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/htc/weather/animations/WeatherRotateAnimation;

    const/high16 v2, 0x4234

    const/4 v3, 0x0

    const/high16 v4, 0x3e00

    const/high16 v5, 0x3e00

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-wide v9, v9, Lcom/htc/weather/animations/Windy;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherRotateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x435c

    const/high16 v3, 0x42c8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-wide v9, v9, Lcom/htc/weather/animations/Windy;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :goto_0
    const/4 v1, 0x3

    new-array v13, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v13, v1

    const/4 v1, 0x1

    const v2, 0x3f7d70a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->alpha_:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v2, v2, Lcom/htc/weather/animations/Windy;->alpha_:F

    aput v2, v13, v1

    .line 259
    .local v13, from:[F
    const/4 v1, 0x3

    new-array v15, v1, [F

    const/4 v1, 0x0

    const v2, 0x3f7d70a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->alpha_:F

    mul-float/2addr v2, v3

    aput v2, v15, v1

    const/4 v1, 0x1

    const v2, 0x3f7d70a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->alpha_:F

    mul-float/2addr v2, v3

    aput v2, v15, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v2, v2, Lcom/htc/weather/animations/Windy;->alpha_:F

    aput v2, v15, v1

    .line 260
    .local v15, to:[F
    const/4 v1, 0x3

    new-array v12, v1, [J

    fill-array-data v12, :array_0

    .line 261
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 263
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 264
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 268
    return-object v14

    .line 253
    .end local v11           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v12           #dur:[J
    .end local v13           #from:[F
    .end local v15           #to:[F
    :cond_0
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x435c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v3, v3, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v4, v4, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-wide v9, v9, Lcom/htc/weather/animations/Windy;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 260
    :array_0
    .array-data 0x8
        0xdet 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xeft 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 18

    .prologue
    .line 273
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 274
    .local v14, outAnimationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v1, v1, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 275
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x42c8

    const/high16 v3, -0x3e60

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-wide v9, v9, Lcom/htc/weather/animations/Windy;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    :goto_0
    const/4 v1, 0x3

    new-array v13, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v2, v2, Lcom/htc/weather/animations/Windy;->alpha_:F

    aput v2, v13, v1

    const/4 v1, 0x1

    const v2, 0x3dcccccd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->alpha_:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v13, v1

    .line 288
    .local v13, from:[F
    const/4 v1, 0x3

    new-array v15, v1, [F

    const/4 v1, 0x0

    const v2, 0x3dcccccd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->alpha_:F

    mul-float/2addr v2, v3

    aput v2, v15, v1

    const/4 v1, 0x1

    const v2, 0x3dcccccd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget v3, v3, Lcom/htc/weather/animations/Windy;->alpha_:F

    mul-float/2addr v2, v3

    aput v2, v15, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v15, v1

    .line 289
    .local v15, to:[F
    const/4 v1, 0x3

    new-array v12, v1, [J

    fill-array-data v12, :array_0

    .line 290
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 292
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 293
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 297
    return-object v14

    .line 280
    .end local v11           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v12           #dur:[J
    .end local v13           #from:[F
    .end local v15           #to:[F
    :cond_0
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x42c8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v3, v3, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, -0x3e60

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-object v4, v4, Lcom/htc/weather/animations/Windy;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Windy$3;->this$0:Lcom/htc/weather/animations/Windy;

    iget-wide v9, v9, Lcom/htc/weather/animations/Windy;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 289
    nop

    :array_0
    .array-data 0x8
        0xeft 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method
