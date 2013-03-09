.class public Lcom/htc/lockscreen/app/unlockview/PinUnlockView;
.super Lcom/htc/lockscreen/app/unlockview/UnlockView;
.source "PinUnlockView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/LockPatternKeyguardView$IPatternUnlockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/unlockview/PinUnlockView$5;,
        Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PinUnlockView"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

.field private mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFooterForgotPattern:Landroid/view/View;

.field private mFooterNormal:Landroid/view/View;

.field private mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

.field private mHint:Landroid/widget/TextView;

.field private mIsAlpha:Z

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

.field mTextChangeListener:Landroid/text/TextWatcher;

.field private mTitle:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/htc/lockscreen/app/unlockview/UnlockView;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 54
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mIsAlpha:Z

    .line 66
    iput v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 67
    iput v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    .line 323
    new-instance v3, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;

    invoke-direct {v3, p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;-><init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)V

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTextChangeListener:Landroid/text/TextWatcher;

    .line 103
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 104
    .local v1, quality:I
    const/high16 v3, 0x4

    if-eq v3, v1, :cond_0

    const/high16 v3, 0x5

    if-ne v3, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 106
    .local v0, isAlpha:Z
    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mIsAlpha:Z

    .line 107
    new-instance v3, Lcom/htc/lockscreen/widget/DialUtil;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/lockscreen/widget/DialUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    .line 108
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mCreationHardKeyboardHidden:I

    .line 109
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mCreationOrientation:I

    .line 110
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    .line 111
    iget v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    rem-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 113
    const-string v2, "PinUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on Create mTotalFailedPatternAttempts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .end local v0           #isAlpha:Z
    :cond_1
    move v0, v2

    .line 104
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setEnabled(Z)V

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 382
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;-><init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;JJ)V

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 414
    return-void
.end method

.method private initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V
    .locals 7
    .parameter "view"
    .parameter "mode"

    .prologue
    const v6, 0x7f09001e

    const v5, 0x7f0a0016

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 239
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    if-ne p2, v0, :cond_2

    .line 241
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    .line 244
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 248
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    .line 254
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    .line 266
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 270
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const v0, 0x7f0a0018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    .line 275
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 278
    const-string v0, "PinUnlockView"

    const-string v1, "lockscreen_forgot_pattern_button_text17040129"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$1;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$1;-><init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    .line 289
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$2;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$2;-><init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mForgotPatternButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private makeEmergencyCall()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 417
    sget-boolean v3, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->USE_EMERGENCYDIAL:Z

    if-nez v3, :cond_1

    move v0, v2

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    const/4 v0, 0x0

    .line 421
    .local v0, bCall:Z
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, edit:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 424
    goto :goto_0

    .line 426
    :cond_2
    iget-boolean v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mIsAlpha:Z

    if-eqz v2, :cond_4

    .line 427
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/htc/lockscreen/widget/DialUtil;->placeCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 436
    .end local v1           #edit:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->resetNumber()V

    .line 437
    if-eqz v0, :cond_0

    .line 438
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 430
    .restart local v1       #edit:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->placeCall()Z

    move-result v0

    goto :goto_1
.end method

