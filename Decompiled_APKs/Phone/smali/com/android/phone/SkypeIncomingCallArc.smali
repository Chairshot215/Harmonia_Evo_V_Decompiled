.class public Lcom/android/phone/SkypeIncomingCallArc;
.super Landroid/app/Activity;
.source "SkypeIncomingCallArc.java"


# static fields
.field private static final AUDIO_ONLY_ID:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SkypeIncomingCallArc"

.field private static final REJECT_ID:I = 0x3

.field private static final SCREEN_ON:I = 0x64

.field private static final SKYPE_CALL_ACCEPTED_AUDIO:I = 0x1

.field private static final SKYPE_CALL_ACCEPTED_VIDEO:I = 0x2

.field private static final SKYPE_CALL_REJECTED:I = 0x3

.field private static final SKYPE_CALL_TYPE_AUDIO:I = 0x1

.field private static final SKYPE_CALL_TYPE_VIDEO:I = 0x2

.field private static final VIDEO_CALL_ID:I = 0x1


# instance fields
.field private incallScreen:Lcom/android/phone/InCallScreen;

.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallType:I

.field private mCallerName:Landroid/widget/TextView;

.field public mContext:Landroid/content/Context;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mElapsedTimeShadow:Landroid/widget/TextView;

.field private mFrameMask:Landroid/graphics/Bitmap;

.field private mFrameRect:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

.field private mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

.field private mIconBm:Landroid/graphics/Bitmap;

.field private mIconRect:Landroid/graphics/Rect;

.field private mInCallStatus:Landroid/widget/TextView;

.field private mInCallStatusShadow:Landroid/widget/TextView;

.field private mInCallStatusViewGroup:Landroid/view/ViewGroup;

.field private mIncallAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mName:Ljava/lang/String;

.field private mNonCallStatus:Landroid/widget/TextView;

.field private mNonCallStatusShadow:Landroid/widget/TextView;

.field private mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

.field private mOperatorNameShadow:Landroid/widget/TextView;

.field private final mPSCallStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPaint:Landroid/graphics/Paint;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoBm:Landroid/graphics/Bitmap;

.field private mPhotoDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mPhotoRect:Landroid/graphics/Rect;

.field private mPhotoRef:Landroid/widget/ImageView;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mRefBm:Landroid/graphics/Bitmap;

.field private mRefMask:Landroid/graphics/Bitmap;

.field private mRefRect:Landroid/graphics/Rect;

.field photo:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Lcom/android/phone/SkypeIncomingCallArc$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SkypeIncomingCallArc$1;-><init>(Lcom/android/phone/SkypeIncomingCallArc;)V

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHandler:Landroid/os/Handler;

    .line 683
    new-instance v0, Lcom/android/phone/SkypeIncomingCallArc$6;

    invoke-direct {v0, p0}, Lcom/android/phone/SkypeIncomingCallArc$6;-><init>(Lcom/android/phone/SkypeIncomingCallArc;)V

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPSCallStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SkypeIncomingCallArc;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->incomingCallAnswerCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->incomingCallDeclineCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->incallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/widget/HtcLockScreenControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->setResultDeclineCall()V

    return-void
.end method

.method static createSquareDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "res"
    .parameter "src"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 526
    if-nez p0, :cond_0

    move-object v7, v9

    .line 557
    :goto_0
    return-object v7

    .line 529
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 530
    .local v2, height:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 532
    .local v6, width:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 534
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 539
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 540
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 542
    if-ne v2, v6, :cond_1

    .line 543
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 547
    :cond_1
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 548
    .local v4, size:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 549
    .local v5, squareBm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 551
    .local v3, rect:Landroid/graphics/Rect;
    if-ne v6, v4, :cond_2

    move v7, v8

    :goto_1
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 552
    if-ne v2, v4, :cond_3

    move v7, v8

    :goto_2
    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 553
    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 554
    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 555
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v3, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 557
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 551
    :cond_2
    sub-int v7, v6, v4

    div-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 552
    :cond_3
    sub-int v7, v2, v4

    div-int/lit8 v7, v7, 0x2

    goto :goto_2
.end method

.method private incomingCallAnswerCall()V
    .locals 3

    .prologue
    .line 397
    const-string v0, "SkypeIncomingCallArc"

    const-string v1, "incomingCallAnswerCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gsm.lockscreen.mode.status"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    const-string v0, "SkypeIncomingCallArc"

    const-string v1, ">>> incomingCallAnswerCall(),   set lockscreen mode :false "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->setResultAnswerCall()V

    .line 406
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->release()V

    .line 408
    return-void
