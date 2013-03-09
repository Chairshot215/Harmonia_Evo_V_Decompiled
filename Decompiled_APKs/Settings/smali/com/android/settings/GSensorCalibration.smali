.class public Lcom/android/settings/GSensorCalibration;
.super Landroid/app/Activity;
.source "GSensorCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GSensorCalibration$Calibrate;,
        Lcom/android/settings/GSensorCalibration$Anim;,
        Lcom/android/settings/GSensorCalibration$btnClicklistener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSensorCalibration"


# instance fields
.field SensorRate:I

.field SensorType:I

.field animBubble_H:Landroid/view/animation/TranslateAnimation;

.field animBubble_V:Landroid/view/animation/TranslateAnimation;

.field animHoriz:Landroid/view/animation/TranslateAnimation;

.field animVert:Landroid/view/animation/TranslateAnimation;

.field caliResult:Ljava/lang/String;

.field calibrateBtn:Landroid/widget/Button;

.field calibrateStatus:Landroid/widget/TextView;

.field code:I

.field dpi:I

.field errorCode:Ljava/lang/String;

.field hwidth:I

.field imgBubble_H:Landroid/widget/ImageView;

.field imgBubble_V:Landroid/widget/ImageView;

.field imgCylinder_H:Landroid/widget/ImageView;

.field imgCylinder_V:Landroid/widget/ImageView;

.field isCHS:Ljava/lang/Boolean;

.field isLandscape:Ljava/lang/Boolean;

.field mAnim:Lcom/android/settings/GSensorCalibration$Anim;

.field mCalibrate:Lcom/android/settings/GSensorCalibration$Calibrate;

.field mHandler:Landroid/os/Handler;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field oldValue_H:F

.field oldValue_V:F

.field params:Landroid/widget/RelativeLayout$LayoutParams;

.field r:Ljava/lang/String;

.field rl:Landroid/widget/RelativeLayout;

.field rlp:Landroid/widget/RelativeLayout;

.field vheight:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->caliResult:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->r:Ljava/lang/String;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->isLandscape:Ljava/lang/Boolean;

    .line 74
    iput v4, p0, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    .line 75
    iput v4, p0, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->errorCode:Ljava/lang/String;

    .line 80
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x1b

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->isCHS:Ljava/lang/Boolean;

    .line 81
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->isCHS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput v2, p0, Lcom/android/settings/GSensorCalibration;->SensorType:I

    .line 82
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->isCHS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iput v1, p0, Lcom/android/settings/GSensorCalibration;->SensorRate:I

    .line 215
    new-instance v0, Lcom/android/settings/GSensorCalibration$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GSensorCalibration$1;-><init>(Lcom/android/settings/GSensorCalibration;)V

    iput-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 380
    return-void

    :cond_1
    move v0, v1

    .line 80
    goto :goto_0

    :cond_2
    move v2, v3

    .line 81
    goto :goto_1

    :cond_3
    move v1, v3

    .line 82
    goto :goto_2
.end method

.method static synthetic access$300(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/GSensorCalibration;->startAnim()V

    return-void
.end method

.method private startAnim()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const/16 v11, 0x7e

    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 317
    const-string v5, "GSensorCalibration"

    const-string v6, "startAnimation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v2, 0x0

    .line 328
    .local v2, index:I
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 330
    .local v3, step:[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 332
    .local v4, step_pico:[I
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 333
    .local v0, animSetH:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 336
    .local v1, animSetV:Landroid/view/animation/AnimationSet;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_2

    .line 338
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v5, v11, :cond_0

    .line 339
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    aget v6, v3, v2

    int-to-float v6, v6

    invoke-direct {v5, v8, v8, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    .line 343
    :goto_1
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 344
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 345
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 346
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    mul-int/lit16 v6, v2, 0x1f4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 347
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 349
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v5, v11, :cond_1

    .line 350
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    aget v6, v3, v2

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-direct {v5, v8, v6, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    .line 353
    :goto_2
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 354
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 355
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 356
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    mul-int/lit16 v6, v2, 0x1f4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_0
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    aget v6, v4, v2

    int-to-float v6, v6

    invoke-direct {v5, v8, v8, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/GSensorCalibration;->animHoriz:Landroid/view/animation/TranslateAnimation;

    goto :goto_1

    .line 352
    :cond_1
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    aget v6, v4, v2

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-direct {v5, v8, v6, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/GSensorCalibration;->animVert:Landroid/view/animation/TranslateAnimation;

    goto :goto_2

    .line 361
    :cond_2
    iput v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_V:F

    .line 362
    iput v8, p0, Lcom/android/settings/GSensorCalibration;->oldValue_H:F

    .line 364
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    const-string v5, "GSensorCalibration"

    const-string v6, "animation:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 328
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x9ct 0xfft 0xfft 0xfft
        0x5at 0x0t 0x0t 0x0t
        0xc4t 0xfft 0xfft 0xfft
        0x2dt 0x0t 0x0t 0x0t
        0xe2t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 330
    :array_1
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0xb0t 0xfft 0xfft 0xfft
        0x50t 0x0t 0x0t 0x0t
        0xcet 0xfft 0xfft 0xfft
        0x23t 0x0t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 88
    .local v1, windowMgr:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    .line 92
    const-string v2, "GSensorCalibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DPI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/GSensorCalibration;->dpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    .line 101
    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->setContentView(I)V

    .line 104
    const v2, 0x7f08008c

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->imgCylinder_H:Landroid/widget/ImageView;

    .line 105
    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->imgCylinder_V:Landroid/widget/ImageView;

    .line 106
    const v2, 0x7f08008e

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    .line 107
    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    .line 108
    const v2, 0x7f08008a

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    .line 109
    const v2, 0x7f08008b

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->calibrateStatus:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f080087

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->rlp:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_H:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/GSensorCalibration;->hwidth:I

    .line 116
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->imgBubble_V:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/GSensorCalibration;->vheight:I

    .line 118
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const v3, 0x7f0c02d5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/GSensorCalibration$btnClicklistener;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/GSensorCalibration$btnClicklistener;-><init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v2, Lcom/android/settings/GSensorCalibration$Calibrate;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/GSensorCalibration$Calibrate;-><init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->mCalibrate:Lcom/android/settings/GSensorCalibration$Calibrate;

    .line 123
    new-instance v2, Lcom/android/settings/GSensorCalibration$Anim;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/GSensorCalibration$Anim;-><init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V

    iput-object v2, p0, Lcom/android/settings/GSensorCalibration;->mAnim:Lcom/android/settings/GSensorCalibration$Anim;

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 130
    const-string v1, "GSensorCalibration"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/GSensorCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 135
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GSensorCalibration;->isLandscape:Ljava/lang/Boolean;

    .line 137
    const-string v1, "GSensorCalibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLandscape:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration;->isLandscape:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget v4, p0, Lcom/android/settings/GSensorCalibration;->SensorType:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/GSensorCalibration;->SensorRate:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 143
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "GSensorCalibration"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 151
    return-void
.end method