.method private updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 75
    const-string v0, "PinUnlockView"

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

    .line 76
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$5;->$SwitchMap$com$htc$lockscreen$app$unlockview$PinUnlockView$FooterMode:[I

    invoke-virtual {p1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterNormal:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterForgotPattern:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->initButton(Landroid/view/View;Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateHint()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v1, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->updateHint(Landroid/widget/TextView;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v0

    .line 344
    .local v0, wipe:Z
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v1, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setEnabled(Z)V

    .line 351
    :cond_0
    return v0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 464
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, entry:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    invoke-static {v3}, Lcom/htc/lockscreen/app/util/MyUtil;->unlockKeyStore(Ljava/lang/String;)V

    .line 468
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 469
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 509
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    return-void

    .line 471
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 474
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 477
    iget v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    .line 478
    iget v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 479
    const-string v5, "PinUnlockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTotalFailedPatternAttempts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateHint()Z

    move-result v2

    .line 482
    .local v2, deleteData:Z
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v5

    rem-int/lit8 v5, v5, 0x5

    if-nez v5, :cond_3

    .line 485
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 486
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->handleAttemptLockout(J)V

    .line 487
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFailedPatternAttemptsSinceLastTimeout:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_2

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->enableForgotPattern()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 490
    sget-object v5, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-direct {p0, v5}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0

    .line 492
    :cond_2
    sget-object v5, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-direct {p0, v5}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0

    .line 498
    .end local v0           #deadline:J
    :cond_3
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;

    const v6, 0x20c00db

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 501
    .end local v2           #deleteData:Z
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 503
    iget-object v6, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mIsAlpha:Z

    if-eqz v5, :cond_5

    const v5, 0x20c00dc

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, failStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 503
    .end local v4           #failStr:Ljava/lang/String;
    :cond_5
    const v5, 0x20c00dd

    goto :goto_1
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public init()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 126
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 127
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v9, :cond_2

    .line 128
    const v3, 0x7f03000c

    invoke-virtual {v1, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, contentView:Landroid/view/View;
    :goto_0
    const v3, 0x7f0a0023

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    .line 136
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 137
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {v7, v7}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 141
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/lockscreen/app/ThemeHelper;->getThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 142
    .local v2, theme:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    const-string v5, "search_input_field_selector"

    const v6, 0x2080046

    invoke-static {v2, v4, v5, v6}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const v3, 0x7f0a0025

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    .line 145
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setTargetView(Landroid/view/View;)V

    .line 146
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v3}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate()V

    .line 148
    const v3, 0x7f0a0022

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;

    .line 150
    const v3, 0x7f0a0024

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mHint:Landroid/widget/TextView;

    .line 151
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateHint()Z

    .line 153
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 154
    const v3, 0x7f0a0015

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterNormal:Landroid/view/View;

    .line 155
    const v3, 0x7f0a0017

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mFooterForgotPattern:Landroid/view/View;

    .line 156
    sget-object v3, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-direct {p0, v3}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    .line 157
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v5

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 177
    :cond_0
    iget v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mCreationHardKeyboardHidden:I

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_3

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    .line 184
    :goto_1
    return-object v0

    .line 131
    .end local v0           #contentView:Landroid/view/View;
    .end local v2           #theme:Landroid/content/Context;
    :cond_2
    const v3, 0x7f03000b

    invoke-virtual {v1, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #contentView:Landroid/view/View;
    goto/16 :goto_0

    .line 182
    .restart local v2       #theme:Landroid/content/Context;
    :cond_3
    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPinkeyboard:Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;

    invoke-virtual {v3, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    if-ne p1, v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->makeEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 374
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 356
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, edit:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->verifyPasswordAndUnlock()V

    .line 361
    :cond_1
    const/4 v1, 0x1

    .line 363
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

    .line 446
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    if-nez v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    sget-boolean v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->USE_EMERGENCYDIAL:Z

    if-eqz v1, :cond_0

    .line 451
    const/16 v1, 0x42

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 453
    :cond_2
    invoke-direct {p0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->makeEmergencyCall()Z

    move-result v0

    .line 454
    .local v0, ret:Z
    goto :goto_0

    .line 457
    .end local v0           #ret:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/widget/DialUtil;->onKey(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onKeyboardChanged(Z)Z
    .locals 1
    .parameter "show"

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    const-string v0, "PinUnlockView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 192
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 531
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 535
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 197
    const-string v2, "PinUnlockView"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergenctyDial:Lcom/htc/lockscreen/widget/DialUtil;

    invoke-virtual {v2}, Lcom/htc/lockscreen/widget/DialUtil;->resetNumber()V

    .line 200
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTitle:Landroid/widget/TextView;

    const v3, 0x10402d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEmergencyCallButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v4, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 211
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->handleAttemptLockout(J)V

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->enableForgotPattern()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    sget-object v2, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_3
    sget-object v2, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->updateFooter(Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 234
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mEnableFallback:Z

    .line 528
    return-void
.end method
