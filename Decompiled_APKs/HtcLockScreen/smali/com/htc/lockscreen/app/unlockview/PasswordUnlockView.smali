.class public Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;
.super Lcom/htc/lockscreen/app/unlockview/UnlockView;
.source "PasswordUnlockView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$7;,
        Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$MyKeyListener;,
        Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;
    }
.end annotation


# static fields
.field private static final REQUEST_FOCUS:I = 0x1

.field private static final REQUEST_UNLOCK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockView"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mEditFocused:Z

.field private mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

.field private mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFlyHeigh:I

.field private mFooterForgotPattern:Landroid/view/View;

.field private mFooterNormal:Landroid/view/View;

.field private mForgotButton:Landroid/widget/Button;

.field private mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

.field private mHandler:Landroid/os/Handler;

.field private mHint:Landroid/widget/TextView;

.field mIMEStateRecv:Landroid/content/BroadcastReceiver;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field mIsSipExist:Z

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mResume:Z

.field private mRetry:I

.field mTextChangeListener:Landroid/text/TextWatcher;

.field private mTitle:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I

.field private mVerifyOK:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 3
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct/range {p0 .. p5}, Lcom/htc/lockscreen/app/unlockview/UnlockView;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsAlpha:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEditFocused:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mResume:Z

    .line 75
    iput v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFlyHeigh:I

    .line 81
    iput v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 82
    iput v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    .line 340
    new-instance v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$1;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTextChangeListener:Landroid/text/TextWatcher;

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    .line 485
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsSipExist:Z

    .line 518
    iput v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mRetry:I

    .line 519
    new-instance v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$5;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/htc/lockscreen/widget/DialUtil;

    invoke-direct {v0, p1, v1}, Lcom/htc/lockscreen/widget/DialUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    .line 118
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mCreationHardKeyboardHidden:I

    .line 119
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mCreationOrientation:I

    .line 120
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 121
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    .line 122
    iget v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 124
    const-string v0, "PasswordUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Create mTotalFailedPatternAttempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mRetry:I

    return v0
.end method

.method static synthetic access$308(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mRetry:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 624
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;JJ)V

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 655
    return-void
.end method

.method private hideIMEAndKeyguardDone()V
    .locals 4

    .prologue
    .line 608
    const-string v0, "PasswordUnlockView"

    const-string v1, "hideIMEAndKeyguardDone"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsAlpha:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsSipExist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 611
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0
.end method

