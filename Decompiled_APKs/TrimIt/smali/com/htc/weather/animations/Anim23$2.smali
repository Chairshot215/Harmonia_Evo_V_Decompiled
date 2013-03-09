.class Lcom/htc/weather/animations/Anim23$2;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim23;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim23;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 163
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mContext:Landroid/content/Context;

    const v2, 0x2080109

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v1, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    add-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    add-int/lit8 v3, v3, 0x26

    iget-object v4, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :goto_0
    return-object v0

    .line 172
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    add-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    add-int/lit8 v3, v3, 0x26

    iget-object v4, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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
    .line 182
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 183
    .local v14, inAnimationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x42b4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4248

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v4, v4, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4190

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v5, v5, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4190

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v6, v6, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim23;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :goto_0
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const v2, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->scale_x_:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->scale_x_:F

    const v4, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v5, v5, Lcom/htc/weather/animations/Anim23;->scale_y_:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v5, v5, Lcom/htc/weather/animations/Anim23;->scale_y_:F

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim23;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 199
    const/4 v1, 0x2

    new-array v13, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->alpha_:F

    aput v2, v13, v1

    .line 200
    .local v13, from:[F
    const/4 v1, 0x2

    new-array v15, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->alpha_:F

    aput v2, v15, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->alpha_:F

    aput v2, v15, v1

    .line 201
    .local v15, to:[F
    const/4 v1, 0x2

    new-array v12, v1, [J

    fill-array-data v12, :array_0

    .line 202
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 204
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 205
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 214
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 216
    return-object v14

    .line 189
    .end local v11           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v12           #dur:[J
    .end local v13           #from:[F
    .end local v15           #to:[F
    :cond_0
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x42b4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4248

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v4, v4, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4190

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v5, v5, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v5, v5, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4190

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v6, v6, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v6, v6, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v6, v6, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim23;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 201
    nop

    :array_0
    .array-data 0x8
        0xdet 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 18

    .prologue
    .line 222
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 223
    .local v14, outAnimationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x4248

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v4, v4, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x4190

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v5, v5, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4190

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v6, v6, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim23;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 234
    :goto_0
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->scale_x_:F

    const v3, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v4, v4, Lcom/htc/weather/animations/Anim23;->scale_x_:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v4, v4, Lcom/htc/weather/animations/Anim23;->scale_y_:F

    const v5, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v6, v6, Lcom/htc/weather/animations/Anim23;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim23;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 239
    const/4 v1, 0x1

    new-array v13, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v2, v2, Lcom/htc/weather/animations/Anim23;->alpha_:F

    aput v2, v13, v1

    .line 240
    .local v13, from:[F
    const/4 v1, 0x1

    new-array v15, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v15, v1

    .line 241
    .local v15, to:[F
    const/4 v1, 0x1

    new-array v12, v1, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x294

    aput-wide v2, v12, v1

    .line 242
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 244
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 245
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 246
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 257
    return-object v14

    .line 229
    .end local v11           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v12           #dur:[J
    .end local v13           #from:[F
    .end local v15           #to:[F
    :cond_0
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x4248

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v3, v3, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4120

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v4, v4, Lcom/htc/weather/animations/Anim23;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4190

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v5, v5, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v5, v5, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4190

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget v6, v6, Lcom/htc/weather/animations/Anim23;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-object v6, v6, Lcom/htc/weather/animations/Anim23;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v6, v6, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim23$2;->this$0:Lcom/htc/weather/animations/Anim23;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim23;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method
