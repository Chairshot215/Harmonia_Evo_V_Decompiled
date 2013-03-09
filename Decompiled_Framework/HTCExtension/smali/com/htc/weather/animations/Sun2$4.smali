.class Lcom/htc/weather/animations/Sun2$4;
.super Lcom/htc/weather/animations/ImageViewAndAnimationSets;
.source "Sun2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/animations/Sun2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weather/animations/Sun2;


# direct methods
.method constructor <init>(Lcom/htc/weather/animations/Sun2;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    invoke-direct {p0}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialImageView()Landroid/widget/ImageView;
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    const v2, 0x2080583

    invoke-static {v1, v2}, Lcom/htc/weather/AnimImages;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v1, v1, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v1, v1, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    add-int/lit8 v2, v2, 0x50

    iget-object v3, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    iget-object v4, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    add-int/lit8 v2, v2, 0x50

    iget-object v3, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v3, v3, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    add-int/lit8 v3, v3, 0x0

    iget-object v4, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-object v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iget v4, v4, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected initialInAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 18

    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    const/high16 v2, 0x3f40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v3, v3, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    const/high16 v4, 0x3f40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v5, v5, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v5, v5, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    const-wide/16 v6, 0x3de

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-wide v9, v9, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    new-array v13, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v13, v1

    const/4 v1, 0x1

    new-array v15, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    aput v2, v15, v1

    const/4 v1, 0x2

    new-array v12, v1, [J

    fill-array-data v12, :array_0

    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v14

    nop

    :array_0
    .array-data 0x8
        0x4at 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x94t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected initialOutAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 18

    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Lcom/htc/weather/animations/WeatherScaleAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    const/high16 v3, 0x3f40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->scale_x_:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v4, v4, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    const/high16 v5, 0x3f40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v6, v6, Lcom/htc/weather/animations/WeatherAnimationData;->scale_y_:F

    mul-float/2addr v5, v6

    const-wide/16 v6, 0x294

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget-wide v9, v9, Lcom/htc/weather/animations/WeatherAnimationData;->delay_:J

    const-wide/16 v16, 0x21

    mul-long v9, v9, v16

    invoke-direct/range {v1 .. v10}, Lcom/htc/weather/animations/WeatherScaleAnimation;-><init>(FFFFJLandroid/view/animation/Interpolator;J)V

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    new-array v13, v1, [F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/weather/animations/Sun2$4;->this$0:Lcom/htc/weather/animations/Sun2;

    iget v2, v2, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    aput v2, v13, v1

    const/4 v1, 0x1

    new-array v15, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v15, v1

    const/4 v1, 0x1

    new-array v12, v1, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x294

    aput-wide v2, v12, v1

    new-instance v11, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v1, v13

    invoke-direct {v11, v1, v13, v15}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    invoke-virtual {v11, v12}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-object v14
.end method

.method protected initialRestAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
