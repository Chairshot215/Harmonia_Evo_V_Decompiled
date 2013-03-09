.class public Lcom/android/phone/HtcCdmaLoopbackScreen;
.super Landroid/app/Activity;
.source "HtcCdmaLoopbackScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_FINISH:I = 0x3

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_TIMER:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaLoopbackScreen"

.field private static final logKeywordLoopback:Ljava/lang/String; = "loopback"


# instance fields
.field private callCardLayout:Landroid/view/View;

.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallTimer:Landroid/os/Handler;

.field private mFirstStartTime:J

.field private mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

.field private mInterval:J

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastReportedTime:J

.field private mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field private mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

.field private mOperatorNameShadow:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoBm:Landroid/graphics/Bitmap;

.field private mPhotoDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mPreCachedPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimerRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    new-instance v0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaLoopbackScreen$1;-><init>(Lcom/android/phone/HtcCdmaLoopbackScreen;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    .line 370
    new-instance v0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaLoopbackScreen$2;-><init>(Lcom/android/phone/HtcCdmaLoopbackScreen;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->initLoopbackScreen()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/HtcCdmaLoopbackScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mTimerRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->periodicUpdateTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/HtcCdmaLoopbackScreen;)Lcom/android/internal/telephony/gsm/OperatorInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/HtcCdmaLoopbackScreen;Lcom/android/internal/telephony/gsm/OperatorInfo;)Lcom/android/internal/telephony/gsm/OperatorInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->updateOperatorName()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->updateCdmaRoamingIcon()V

    return-void
.end method

.method private endObserverActivities()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iput-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iput-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 297
    :cond_1
    return-void
.end method

.method private initLoopbackScreen()V
    .locals 15

    .prologue
    .line 218
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 219
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    const/16 v1, 0x1f4

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkOnOffTime(II)V

    .line 225
    :cond_0
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_1
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 230
    .local v10, mInCallPanel:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 231
    .local v6, callCardLayout:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 233
    .local v13, parent:Landroid/view/ViewGroup;
    if-eqz v13, :cond_2

    .line 235
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_2
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 241
    .local v3, mElapsedTime:Landroid/widget/TextView;
    const v0, 0x7f08006c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 242
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallCard:Lcom/android/phone/CallCard;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/CallCard;->passCallStatusViews(Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/phone/InCallScreen;)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 246
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mPhoto:Landroid/widget/ImageView;

    .line 247
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 256
    .local v7, cdmainfo:Landroid/view/View;
    const v0, 0x7f08005a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 257
    .local v14, phonelayout:Landroid/widget/LinearLayout;
    if-eqz v7, :cond_3

    if-eqz v14, :cond_3

    .line 258
    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    :cond_3
    const v0, 0x7f0800cd

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 261
    .local v9, mCallCardInfoField:Landroid/widget/TextView;
    if-eqz v9, :cond_4

    .line 262
    const v0, 0x7f0e00e7

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 263
    const/16 v0, -0x100

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    :cond_4
    const v0, 0x7f08005f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 266
    .local v8, mCallCardInfo:Landroid/view/View;
    if-eqz v8, :cond_5

    .line 267
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_5
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/phone/widget/ButtonGroup;

    .line 270
    .local v11, mTaskBar:Lcom/android/phone/widget/ButtonGroup;
    if-eqz v11, :cond_6

    .line 271
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Lcom/android/phone/widget/ButtonGroup;->setVisibility(I)V

    .line 274
    :cond_6
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/HtcLockScreenControl;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    .line 275
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 277
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 278
    .local v12, mViewControlLayout:Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mInterval:J

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mInterval:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mFirstStartTime:J

    .line 282
    iget-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mFirstStartTime:J

    iput-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mLastReportedTime:J

    .line 283
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    return-void
.end method

.method private periodicUpdateTimer()V
    .locals 6

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mTimerRunning:Z

    if-nez v0, :cond_1

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mTimerRunning:Z

    .line 332
    :goto_0
    iget-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mLastReportedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mInterval:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 333
    iget-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mLastReportedTime:J

    iget-wide v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mLastReportedTime:J

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mLastReportedTime:J

    iget-wide v4, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mInterval:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 338
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-wide v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mLastReportedTime:J

    iget-wide v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mFirstStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallCard;->onTickForCallTimeElapsed(J)V

    .line 342
    :goto_1
    return-void

    .line 340
    :cond_1
    const-string v0, "HtcCdmaLoopbackScreen"

    const-string v1, "timer already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final updateCdmaRoamingIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 410
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 411
    .local v2, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 412
    .local v0, iconIndex:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 414
    .local v1, iconMode:I
    if-ne v0, v4, :cond_0

    .line 415
    const-string v3, "HtcCdmaLoopbackScreen"

    const-string v4, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return-void

    .line 419
    :cond_0
    if-ne v1, v4, :cond_1

    .line 420
    const-string v3, "HtcCdmaLoopbackScreen"

    const-string v4, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_1
    if-ne v0, v6, :cond_2

    .line 426
    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 430
    :cond_2
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 432
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkable(Z)V

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateOperatorName()V
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 397
    :cond_0
    const v1, 0x7f080145

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcBlinkingTextView;

    iput-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    .line 399
    const v1, 0x7f080144

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, op:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorNameShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method


# virtual methods
.method disableKeyguard()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 357
    return-void
.end method

.method getOperatorAlpha()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 300
    const/4 v0, 0x0

    .line 306
    .local v0, alpha:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/OperatorInfo;

    iput-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-nez v1, :cond_2

    .line 311
    :cond_1
    const v1, 0x7f0e022b

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v1, :cond_3

    .line 314
    const-string v1, "%s(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-nez v1, :cond_4

    .line 316
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    if-eqz v1, :cond_5

    .line 318
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_5
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 139
    iget-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v3, "HtcCdmaLoopbackScreen"

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->disableKeyguard()V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 143
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "finish"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    const v2, 0x7f03003f

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaLoopbackScreen;->setContentView(I)V

    .line 151
    iget-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mTimerRunning:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->reenableKeyguard()V

    .line 198
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 126
    const-string v1, "finish"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    .local v0, bFinish:Z
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mCallTimer:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorName:Lcom/htc/widget/HtcBlinkingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 177
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackScreen;->endObserverActivities()V

    .line 178
    return-void
.end method

.method reenableKeyguard()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackScreen;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 369
    return-void
.end method
