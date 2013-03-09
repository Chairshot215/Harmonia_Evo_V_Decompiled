.class public Lcom/android/phone/NetworkUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "NetworkUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkUnlockScreen$TouchInput;,
        Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final FAIL_RETRIES_BEFFORE_PENALITY:I = 0x3

.field private static final FAIL_RETRY_BASE_TIME:I = 0x7530

.field private static final NETWORK_LOCK_MAX_TYPE:I = 0x20

.field private static final NETWORK_LOCK_NETWORK:I = 0x1

.field private static final NETWORK_LOCK_NETWORK_SUBSET:I = 0x2

.field private static final NETWORK_LOCK_PIN_LENGTH:I = 0x8

.field private static final NETWORK_LOCK_SERVICE_CORPORATE:I = 0x8

.field private static final NETWORK_LOCK_SERVICE_IMSI:I = 0x10

.field private static final NETWORK_LOCK_SERVICE_PROVIDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NetworkUnlockScreen"


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mFinishingRebootDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHeaderText:Landroid/widget/TextView;

.field private mHtcContext:Landroid/content/Context;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field private mOkTextView:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mTextSize:F

.field private mTouchInput:Lcom/android/phone/NetworkUnlockScreen$TouchInput;

.field private mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mUnlockType:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/NetworkUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .locals 11
    .parameter "systemContext"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "thisContext"

    .prologue
    .line 136
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/16 v8, 0x8

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredPin:[I

    .line 122
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    .line 124
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 130
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mTextSize:F

    .line 137
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    .line 139
    iput-object p3, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 140
    iput-object p4, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 142
    iget v8, p2, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mCreationOrientation:I

    .line 143
    iget v8, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mKeyboardHidden:I

    .line 144
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    .line 149
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030040

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 150
    .local v3, contentView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/phone/NetworkUnlockScreen;->addView(Landroid/view/View;)V

    .line 154
    new-instance v8, Lcom/android/phone/NetworkUnlockScreen$TouchInput;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/phone/NetworkUnlockScreen$TouchInput;-><init>(Lcom/android/phone/NetworkUnlockScreen;Lcom/android/phone/NetworkUnlockScreen$1;)V

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mTouchInput:Lcom/android/phone/NetworkUnlockScreen$TouchInput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3           #contentView:Landroid/view/View;
    :cond_0
    :goto_0
    const v8, 0x202016b

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 163
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 164
    .local v5, header:Ljava/lang/CharSequence;
    const v8, 0x202016c

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mLockText:Landroid/widget/TextView;

    .line 165
    const v8, 0x2020169

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 166
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-nez v8, :cond_1

    .line 167
    const v8, 0x1020009

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 169
    :cond_1
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    sget-object v9, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 172
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 174
    const v8, 0x202016a

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 175
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v8, 0x2020001

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 177
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v9, 0x10402e1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 178
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v8, 0x202015d

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    .line 180
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 181
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    .line 185
    :goto_1
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    iput v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mTextSize:F

    .line 186
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v8, v9, :cond_5

    .line 189
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->processTitle()V

    .line 194
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/phone/NetworkUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 196
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getAvailableTimeStamp()J

    move-result-wide v1

    .line 197
    .local v1, availableTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 198
    .local v6, systemElapsedTime:J
    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    .line 199
    sub-long v8, v1, v6

    invoke-direct {p0, v8, v9}, Lcom/android/phone/NetworkUnlockScreen;->handleAttemptLockout(J)V

    .line 203
    :cond_2
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 210
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    :cond_3
    return-void

    .line 156
    .end local v1           #availableTime:J
    .end local v5           #header:Ljava/lang/CharSequence;
    .end local v6           #systemElapsedTime:J
    :catch_0
    move-exception v4

    .line 157
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "NetworkUnlockScreen"

    const-string v9, "Exception occured"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 183
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #header:Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    goto :goto_1

    .line 191
    :cond_5
    iget-object v8, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto :goto_2

    .line 121
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkUnlockScreen;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/NetworkUnlockScreen;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/phone/NetworkUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/NetworkUnlockScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mLockText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkUnlockScreen;->toggleButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->updateNetworkLockType()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->processFinishingRebootDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkUnlockScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkUnlockScreen;->showSuccessDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->processTitle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkUnlockScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkUnlockScreen;->showErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkNetworkUnlockPin()V
    .locals 4

    .prologue
    .line 352
    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0185

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkUnlockScreen;->showErrorDialog(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    .line 357
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 408
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->getNetworkUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 362
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 364
    .local v0, type:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/NetworkUnlockScreen$1;

    iget v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/phone/NetworkUnlockScreen$1;-><init>(Lcom/android/phone/NetworkUnlockScreen;ILjava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/phone/NetworkUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getNetworkUnlockProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 333
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 335
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0186

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 341
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 6
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v5, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mLockText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    invoke-direct {p0, v5}, Lcom/android/phone/NetworkUnlockScreen;->toggleButtonsEnabled(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mLockText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040300

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    new-instance v0, Lcom/android/phone/NetworkUnlockScreen$4;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/NetworkUnlockScreen$4;-><init>(Lcom/android/phone/NetworkUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/NetworkUnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 680
    return-void
.end method

.method private processFinishingRebootDialog()V
    .locals 5

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 685
    .local v1, needToReboot:Z
    const-string v2, "ro.emmc"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 686
    .local v0, emmcDevice:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 687
    :cond_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c0180

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0189

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/phone/NetworkUnlockScreen$5;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkUnlockScreen$5;-><init>(Lcom/android/phone/NetworkUnlockScreen;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mFinishingRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 697
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mFinishingRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 700
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mFinishingRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 703
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mFinishingRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 705
    :cond_1
    return-void
.end method

.method private processTitle()V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, headerText:Ljava/lang/CharSequence;
    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0180

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void

    .line 253
    :cond_1
    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0181

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0182

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_3
    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 258
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0183

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_4
    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 260
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0184

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_5
    const-string v1, "NetworkUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnlockType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is wrong!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 502
    iget v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_0
    iget v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private resizeFont()V
    .locals 9

    .prologue
    .line 823
    const/4 v8, 0x2

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 824
    .local v3, ids:[I
    const/16 v5, 0x14

    .line 826
    .local v5, padding:I
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget v2, v0, v1

    .line 827
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 828
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 830
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 831
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #view:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 835
    .local v6, tv:Landroid/widget/TextView;
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/phone/NetworkUnlockScreen;->resizeFont(Landroid/widget/TextView;)V

    .line 826
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v7       #view:Landroid/view/View;
    :cond_1
    move-object v6, v7

    .line 833
    check-cast v6, Landroid/widget/TextView;

    .restart local v6       #tv:Landroid/widget/TextView;
    goto :goto_1

    .line 838
    .end local v2           #id:I
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 823
    nop

    :array_0
    .array-data 0x4
        0x5dt 0x1t 0x2t 0x2t
        0x6et 0x1t 0x2t 0x2t
    .end array-data
.end method

.method private resizeFont(Landroid/widget/TextView;)V
    .locals 16
    .parameter "tv"

    .prologue
    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NetworkUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 843
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 844
    .local v8, paint:Landroid/text/TextPaint;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 845
    .local v10, text:Ljava/lang/CharSequence;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 846
    .local v4, len:I
    new-array v13, v4, [F

    .line 847
    .local v13, widths:[F
    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14, v4, v13}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 848
    const/4 v11, 0x0

    .line 849
    .local v11, textWidth:F
    const/16 v7, 0xa

    .line 850
    .local v7, padding:I
    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v14, v14, 0x3

    sub-int v2, v14, v7

    .line 852
    .local v2, buttonWidth:I
    move-object v1, v13

    .local v1, arr$:[F
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v12, v1, v3

    .line 853
    .local v12, width:F
    add-float/2addr v11, v12

    .line 852
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 855
    .end local v12           #width:F
    :cond_0
    int-to-float v14, v2

    cmpl-float v14, v11, v14

    if-lez v14, :cond_1

    .line 856
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    .line 857
    .local v9, size:F
    int-to-float v14, v2

    div-float/2addr v14, v11

    mul-float/2addr v9, v14

    .line 858
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 862
    .end local v9           #size:F
    :goto_1
    return-void

    .line 860
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/NetworkUnlockScreen;->mTextSize:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method public static retrieveLayoutFromDialer(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 728
    const/4 v5, 0x0

    .line 729
    .local v5, view:Landroid/view/View;
    const-string v2, "com.android.htcdialer"

    .line 732
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 733
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v6, "com.android.htcdialer"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 734
    .local v4, res:Landroid/content/res/Resources;
    const-string v6, "com.android.htcdialer"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 736
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v6, "layout"

    const-string v7, "com.android.htcdialer"

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 737
    .local v0, id:I
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 742
    .end local v0           #id:I
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 738
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 411
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 413
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 414
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 420
    :goto_0
    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/NetworkUnlockScreen$2;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkUnlockScreen$2;-><init>(Lcom/android/phone/NetworkUnlockScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 426
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 427
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 428
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 429
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 430
    return-void

    .line 417
    :cond_0
    const v1, 0x10400c9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method private showSuccessDialog(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 433
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 435
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 436
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c0188

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 438
    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/NetworkUnlockScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkUnlockScreen$3;-><init>(Lcom/android/phone/NetworkUnlockScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 444
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 445
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 446
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 447
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 448
    return-void
.end method

.method private toggleButtonsEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 652
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mTouchInput:Lcom/android/phone/NetworkUnlockScreen$TouchInput;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mTouchInput:Lcom/android/phone/NetworkUnlockScreen$TouchInput;

    invoke-virtual {v0, p1}, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->toggoleButtonsEnabled(Z)V

    .line 655
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 657
    return-void

    :cond_1
    move v0, v2

    .line 655
    goto :goto_0

    :cond_2
    move v1, v2

    .line 656
    goto :goto_1
.end method

.method private updateCurrentNetworkLockType(I)V
    .locals 2
    .parameter "networkLockType"

    .prologue
    .line 462
    if-lez p1, :cond_2

    .line 463
    const/4 v0, 0x1

    .local v0, typeMask:I
    :goto_0
    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 464
    and-int v1, p1, v0

    if-eqz v1, :cond_1

    .line 465
    and-int v1, p1, v0

    iput v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    .line 472
    .end local v0           #typeMask:I
    :cond_0
    :goto_1
    return-void

    .line 463
    .restart local v0       #typeMask:I
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v0           #typeMask:I
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockType:I

    goto :goto_1
.end method

.method private updateNetworkLockType()V
    .locals 2

    .prologue
    .line 452
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSubsidyLockTypes()I

    move-result v0

    .line 455
    .local v0, networkLockType:I
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 456
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkUnlockScreen;->updateCurrentNetworkLockType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v0           #networkLockType:I
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public applyCutomization(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 748
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    const v1, 0x2020080

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 751
    const v1, 0x202000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 752
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/view/View;)V
    .locals 11
    .parameter "contentView"

    .prologue
    const/high16 v10, 0x3f80

    .line 759
    invoke-virtual {p0}, Lcom/android/phone/NetworkUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/phone/PhoneUtils;->getSkinPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 761
    .local v4, themePackage:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/android/phone/NetworkUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/NetworkUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v8, v7}, Lcom/htc/util/phone/PhoneUtils;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 764
    .local v6, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 765
    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    .end local v6           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .line 762
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 771
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NetworkUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 772
    .local v2, res:Landroid/content/res/Resources;
    const v7, 0x202016a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 773
    .local v5, view:Landroid/view/View;
    const/4 v3, 0x0

    .line 775
    .local v3, resid:I
    const-string v7, "htc_btn_dial_delete"

    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 776
    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 777
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 780
    :cond_3
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v7

    if-nez v7, :cond_4

    .line 781
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5           #view:Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 782
    .restart local v5       #view:Landroid/view/View;
    const-string v7, "phone_accumulator_bg"

    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 784
    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 785
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 790
    :cond_4
    const v7, 0x2020001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 791
    .local v0, button:Landroid/widget/TextView;
    const-string v7, "common_button"

    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 792
    if-eqz v0, :cond_0

    .line 793
    if-nez v3, :cond_5

    .line 794
    const-string v7, "common_button"

    const-string v8, "drawable"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 796
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 798
    const v7, 0x20a0006

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 799
    .local v1, color:I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 800
    const v7, 0x20a0005

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 801
    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "NetworkUnlockScreen"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 319
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 320
    .local v1, len:I
    if-lez v1, :cond_0

    .line 321
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 322
    iget v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    .line 329
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 330
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->checkNetworkUnlockPin()V

    goto :goto_0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/phone/NetworkUnlockScreen;->updateConfiguration()V

    .line 538
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 724
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 877
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 475
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 498
    :cond_0
    :goto_0
    return v1

    .line 480
    :cond_1
    sget-object v2, Lcom/android/phone/NetworkUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 481
    .local v0, match:C
    if-eqz v0, :cond_2

    .line 482
    add-int/lit8 v2, v0, -0x30

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 485
    :cond_2
    const/16 v2, 0x43

    if-ne p1, v2, :cond_3

    .line 486
    iget v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 488
    iget v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 493
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_4

    .line 494
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->checkNetworkUnlockPin()V

    goto :goto_0

    .line 498
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 240
    iput-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 244
    iput-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 246
    :cond_1
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 867
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 709
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 721
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 712
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->updateNetworkLockType()V

    .line 224
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->processTitle()V

    .line 225
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    .line 234
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 715
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, -0x1

    .line 808
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkUnlockScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 809
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 810
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 811
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 812
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    invoke-direct {p0}, Lcom/android/phone/NetworkUnlockScreen;->resizeFont()V

    .line 819
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 820
    return-void
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/phone/NetworkUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 514
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/phone/NetworkUnlockScreen;->mCreationOrientation:I

    if-eq v3, v4, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 523
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iput v2, p0, Lcom/android/phone/NetworkUnlockScreen;->mEnteredDigits:I

    .line 525
    return-void

    .line 516
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p0, Lcom/android/phone/NetworkUnlockScreen;->mKeyboardHidden:I

    if-eq v3, v4, :cond_0

    .line 517
    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mKeyboardHidden:I

    .line 518
    iget v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mKeyboardHidden:I

    if-ne v3, v0, :cond_2

    .line 519
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .end local v0           #isKeyboardOpen:Z
    :cond_2
    move v0, v2

    .line 518
    goto :goto_1
.end method
