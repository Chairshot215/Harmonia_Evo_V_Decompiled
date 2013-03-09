.class Lcom/htc/weather/animations/Anim07$2;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Anim07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Anim07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Anim07;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Anim07;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    .line 139
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim07;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim07;->mContext:Landroid/content/Context;

    const v2, 0x2080106

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    add-int/lit8 v2, v2, -0xa

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    add-int/lit8 v3, v3, 0x28

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    add-int/lit8 v2, v2, -0xa

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    add-int/lit8 v3, v3, 0x28

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

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
    .line 158
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 159
    .local v14, inAnimationSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v1, v1, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x41a0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4220

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v4, v4, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v5, v5, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x41a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v6, v6, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim07;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const v2, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    const v4, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v5, v5, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v5, v5, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim07;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    :goto_0
    const/4 v1, 0x2

    new-array v13, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->alpha_:F

    aput v2, v13, v1

    .line 179
    .local v13, from:[F
    const/4 v1, 0x2

    new-array v15, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->alpha_:F

    aput v2, v15, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->alpha_:F

    aput v2, v15, v1

    .line 180
    .local v15, to:[F
    const/4 v1, 0x2

    new-array v12, v1, [J

    fill-array-data v12, :array_0

    .line 181
    .local v12, dur:[J
    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    .line 183
    .local v11, ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    .line 184
    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 195
    return-object v14

    .line 169
    .end local v11           #ca:Lcom/htc/weather/animations/compoundAlphaAnimation;
    .end local v12           #dur:[J
    .end local v13           #from:[F
    .end local v15           #to:[F
    :cond_0
    new-instance v1, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v2, 0x41a0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x4220

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v4, v4, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x41a0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v5, v5, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v5, v5, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v5, v5, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x41a0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v6, v6, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v6, v6, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v6, v6, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim07;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 173
    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const v2, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    const v4, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v5, v5, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v5, v5, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v9, v9, Lcom/htc/weather/animations/Anim07;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 180
    :array_0
    .array-data 0x8
        0xdet 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v7, 0x41a0

    const v13, 0x3f4ccccd

    const-wide/16 v5, 0x294

    const-wide/16 v11, 0x21

    .line 200
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 201
    .local v10, outAnimationSet:Landroid/view/animation/AnimationSet;
    iget-object v0, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v0, v0, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v0, v0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x4220

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42c8

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v4, v4, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim07;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v1, v1, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v4, v4, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim07;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 210
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v0, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v0, Lcom/htc/weather/animations/Anim07;->alpha_:F

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim07;->delay_:J

    mul-long v8, v0, v11

    move v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 226
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 228
    return-object v10

    .line 214
    :cond_0
    new-instance v0, Lcom/htc/weather/animations/WeatherTranslateAnimation;

    const/high16 v1, 0x4220

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v2, v2, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v2, v2, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_x_:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v3, v3, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v4, v4, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v4, v4, Lcom/htc/weather/animations/Anim07;->shift_y_:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    iget-object v7, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-object v7, v7, Lcom/htc/weather/animations/Anim07;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v7, v7, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v4, v7

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim07;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherTranslateAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 218
    new-instance v0, Lcom/htc/weather/animations/WeatherScaleAnimation;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v1, v1, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v2, v2, Lcom/htc/weather/animations/Anim07;->scale_x_:F

    mul-float/2addr v2, v13

    iget-object v3, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v3, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    iget-object v4, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v4, v4, Lcom/htc/weather/animations/Anim07;->scale_y_:F

    mul-float/2addr v4, v13

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v8, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v8, v8, Lcom/htc/weather/animations/Anim07;->delay_:J

    mul-long/2addr v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 222
    new-instance v2, Lcom/htc/weather/animations/WeatherAlphaAnimation;

    iget-object v0, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget v3, v0, Lcom/htc/weather/animations/Anim07;->alpha_:F

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iget-object v0, p0, Lcom/htc/weather/animations/Anim07$2;->this$0:Lcom/htc/weather/animations/Anim07;

    iget-wide v0, v0, Lcom/htc/weather/animations/Anim07;->delay_:J

    mul-long v8, v0, v11

    move v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/htc/weather/animations/WeatherAlphaAnimation;-><init>(FFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method
