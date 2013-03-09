.class public Lcom/htc/lockscreen/HtcPatternUnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "HtcPatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/HtcPatternUnlockScreen$5;,
        Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;,
        Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58

.field private static final USE_EMERGENCYDIAL:Z


# instance fields
.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCarrier:Landroid/widget/TextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

.field private mEmergencyAlone:Landroid/widget/Button;

.field private mEmergencyTogether:Landroid/widget/Button;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFooterForgotPattern:Landroid/view/ViewGroup;

.field private mFooterNormal:Landroid/view/ViewGroup;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mInstructions:Ljava/lang/String;

.field private mLastPokeTime:J

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNextAlarm:Ljava/lang/String;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mStatusSep:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->USE_EMERGENCYDIAL:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ILandroid/content/Context;)V
    .locals 11
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"
    .parameter "pluginContext"

    .prologue
    .line 196
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 91
    const/4 v8, 0x0

    iput v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 92
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 113
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 116
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mPluggedIn:Z

    .line 119
    const/16 v8, 0x64

    iput v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mBatteryLevel:I

    .line 121
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 123
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;

    .line 140
    const-wide/16 v8, -0x1b58

    iput-wide v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLastPokeTime:J

    .line 145
    new-instance v8, Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;

    invoke-direct {v8, p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;-><init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 197
    iget v8, p2, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCreationOrientation:I

    .line 198
    const-string v8, "UnlockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcPatternUnlockScreen mCreationOrientation:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCreationOrientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v8, Lcom/htc/lockscreen/widget/DialUtil;

    const/4 v9, 0x1

    invoke-direct {v8, p1, v9}, Lcom/htc/lockscreen/widget/DialUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    .line 202
    iput-object p3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 203
    iput-object p4, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 204
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 205
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 206
    rem-int/lit8 v8, p6, 0x5

    iput v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 210
    invoke-static/range {p7 .. p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 211
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCreationOrientation:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    .line 212
    const v8, 0x7f03000e

    const/4 v9, 0x1

    invoke-virtual {v6, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 220
    :goto_0
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v8, :cond_3

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, background:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p7

    invoke-static {v0, v8}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 223
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    :goto_1
    const v8, 0x7f0a002a

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    .line 230
    const v8, 0x7f0a002e

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mDate:Landroid/widget/TextView;

    .line 231
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v8, :cond_0

    .line 233
    :try_start_0
    const-string v8, "/system/fonts/HelveticaNeueOTS.ttf"

    invoke-static {v8}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 234
    .local v5, fontFace:Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mDate:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v5           #fontFace:Landroid/graphics/Typeface;
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->refreshTimeAndDateDisplay()V

    .line 244
    const v8, 0x7f0a0029

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    .line 245
    const v8, 0x7f0a002f

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    .line 246
    const v8, 0x7f0a0030

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    .line 248
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->resetStatusInfo()V

    .line 251
    const v8, 0x7f0a0037

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 253
    const v8, 0x7f0a0032

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    .line 254
    const v8, 0x7f0a0034

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    .line 264
    new-instance v3, Lcom/htc/lockscreen/HtcPatternUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$2;-><init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    .line 272
    .local v3, emergencyClick:Landroid/view/View$OnClickListener;
    const v8, 0x7f0a0033

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    .line 273
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 274
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v8, 0x7f0a0036

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    .line 276
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 277
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 279
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->refreshEmergencyButtonText(I)V

    .line 287
    :goto_3
    const v8, 0x7f0a0035

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 288
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v9, 0x1040301

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 289
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v9, Lcom/htc/lockscreen/HtcPatternUnlockScreen$3;

    invoke-direct {v9, p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$3;-><init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 300
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 301
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 302
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v9, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Lcom/htc/lockscreen/HtcPatternUnlockScreen$1;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 305
    iget-object v9, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 308
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 311
    sget-object v8, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->Normal:Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;

    invoke-direct {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    .line 313
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 314
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 315
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 318
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 319
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v8

    iget-object v9, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateCarrier(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 334
    const v8, 0x7f0a0028

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 335
    .local v4, faceLockAreaView:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 336
    const v8, 0x102029e

    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    .line 338
    :cond_1
    return-void

    .line 214
    .end local v3           #emergencyClick:Landroid/view/View$OnClickListener;
    .end local v4           #faceLockAreaView:Landroid/view/View;
    :cond_2
    const v8, 0x7f03000d

    const/4 v9, 0x1

    invoke-virtual {v6, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 225
    :cond_3
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/lockscreen/app/ThemeHelper;->getThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    .line 226
    .local v7, theme:Landroid/content/Context;
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mContext:Landroid/content/Context;

    const-string v9, "common_glance_bkg"

    const v10, 0x20801c1

    invoke-static {v7, v8, v9, v10}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 237
    .end local v7           #theme:Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 238
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "UnlockScreen"

    const-string v9, "fail to set font"

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #emergencyClick:Landroid/view/View$OnClickListener;
    :cond_4
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    iget-object v8, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 305
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V

    return-void
.end method

.method static synthetic access$608(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/lockscreen/HtcPatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/htc/lockscreen/HtcPatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/lockscreen/HtcPatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/lockscreen/HtcPatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;

    return-object p1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 753
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 760
    .end local p0
    :goto_0
    return-object p0

    .line 755
    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 757
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object p0, p1

    .line 758
    goto :goto_0

    .line 760
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 660
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 662
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;-><init>(Lcom/htc/lockscreen/HtcPatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 687
    return-void
.end method

.method private refreshEmergencyButtonText(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 343
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 344
    return-void
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/lockscreen/app/util/ClockUtil;->updateDateTime(Landroid/content/Context;)V

    .line 448
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mDate:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/lockscreen/app/util/ClockUtil;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    return-void
.end method

.method private resetStatusInfo()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 354
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mPluggedIn:Z

    .line 355
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mBatteryLevel:I

    .line 356
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V

    .line 358
    return-void
.end method

.method private updateCarrier(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const v6, 0x20c0126

    .line 696
    const-string v1, ""

    .line 697
    .local v1, opName:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 698
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 699
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {p2}, Lcom/htc/lockscreen/app/util/MyUtil;->clearFrontEndSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 700
    invoke-static {p3}, Lcom/htc/lockscreen/app/util/MyUtil;->clearFrontEndSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 702
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-nez v3, :cond_0

    .line 703
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 727
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    return-void

    .line 710
    :cond_1
    if-nez p1, :cond_2

    .line 711
    invoke-static {p2, p3}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 713
    :cond_2
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 716
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 717
    const v3, 0x20c0128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 719
    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 720
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 723
    :cond_4
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 163
    sget-object v0, Lcom/htc/lockscreen/HtcPatternUnlockScreen$5;->$SwitchMap$com$htc$lockscreen$HtcPatternUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatusLines()V
    .locals 11

    .prologue
    const v10, 0x108001e

    const/16 v9, 0x64

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 361
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe()I

    move-result v0

    .line 362
    .local v0, MaximumFailedPasswordsForWipe:I
    if-lez v0, :cond_1

    .line 363
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v2, v3, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->updateHint(Landroid/widget/TextView;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v1

    .line 364
    .local v1, wipe:Z
    if-eqz v1, :cond_0

    .line 365
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 366
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 367
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    .end local v1           #wipe:Z
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 380
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 388
    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v3, 0x108001f

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 391
    :cond_3
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 393
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mPluggedIn:Z

    if-eqz v2, :cond_5

    .line 394
    iget v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mBatteryLevel:I

    if-lt v2, v9, :cond_4

    .line 395
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10402e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :goto_2
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v10, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 404
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 397
    :cond_4
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10402e6

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 400
    :cond_5
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 408
    :cond_6
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mShowingBatteryInfo:Z

    if-nez v2, :cond_7

    .line 410
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v3, 0x108002e

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 413
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 416
    :cond_7
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_9

    .line 418
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10402e8

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mBatteryLevel:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v3, 0x108002e

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 424
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mPluggedIn:Z

    if-eqz v2, :cond_8

    .line 425
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v10, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 430
    :goto_3
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 427
    :cond_8
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 435
    :cond_9
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v3, 0x10402e0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 436
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v3, 0x108001f

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 438
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 582
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 458
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLastPokeTime:J

    .line 463
    :cond_0
    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 520
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 525
    :cond_0
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 691
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 734
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v1

    .line 738
    :cond_1
    sget-boolean v0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->USE_EMERGENCYDIAL:Z

    if-eqz v0, :cond_0

    .line 739
    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v0}, Lcom/htc/lockscreen/widget/DialUtil;->placeCall()Z

    .line 742
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v0}, Lcom/htc/lockscreen/widget/DialUtil;->resetNumber()V

    goto :goto_0

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/widget/DialUtil;->onKey(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 528
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 541
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->refreshEmergencyButtonText(I)V

    .line 778
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 472
    iput-boolean p2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mPluggedIn:Z

    .line 473
    iput p3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mBatteryLevel:I

    .line 474
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateStatusLines()V

    .line 475
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 496
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateCarrier(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 546
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->resetNumber()V

    .line 549
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->resetStatusInfo()V

    .line 552
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 553
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 554
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 557
    iget-object v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 561
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 562
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 563
    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->handleAttemptLockout(J)V

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 568
    sget-object v2, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    .line 576
    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->refreshEmergencyButtonText(I)V

    .line 577
    return-void

    .line 557
    .end local v0           #deadline:J
    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    .line 569
    .restart local v0       #deadline:J
    :cond_2
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 571
    sget-object v2, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    goto :goto_1

    .line 573
    :cond_3
    sget-object v2, Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;->Normal:Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->updateFooter(Lcom/htc/lockscreen/HtcPatternUnlockScreen$FooterMode;)V

    goto :goto_1
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 490
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 505
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->refreshTimeAndDateDisplay()V

    .line 480
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 586
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 587
    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->onResume()V

    .line 590
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 591
    .local v0, config:Landroid/content/res/Configuration;
    const-string v1, "UnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged bFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCreationOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 595
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 598
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 347
    const-string v0, "UnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableFallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcPatternUnlockScreen;->mEnableFallback:Z

    .line 349
    return-void
.end method