.method private initButton(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 375
    const v0, 0x7f0a0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    .line 377
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    :cond_0
    return-void
.end method

.method private initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V
    .locals 5
    .parameter "view"
    .parameter "mode"

    .prologue
    const v4, 0x7f09001e

    const v1, 0x7f0a0016

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 397
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    if-ne p2, v0, :cond_2

    .line 398
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    .line 402
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 406
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    .line 413
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    .line 427
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 431
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const v0, 0x7f0a0018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    .line 436
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 440
    const-string v0, "PasswordUnlockView"

    const-string v1, "lockscreen_forgot_pattern_button_text17040129"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$2;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$2;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 451
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    .line 452
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 460
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$3;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$3;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private makeEmergencyCall()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 658
    sget-boolean v3, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->USE_EMERGENCYDIAL:Z

    if-nez v3, :cond_1

    move v0, v2

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    const/4 v0, 0x0

    .line 662
    .local v0, bCall:Z
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, edit:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 665
    goto :goto_0

    .line 667
    :cond_2
    iget-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsAlpha:Z

    if-eqz v2, :cond_4

    .line 668
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/widget/DialUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 677
    .end local v1           #edit:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->resetNumber()V

    .line 678
    if-eqz v0, :cond_0

    .line 679
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 671
    .restart local v1       #edit:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->placeCall()Z

    move-result v0

    goto :goto_1
.end method

.method private updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 89
    const-string v0, "PasswordUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FooterMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$7;->$SwitchMap$com$htc$lockscreen$app$unlockview$PasswordUnlockView$FooterMode:[I

    invoke-virtual {p1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateHint()Z
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v1, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->updateHint(Landroid/widget/TextView;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v0

    .line 362
    .local v0, wipe:Z
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 368
    :cond_0
    return v0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 556
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, entry:Ljava/lang/String;
    const-string v5, "PasswordUnlockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyPasswordAndUnlock entry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 560
    iput-boolean v8, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    .line 561
    invoke-static {v3}, Lcom/htc/lockscreen/app/util/MyUtil;->unlockKeyStore(Ljava/lang/String;)V

    .line 562
    iget-boolean v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsAlpha:Z

    if-eqz v5, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->hideIMEAndKeyguardDone()V

    .line 568
    :goto_0
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 604
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 605
    return-void

    .line 566
    :cond_1
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_5

    .line 572
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 573
    iget v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    .line 574
    iget v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 575
    const-string v5, "PasswordUnlockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFailedPatternAttemptsSinceLastTimeout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateHint()Z

    move-result v2

    .line 578
    .local v2, delete:Z
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v5

    rem-int/lit8 v5, v5, 0x5

    if-nez v5, :cond_4

    .line 581
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 582
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->handleAttemptLockout(J)V

    .line 583
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->enableForgotPattern()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 586
    sget-object v5, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-direct {p0, v5}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_1

    .line 588
    :cond_3
    sget-object v5, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-direct {p0, v5}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_1

    .line 594
    .end local v0           #deadline:J
    :cond_4
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;

    const v6, 0x20c00db

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 596
    .end local v2           #delete:Z
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 598
    iget-object v6, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsAlpha:Z

    if-eqz v5, :cond_6

    const v5, 0x20c00dc

    :goto_2
    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, failStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 598
    .end local v4           #failStr:Ljava/lang/String;
    :cond_6
    const v5, 0x20c00dd

    goto :goto_2
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "PasswordUnlockView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->unregisterIME()V

    .line 254
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    return-void
.end method

.method public init()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 131
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 132
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_1

    .line 133
    const v3, 0x7f03000a

    invoke-virtual {v1, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, contentView:Landroid/view/View;
    :goto_0
    const v3, 0x7f0a0023

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    .line 142
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 143
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 144
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/lockscreen/app/ThemeHelper;->getThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 149
    .local v2, theme:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    const-string v5, "search_input_field_selector"

    const v6, 0x2080046

    invoke-static {v2, v4, v5, v6}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    const v3, 0x7f0a0022

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;

    .line 152
    const v3, 0x7f0a0024

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHint:Landroid/widget/TextView;

    .line 153
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateHint()Z

    .line 156
    const v3, 0x7f0a0015

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    .line 157
    const v3, 0x7f0a0017

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterForgotPattern:Landroid/view/View;

    .line 158
    sget-object v3, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-direct {p0, v3}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    .line 159
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v4, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$MyKeyListener;

    invoke-direct {v4, p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$MyKeyListener;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 173
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->registerIME()V

    .line 174
    const-string v3, "PasswordUnlockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init mPasswordEntry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v0

    .line 136
    .end local v0           #contentView:Landroid/view/View;
    .end local v2           #theme:Landroid/content/Context;
    :cond_1
    const v3, 0x7f030009

    invoke-virtual {v1, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #contentView:Landroid/view/View;
    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->makeEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 313
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 295
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, edit:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->verifyPasswordAndUnlock()V

    .line 300
    :cond_1
    const/4 v1, 0x1

    .line 302
    .end local v0           #edit:Ljava/lang/String;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    sget-boolean v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->USE_EMERGENCYDIAL:Z

    if-eqz v1, :cond_0

    .line 186
    const/16 v1, 0x42

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->makeEmergencyCall()Z

    move-result v0

    .line 189
    .local v0, ret:Z
    goto :goto_0

    .line 192
    .end local v0           #ret:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/widget/DialUtil;->onKey(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onKeyboardChanged(Z)Z
    .locals 1
    .parameter "show"

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout()V
    .locals 4

    .prologue
    .line 696
    iget v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFlyHeigh:I

    .line 698
    .local v0, height:I
    if-nez v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 704
    :goto_0
    iput v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFlyHeigh:I

    .line 707
    :cond_0
    const-string v1, "PasswordUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayout Height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFlyHeigh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->requestShowIME()V

    .line 709
    return-void

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    const-string v0, "PasswordUnlockView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 205
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 206
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 712
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 716
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 211
    const-string v2, "PasswordUnlockView"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput-boolean v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    .line 213
    iput v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mRetry:I

    .line 214
    iput-boolean v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEditFocused:Z

    .line 215
    iput-boolean v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mResume:Z

    .line 217
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->resetNumber()V

    .line 223
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTitle:Landroid/widget/TextView;

    const v3, 0x10402d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 235
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 236
    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->handleAttemptLockout(J)V

    .line 238
    :cond_2
    const-string v2, "PasswordUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTotalFailedPatternAttempts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->enableForgotPattern()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    sget-object v2, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_3
    sget-object v2, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "focus"

    .prologue
    .line 260
    const-string v0, "PasswordUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged focus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVerifyOK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSipExist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsSipExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-nez p1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 269
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsSipExist:Z

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->requestShowIME()V

    goto :goto_0
.end method

.method public registerIME()V
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 488
    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$4;-><init>(Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "HTC_IME_CURRENT_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, IMEfilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 507
    .end local v0           #IMEfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 318
    const-string v2, "PasswordUnlockView"

    const-string v3, "onRequestFocusInDescendants"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v1

    .line 320
    .local v1, bshow:Z
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isHidden()Z

    move-result v0

    .line 333
    .local v0, bhidden:Z
    iget-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEditFocused:Z

    if-eqz v2, :cond_0

    .line 334
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEditFocused:Z

    .line 335
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->requestShowIME()V

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method public requestShowIME()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 276
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v1

    .line 277
    .local v1, bshow:Z
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isHidden()Z

    move-result v0

    .line 278
    .local v0, bhidden:Z
    const-string v3, "PasswordUnlockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestShowIME bshow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bhidden:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mVerifyOK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mCreationHardKeyboardHidden:I

    if-eq v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIsAlpha:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mVerifyOK:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFlyHeigh:I

    if-lez v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v4, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mFlyHeigh:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    .line 288
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 289
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mEnableFallback:Z

    .line 693
    return-void
.end method

.method public unregisterIME()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;->mIMEStateRecv:Landroid/content/BroadcastReceiver;

    .line 514
    :cond_0
    return-void
.end method