.end method

.method private incomingCallDeclineCall()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "SkypeIncomingCallArc"

    const-string v1, "incomingCallDeclineCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->DeclineCall()V

    .line 414
    return-void
.end method

.method private initTitleLayout()V
    .locals 1

    .prologue
    .line 211
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 212
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f080148

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatus:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatusShadow:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhoto:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRef:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallerName:Landroid/widget/TextView;

    .line 220
    return-void
.end method

.method private initializePhotoLayout()V
    .locals 20

    .prologue
    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 444
    .local v16, res:Landroid/content/res/Resources;
    const v2, 0x7f0c009f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v11, v2

    .line 446
    .local v11, fl:I
    const v2, 0x7f0c009d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v15, v2

    .line 448
    .local v15, pl:I
    const v2, 0x7f0c00bd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    .line 450
    .local v13, il:I
    sub-int v2, v11, v15

    div-int/lit8 v18, v2, 0x2

    .line 452
    .local v18, sl:I
    const v2, 0x7f0c00a1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 454
    .local v17, rh:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mFrameRect:Landroid/graphics/Rect;

    .line 455
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v11, v18

    sub-int v4, v11, v18

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRect:Landroid/graphics/Rect;

    .line 456
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-direct {v2, v3, v4, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefRect:Landroid/graphics/Rect;

    .line 457
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v11, v13

    sub-int v3, v3, v18

    add-int v4, v13, v18

    sub-int v5, v11, v18

    move/from16 v0, v18

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mIconRect:Landroid/graphics/Rect;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 462
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    .line 463
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v11, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefBm:Landroid/graphics/Bitmap;

    .line 464
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mIconBm:Landroid/graphics/Bitmap;

    .line 465
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 469
    .local v12, frame:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 470
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 471
    .local v10, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v12, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mFrameMask:Landroid/graphics/Bitmap;

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ab

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefMask:Landroid/graphics/Bitmap;

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mIncallAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRef:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefBm:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 484
    new-instance v10, Landroid/graphics/Canvas;

    .end local v10           #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .restart local v10       #canvas:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    .line 488
    .local v19, squareDb:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->photo:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 489
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/SkypeIncomingCallArc;->photo:Landroid/graphics/Bitmap;

    invoke-direct {v14, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 490
    .local v14, mPhoto:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/phone/SkypeIncomingCallArc;->createSquareDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 498
    .end local v14           #mPhoto:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v19, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRect:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 501
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mFrameMask:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoBm:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/phone/SkypeIncomingCallArc;->mMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 511
    .local v9, bitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    .end local v10           #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefBm:Landroid/graphics/Bitmap;

    invoke-direct {v10, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 514
    .restart local v10       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v10, v9, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefMask:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/SkypeIncomingCallArc;->mRefRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/SkypeIncomingCallArc;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 520
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    return-void

    .line 495
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/SkypeIncomingCallArc;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/android/phone/SkypeIncomingCallArc;->createSquareDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_0
.end method

.method private setResultAnswerCall()V
    .locals 4

    .prologue
    .line 671
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 672
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 679
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/SkypeIncomingCallArc;->setResult(ILandroid/content/Intent;)V

    .line 680
    const-string v2, "SkypeIncomingCallArc"

    const-string v3, "setResultAnswerCall---setResult"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method private setResultDeclineCall()V
    .locals 4

    .prologue
    .line 661
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 662
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 663
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "result"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 664
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 665
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/SkypeIncomingCallArc;->setResult(ILandroid/content/Intent;)V

    .line 666
    const-string v2, "SkypeIncomingCallArc"

    const-string v3, "setResultDeclineCall---setResult: 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method private setupAlertingLock()V
    .locals 6

    .prologue
    .line 326
    const v4, 0x7f080142

    invoke-virtual {p0, v4}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/widget/HtcLockScreenControl;

    iput-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    .line 327
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v4, :cond_0

    .line 329
    const-string v4, "SkypeIncomingCallArc"

    const-string v5, "setupAlertingLock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v2, Lcom/android/phone/SkypeIncomingCallArc$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SkypeIncomingCallArc$2;-><init>(Lcom/android/phone/SkypeIncomingCallArc;)V

    .line 338
    .local v2, rOpenDownDrawerSkype:Ljava/lang/Runnable;
    new-instance v3, Lcom/android/phone/SkypeIncomingCallArc$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SkypeIncomingCallArc$3;-><init>(Lcom/android/phone/SkypeIncomingCallArc;)V

    .line 346
    .local v3, rOpenUpDrawerSkype:Ljava/lang/Runnable;
    new-instance v1, Lcom/android/phone/SkypeIncomingCallArc$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SkypeIncomingCallArc$4;-><init>(Lcom/android/phone/SkypeIncomingCallArc;)V

    .line 358
    .local v1, rDraggingUpDrawerSkype:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/phone/SkypeIncomingCallArc$5;

    invoke-direct {v0, p0}, Lcom/android/phone/SkypeIncomingCallArc$5;-><init>(Lcom/android/phone/SkypeIncomingCallArc;)V

    .line 370
    .local v0, rDraggingDownDrawerSkype:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->setOpenDrawerDownRunnable(Ljava/lang/Runnable;)V

    .line 372
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/HtcLockScreenControl;->setOpenDrawerUpRunnable(Ljava/lang/Runnable;)V

    .line 373
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/HtcLockScreenControl;->setLockScreenForIncomingCall(Z)V

    .line 374
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setDragingUpRunnable(Ljava/lang/Runnable;)V

    .line 375
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v0}, Lcom/android/phone/widget/HtcLockScreenControl;->setDragingDownRunnable(Ljava/lang/Runnable;)V

    .line 376
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v4, v0}, Lcom/android/phone/widget/HtcLockScreenControl;->setCloseDrawerRunnable(Ljava/lang/Runnable;)V

    .line 378
    iget-object v4, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 379
    const-string v4, "SkypeIncomingCallArc"

    const-string v5, "setupAlertingLock_done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0           #rDraggingDownDrawerSkype:Ljava/lang/Runnable;
    .end local v1           #rDraggingUpDrawerSkype:Ljava/lang/Runnable;
    .end local v2           #rOpenDownDrawerSkype:Ljava/lang/Runnable;
    .end local v3           #rOpenUpDrawerSkype:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private setupLockScreenControlArcIncomingCall()V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-nez v0, :cond_0

    .line 387
    const-string v0, "SkypeIncomingCallArc"

    const-string v1, "setupLockScreenControlArcIncomingCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-direct {v0, p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 389
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setHintText(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setArcControl(Landroid/view/View;)V

    .line 393
    :cond_0
    return-void
.end method

.method private updateOperatorName()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    .line 223
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 224
    :cond_0
    const v2, 0x7f080145

    invoke-virtual {p0, v2}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 225
    const v2, 0x7f080144

    invoke-virtual {p0, v2}, Lcom/android/phone/SkypeIncomingCallArc;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, retVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2, v4, v4}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkOnOffTime(II)V

    .line 232
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, op:Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatusShadow:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_2
    return-void

    .line 238
    :cond_3
    iget v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    const v3, 0x7f0e022b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public DeclineCall()V
    .locals 4

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsm.lockscreen.mode.status"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 639
    const-string v1, "SkypeIncomingCallArc"

    const-string v2, ">>> DeclineCall(),   set lockscreen mode :false "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 642
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 643
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->forceWakeUpScreen()V

    .line 645
    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 646
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->incallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 648
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->setResultDeclineCall()V

    .line 655
    const-string v1, "SkypeIncomingCallArc"

    const-string v2, "DeclineCall---setResult: 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->release()V

    .line 657
    return-void
.end method

.method public getCallerInfo()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    const v2, 0x7f0e022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x48

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 155
    invoke-virtual {p0, v4}, Lcom/android/phone/SkypeIncomingCallArc;->requestWindowFeature(I)Z

    .line 157
    const v2, 0x7f030058

    invoke-virtual {p0, v2}, Lcom/android/phone/SkypeIncomingCallArc;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 160
    .local v1, mBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 162
    const-string v2, "call_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallType:I

    .line 163
    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mName:Ljava/lang/String;

    .line 164
    const-string v2, "photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->photo:Landroid/graphics/Bitmap;

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 168
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    .line 170
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->setupAlertingLock()V

    .line 171
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->setupLockScreenControlArcIncomingCall()V

    .line 173
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v2}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->loadAndShowArrowAnimation()V

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->initTitleLayout()V

    .line 178
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->updateOperatorName()V

    .line 179
    invoke-direct {p0}, Lcom/android/phone/SkypeIncomingCallArc;->initializePhotoLayout()V

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getCallerInfo()V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PS_CALL_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "android.intent.action.Reject_PS_Call"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.Handle_PS_Call"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPSCallStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->incallScreen:Lcom/android/phone/InCallScreen;

    .line 189
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 191
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setSkypeIncallScreenEnable(Z)V

    .line 192
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 564
    const v0, 0x7f0e00cc

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809e3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 565
    const/4 v0, 0x2

    const v1, 0x7f0e00cd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20809d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 566
    const/4 v0, 0x3

    const v1, 0x7f0e00ce

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a1d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 567
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "SkypeIncomingCallArc"

    const-string v1, "onDestroy()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 631
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 587
    :pswitch_0
    const-string v3, "ANALYTIC_Phone"

    const-string v4, "[SkypeIncomingCallArc]Video call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gsm.lockscreen.mode.status"

    const-string v5, "false"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 590
    const-string v3, "SkypeIncomingCallArc"

    const-string v4, ">>> onOptionsItemSelected(),   set lockscreen mode :false "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v3, v7}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 593
    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 596
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 598
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "result"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0, v6, v1}, Lcom/android/phone/SkypeIncomingCallArc;->setResult(ILandroid/content/Intent;)V

    .line 601
    const-string v3, "SkypeIncomingCallArc"

    const-string v4, "incomingCall  Video Call---setResult: 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->release()V

    goto :goto_0

    .line 606
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_1
    const-string v3, "ANALYTIC_Phone"

    const-string v4, "[SkypeIncomingCallArc]Audio only"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gsm.lockscreen.mode.status"

    const-string v5, "false"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 609
    const-string v3, "SkypeIncomingCallArc"

    const-string v4, ">>> onOptionsItemSelected(),   set lockscreen mode :false "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v3, v7}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 612
    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v3, :cond_1

    .line 613
    iget-object v3, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->hideAndReleaseArrowAnimation()V

    .line 615
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 616
    .restart local v1       #i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v6, v1}, Lcom/android/phone/SkypeIncomingCallArc;->setResult(ILandroid/content/Intent;)V

    .line 620
    const-string v3, "SkypeIncomingCallArc"

    const-string v4, "incomingCall  Audio Call---setResult: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->release()V

    goto/16 :goto_0

    .line 625
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_2
    const-string v3, "ANALYTIC_Phone"

    const-string v4, "[SkypeIncomingCallArc]Reject call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->DeclineCall()V

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 278
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 573
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 575
    iget v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallType:I

    if-ne v0, v2, :cond_0

    .line 576
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 577
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 254
    const-string v1, "SkypeIncomingCallArc"

    const-string v2, "onResume()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    const-string v1, "SkypeIncomingCallArc"

    const-string v2, "onResume()...ScreenOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v1, "SkypeIncomingCallArc"

    const-string v2, "onResume()...ScreenOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 268
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->forceWakeUpScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SkypeIncomingCallArc"

    const-string v2, "onResume()...Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "SkypeIncomingCallArc"

    const-string v1, "release..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 291
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {v0}, Lcom/android/phone/widget/HtcLockScreenControl;->removeAllViews()V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_2

    .line 298
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 300
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 302
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatus:Landroid/widget/TextView;

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatusShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 304
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mInCallStatusShadow:Landroid/widget/TextView;

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_6

    .line 306
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 308
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 310
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhoto:Landroid/widget/ImageView;

    .line 311
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRef:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 312
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPhotoRef:Landroid/widget/ImageView;

    .line 313
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 314
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->mCallerName:Landroid/widget/TextView;

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->photo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 316
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->photo:Landroid/graphics/Bitmap;

    .line 317
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SkypeIncomingCallArc;->mPSCallStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->incallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_c

    .line 319
    iput-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc;->incallScreen:Lcom/android/phone/InCallScreen;

    .line 320
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setSkypeIncallScreenEnable(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/SkypeIncomingCallArc;->finish()V

    .line 322
    return-void
.end method

.method setVisibilityLockScreenInCallNumber(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setVisibilityLockScreenInCallNumber(I)V

    .line 432
    :cond_0
    return-void
.end method

.method updateLockScreenInCallName(Ljava/lang/String;)V
    .locals 1
    .parameter "sName"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateLockScreenInCallName(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method

.method updateLockScreenInCallNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "sNumber"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControlArcIncomingCall:Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateLockScreenInCallNumber(Ljava/lang/String;)V

    .line 426
    :cond_0
    return-void
.end method
