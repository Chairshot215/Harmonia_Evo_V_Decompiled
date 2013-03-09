.class public Lcom/android/phone/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimUnlockScreen$TouchInput;,
        Lcom/android/phone/SimUnlockScreen$UnblockSimPin;,
        Lcom/android/phone/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

#the value of this static final field might be set in the static constructor
.field private static final IS_ESP:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_TMOUS:Z = false

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final SHOW_UNBLOCK_ERROR_CHECK_PIN:I = 0x1

.field private static final SHOW_UNBLOCK_ERROR_CHECK_PUK:I = 0x2

.field private static final SHOW_UNBLOCK_ERROR_DEFAULT:I = 0x0

.field private static final SIM_CONFIRM_NEW_PIN:I = 0x2

.field private static final SIM_NEW_PIN:I = 0x1

.field private static final SIM_PUK_REQUIRED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimUnlockScreen"


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mCurrentHintTextColor:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mErrorProtection:Z

.field private mHeaderHintText:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mHtcContext:Landroid/content/Context;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPin:Ljava/lang/String;

.field private mOkButton:Landroid/view/View;

.field private mOkText:Ljava/lang/String;

.field private mOkTextView:Landroid/widget/TextView;

.field private mPUK:Ljava/lang/String;

.field private mPinText:Landroid/widget/TextView;

.field private mPreviousPukRetry:I

.field private mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mTextSize:F

.field private mUnblockPinState:I

.field private mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/SimUnlockScreen;->IS_ESP:Z

    .line 103
    sget-boolean v0, Lcom/android/phone/SimUnlockScreen;->IS_ESP:Z

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/phone/SimUnlockScreen;->IS_TMOUS:Z

    .line 157
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SimUnlockScreen;->DIGITS:[C

    return-void

    :cond_2
    move v0, v2

    .line 100
    goto :goto_0

    .line 157
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
    .locals 9
    .parameter "systemContext"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "thisContext"

    .prologue
    .line 174
    invoke-direct {p0, p6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredPin:[I

    .line 147
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 149
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 168
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mTextSize:F

    .line 176
    iput-object p6, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 179
    iput-object p4, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 181
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mCreationOrientation:I

    .line 182
    iget v5, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mKeyboardHidden:I

    .line 183
    iput-object p5, p0, Lcom/android/phone/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 187
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    .line 188
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030040

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/phone/SimUnlockScreen;->addView(Landroid/view/View;)V

    .line 191
    new-instance v5, Lcom/android/phone/SimUnlockScreen$TouchInput;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/SimUnlockScreen$TouchInput;-><init>(Lcom/android/phone/SimUnlockScreen;Lcom/android/phone/SimUnlockScreen$1;)V

    .line 193
    :cond_0
    const v5, 0x2020001

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0           #contentView:Landroid/view/View;
    :goto_0
    const v5, 0x202016b

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 219
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    .local v2, header:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->alternativeECCWay()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    const v5, 0x202016d

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    .line 225
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mCurrentHintTextColor:I

    .line 226
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :cond_1
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-nez v5, :cond_2

    .line 229
    const v5, 0x1020009

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 231
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 233
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 236
    const v5, 0x202016e

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 242
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v6, 0x10402e1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget v5, p0, Lcom/android/phone/SimUnlockScreen;->mCreationOrientation:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 246
    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "cmd_bar_btn_2"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 247
    .local v4, resid:I
    if-eqz v4, :cond_3

    .line 248
    invoke-virtual {p0, v4}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    .line 254
    .end local v4           #resid:I
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    if-nez v5, :cond_4

    .line 255
    const v5, 0x202015d

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    .line 259
    :cond_4
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_a

    .line 260
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    .line 265
    :goto_3
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mTextSize:F

    .line 269
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->alternativeECCWay()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 271
    :cond_5
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_6

    .line 272
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    :cond_6
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v6, :cond_b

    .line 282
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x10402d2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 299
    :goto_4
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 301
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 307
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 311
    return-void

    .line 194
    .end local v2           #header:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SimUnlockScreen"

    const-string v6, "Exception occured"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/SimUnlockScreen;->mErrorProtection:Z

    .line 197
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    .line 199
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 200
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/phone/SimUnlockScreen;->mKeyboardHidden:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 201
    const v5, 0x1090050

    const/4 v6, 0x1

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 203
    :cond_7
    const v5, 0x1090051

    const/4 v6, 0x1

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 204
    new-instance v5, Lcom/android/phone/SimUnlockScreen$TouchInput;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/SimUnlockScreen$TouchInput;-><init>(Lcom/android/phone/SimUnlockScreen;Lcom/android/phone/SimUnlockScreen$1;)V

    goto/16 :goto_0

    .line 238
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #header:Ljava/lang/CharSequence;
    :cond_8
    const v5, 0x202016a

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    goto/16 :goto_1

    .line 251
    :cond_9
    const v5, 0x202015d

    invoke-virtual {p0, v5}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    goto/16 :goto_2

    .line 262
    :cond_a
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    goto/16 :goto_3

    .line 283
    :cond_b
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v6, :cond_c

    .line 284
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->resetPukInfo()V

    .line 285
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    goto :goto_4

    .line 287
    :cond_c
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto/16 :goto_4

    .line 146
    nop

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

.method static synthetic access$100(Lcom/android/phone/SimUnlockScreen;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/SimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/SimUnlockScreen;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/phone/SimUnlockScreen;->showUnblockErrorDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/phone/SimUnlockScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/phone/SimUnlockScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/phone/SimUnlockScreen;->IS_ESP:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/phone/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimUnlockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->updateDetailSimStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/SimUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->resetPukInfo()V

    return-void
.end method

.method private alternativeECCWay()Z
    .locals 2

    .prologue
    .line 315
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPUK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 780
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/phone/SimUnlockScreen;->mPreviousPukRetry:I

    .line 782
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 783
    new-instance v0, Lcom/android/phone/SimUnlockScreen$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/SimUnlockScreen$2;-><init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/SimUnlockScreen$2;->start()V

    .line 812
    return-void
.end method

.method private checkPin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 698
    iget v0, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->showErrorDialog()V

    .line 704
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iput v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 706
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 771
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 710
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 711
    new-instance v0, Lcom/android/phone/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SimUnlockScreen$1;-><init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/SimUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getResourcesString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "resName"
    .parameter "retry"

    .prologue
    .line 1391
    const-string v0, "com.android.phone"

    .line 1393
    .local v0, packageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1395
    .local v3, resId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1396
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v4, "com.android.phone"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1397
    .local v2, res:Landroid/content/res/Resources;
    const-string v4, "string"

    const-string v5, "com.android.phone"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1398
    if-lez v3, :cond_1

    .line 1399
    if-ltz p2, :cond_0

    .line 1400
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1408
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v4

    .line 1402
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1405
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 1408
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 661
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 666
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040549

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 685
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0

    .line 671
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040548

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10402f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private processEmergencyDailStatus()V
    .locals 3

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->alternativeECCWay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c01c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1060
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/SimUnlockScreen;->mCurrentHintTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private processPUKTitle()V
    .locals 12

    .prologue
    const v11, 0x20c0124

    const/4 v7, -0x1

    const/4 v10, 0x1

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, headerText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 406
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    if-nez v5, :cond_5

    .line 408
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v5

    aget v2, v5, v10

    .line 409
    .local v2, pukRetry:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v5, "keyguard_password_enter_puk_code_with_counter_verizon"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, tempStr:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    if-le v2, v10, :cond_3

    .line 415
    const-string v5, "keyguard_password_times_left_verizon"

    invoke-direct {p0, v5, v2}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 419
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #tempStr:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .end local v2           #pukRetry:I
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 445
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_1
    if-eqz v0, :cond_2

    .line 449
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_2
    return-void

    .line 417
    .restart local v2       #pukRetry:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    .restart local v4       #tempStr:Ljava/lang/String;
    :cond_3
    const-string v5, "keyguard_password_time_left_verizon"

    invoke-direct {p0, v5, v2}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 422
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #tempStr:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v6, 0x20c0115

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 427
    .end local v2           #pukRetry:I
    :cond_5
    iget v5, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    if-ne v5, v10, :cond_7

    .line 428
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 429
    const-string v5, "keyguard_password_enter_new_pin_code_verizon"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 433
    :goto_3
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 431
    :cond_6
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v6, 0x20c0116

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 434
    :cond_7
    iget v5, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 435
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 436
    const-string v5, "keyguard_password_enter_confirm_pin_code_verizon"

    invoke-direct {p0, v5, v7}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 440
    :goto_4
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 438
    :cond_8
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v6, 0x20c0117

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 1033
    iget v0, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    :cond_0
    iget v0, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1045
    :goto_0
    return-void

    .line 1039
    :cond_1
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportDigit:  digit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1042
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processEmergencyDailStatus()V

    .line 1044
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private resetPukInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iput v2, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPUK:Ljava/lang/String;

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mNewPin:Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iput v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 552
    return-void
.end method

.method private resizeFont()V
    .locals 9

    .prologue
    .line 1348
    const/4 v8, 0x2

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1349
    .local v3, ids:[I
    const/16 v5, 0x14

    .line 1351
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

    .line 1352
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/phone/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1353
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 1355
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 1356
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #view:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1360
    .local v6, tv:Landroid/widget/TextView;
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/phone/SimUnlockScreen;->resizeFont(Landroid/widget/TextView;)V

    .line 1351
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v7       #view:Landroid/view/View;
    :cond_1
    move-object v6, v7

    .line 1358
    check-cast v6, Landroid/widget/TextView;

    .restart local v6       #tv:Landroid/widget/TextView;
    goto :goto_1

    .line 1363
    .end local v2           #id:I
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 1348
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
    .line 1367
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1368
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 1369
    .local v8, paint:Landroid/text/TextPaint;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1370
    .local v10, text:Ljava/lang/CharSequence;
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1371
    .local v4, len:I
    new-array v13, v4, [F

    .line 1372
    .local v13, widths:[F
    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14, v4, v13}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 1373
    const/4 v11, 0x0

    .line 1374
    .local v11, textWidth:F
    const/16 v7, 0xa

    .line 1375
    .local v7, padding:I
    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v14, v14, 0x3

    sub-int v2, v14, v7

    .line 1377
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

    .line 1378
    .local v12, width:F
    add-float/2addr v11, v12

    .line 1377
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    .end local v12           #width:F
    :cond_0
    int-to-float v14, v2

    cmpl-float v14, v11, v14

    if-lez v14, :cond_1

    .line 1381
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    .line 1382
    .local v9, size:F
    int-to-float v14, v2

    div-float/2addr v14, v11

    mul-float/2addr v9, v14

    .line 1383
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1387
    .end local v9           #size:F
    :goto_1
    return-void

    .line 1385
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/SimUnlockScreen;->mTextSize:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method public static retrieveLayoutFromDialer(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 1246
    const/4 v5, 0x0

    .line 1247
    .local v5, view:Landroid/view/View;
    const-string v2, "com.android.htcdialer"

    .line 1250
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1251
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v6, "com.android.htcdialer"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 1252
    .local v4, res:Landroid/content/res/Resources;
    const-string v6, "com.android.htcdialer"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1254
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v6, "layout"

    const-string v7, "com.android.htcdialer"

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1255
    .local v0, id:I
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1260
    .end local v0           #id:I
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 1256
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private showErrorDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x10400ce

    .line 816
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 817
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 818
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_2

    .line 820
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x104054c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 832
    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 866
    :goto_1
    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SimUnlockScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/SimUnlockScreen$3;-><init>(Lcom/android/phone/SimUnlockScreen;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 872
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 873
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 874
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 875
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 876
    return-void

    .line 824
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x104054d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c011e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 836
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 838
    const v1, 0x104054a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 848
    :goto_2
    iget v1, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    if-nez v1, :cond_6

    .line 849
    iget v1, p0, Lcom/android/phone/SimUnlockScreen;->mPreviousPukRetry:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/phone/SimUnlockScreen;->mPreviousPukRetry:I

    iget-object v2, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v2

    aget v2, v2, v4

    if-ne v1, v2, :cond_5

    .line 852
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 840
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 842
    const v1, 0x104054b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_2

    .line 846
    :cond_4
    const v1, 0x10402f6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_2

    .line 855
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v2, 0x20c010f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_1

    .line 859
    :cond_6
    iget v1, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    if-ne v1, v4, :cond_7

    .line 860
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_1

    .line 862
    :cond_7
    const v1, 0x10400cd

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_1
.end method

.method private showUnblockErrorDialog(I)V
    .locals 14
    .parameter "wherefrom"

    .prologue
    const v13, 0x20c011b

    const v12, 0x10402d9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 881
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    .line 884
    .local v4, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v7

    if-nez v7, :cond_2

    .line 885
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v7

    aget v7, v7, v11

    if-nez v7, :cond_0

    if-eq p1, v9, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v7

    aget v7, v7, v9

    if-nez v7, :cond_2

    const/4 v7, 0x2

    if-ne p1, v7, :cond_2

    .line 989
    :cond_1
    :goto_0
    return-void

    .line 893
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 894
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v7, 0x1080027

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 895
    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v7, :cond_9

    .line 896
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v7

    aget v1, v7, v11

    .line 898
    .local v1, pinRetryCount:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_WORDING_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 900
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x104054c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 910
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 913
    if-nez v1, :cond_5

    if-ne p1, v9, :cond_5

    .line 914
    const-string v7, "sim_pin_locked_message"

    invoke-direct {p0, v7, v10}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 915
    .local v5, tempStr:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .end local v5           #tempStr:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 978
    .end local v1           #pinRetryCount:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .local v6, tmpStr:Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 979
    const v7, 0x1040013

    new-instance v8, Lcom/android/phone/SimUnlockScreen$4;

    invoke-direct {v8, p0}, Lcom/android/phone/SimUnlockScreen$4;-><init>(Lcom/android/phone/SimUnlockScreen;)V

    invoke-virtual {v0, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 985
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 986
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 987
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 988
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 902
    .end local v6           #tmpStr:Ljava/lang/String;
    .restart local v1       #pinRetryCount:I
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isAsiaCHSOpenChannel()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 904
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x104054d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 908
    :cond_4
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c011e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 917
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_5
    const-string v7, "keyguard_password_wrong_pin_code_with_counter_verizon"

    invoke-direct {p0, v7, v10}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 918
    .restart local v5       #tempStr:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    if-le v1, v9, :cond_6

    .line 922
    const-string v7, "keyguard_password_times_left_verizon_error"

    invoke-direct {p0, v7, v1}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 926
    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 924
    :cond_6
    const-string v7, "keyguard_password_time_left_verizon_error"

    invoke-direct {p0, v7, v1}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 929
    .end local v5           #tempStr:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    if-le v1, v9, :cond_8

    .line 932
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c011c

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 934
    :cond_8
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v13, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 939
    .end local v1           #pinRetryCount:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v7, :cond_e

    .line 940
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v7

    aget v2, v7, v9

    .line 941
    .local v2, pukRetryCount:I
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c0120

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 947
    const-string v7, "keyguard_password_wrong_puk_code_with_counter_verizon"

    invoke-direct {p0, v7, v10}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 948
    .restart local v5       #tempStr:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    if-le v2, v9, :cond_a

    .line 951
    const-string v7, "keyguard_password_times_left_verizon_error"

    invoke-direct {p0, v7, v2}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 955
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .end local v5           #tempStr:Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 974
    .restart local v6       #tmpStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 953
    .end local v6           #tmpStr:Ljava/lang/String;
    .restart local v5       #tempStr:Ljava/lang/String;
    :cond_a
    const-string v7, "keyguard_password_time_left_verizon_error"

    invoke-direct {p0, v7, v2}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 957
    .end local v5           #tempStr:Ljava/lang/String;
    :cond_b
    iget v7, p0, Lcom/android/phone/SimUnlockScreen;->mPreviousPukRetry:I

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/android/phone/SimUnlockScreen;->mPreviousPukRetry:I

    if-ne v7, v2, :cond_c

    .line 960
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    :goto_7
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    if-le v2, v9, :cond_d

    .line 967
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c011c

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 962
    :cond_c
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c0119

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 969
    :cond_d
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v13, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 975
    .end local v2           #pukRetryCount:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_e
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c011d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 976
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v8, 0x20c0121

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #tmpStr:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private updateDetailSimStatus()V
    .locals 4

    .prologue
    .line 993
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDetailIccStatus()[I

    move-result-object v0

    .line 996
    .local v0, IccDeatilStatus:[I
    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v0           #IccDeatilStatus:[I
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 556
    if-eqz p2, :cond_1

    move v0, v1

    .line 559
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 560
    :cond_0
    const/4 v1, 0x0

    .line 562
    :goto_1
    return v1

    .line 556
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 562
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public applyCutomization(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 1266
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    const v1, 0x2020080

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1268
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 1269
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1270
    const v1, 0x202000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/view/View;)V
    .locals 11
    .parameter "contentView"

    .prologue
    const/high16 v10, 0x3f80

    .line 1279
    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/phone/PhoneUtils;->getSkinPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1281
    .local v4, themePackage:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1282
    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

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

    .line 1284
    .local v6, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 1285
    invoke-virtual {p0, v6}, Lcom/android/phone/SimUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1328
    .end local v6           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .line 1282
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1291
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1292
    .local v2, res:Landroid/content/res/Resources;
    const v7, 0x202016a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1293
    .local v5, view:Landroid/view/View;
    const/4 v3, 0x0

    .line 1295
    .local v3, resid:I
    const-string v7, "htc_btn_dial_delete"

    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1296
    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 1297
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1300
    :cond_3
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1301
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5           #view:Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .line 1302
    .restart local v5       #view:Landroid/view/View;
    const-string v7, "phone_accumulator_bg"

    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1304
    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 1305
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1310
    :cond_4
    const v7, 0x2020001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1311
    .local v0, button:Landroid/widget/TextView;
    const-string v7, "common_button"

    const-string v8, "drawable"

    invoke-virtual {v2, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1312
    if-eqz v0, :cond_0

    .line 1314
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isDoubleShotTMO()Z

    move-result v7

    if-nez v7, :cond_0

    const-wide/high16 v7, 0x400c

    invoke-static {v7, v8}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1317
    if-nez v3, :cond_5

    .line 1318
    const-string v7, "common_button"

    const-string v8, "drawable"

    const-string v9, "com.htc"

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1320
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1321
    const v7, 0x20a0006

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1322
    .local v1, color:I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1323
    const v7, 0x20a0005

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1324
    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_1
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "SimUnlockScreen"

    const-string v1, "hide@cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mSimUnlockProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 568
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v7, :cond_2

    .line 569
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 570
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 571
    .local v3, len:I
    if-lez v3, :cond_0

    .line 572
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v0, v5, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 573
    iget v5, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 575
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processEmergencyDailStatus()V

    .line 656
    .end local v0           #digits:Landroid/text/Editable;
    .end local v3           #len:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 658
    :cond_1
    :goto_1
    return-void

    .line 581
    :cond_2
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_3

    .line 584
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    .line 588
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SimUnlockScreen"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 591
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v7, :cond_0

    .line 595
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 596
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->dialEmergencyCall(Ljava/lang/String;)V

    .line 597
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    .line 599
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iput v6, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 601
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 602
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 603
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/SimUnlockScreen;->mCurrentHintTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 608
    :cond_4
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_5

    .line 609
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 610
    :cond_5
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_9

    .line 611
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 612
    .local v4, str:Ljava/lang/String;
    iget v7, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    if-nez v7, :cond_6

    move v2, v5

    .line 613
    .local v2, isPUK:Z
    :goto_2
    invoke-direct {p0, v4, v2}, Lcom/android/phone/SimUnlockScreen;->validatePin(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 614
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iput v6, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 616
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->showErrorDialog()V

    .line 618
    iget v6, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    if-ne v6, v9, :cond_1

    .line 619
    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    .line 620
    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mNewPin:Ljava/lang/String;

    .line 621
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    goto/16 :goto_1

    .end local v2           #isPUK:Z
    :cond_6
    move v2, v6

    .line 612
    goto :goto_2

    .line 625
    .restart local v2       #isPUK:Z
    :cond_7
    iget v7, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    packed-switch v7, :pswitch_data_0

    .line 648
    :goto_3
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iput v6, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    goto/16 :goto_0

    .line 627
    :pswitch_0
    iput-object v4, p0, Lcom/android/phone/SimUnlockScreen;->mPUK:Ljava/lang/String;

    .line 628
    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    .line 629
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    goto :goto_3

    .line 632
    :pswitch_1
    iput-object v4, p0, Lcom/android/phone/SimUnlockScreen;->mNewPin:Ljava/lang/String;

    .line 633
    iput v9, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    .line 634
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    goto :goto_3

    .line 637
    :pswitch_2
    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mNewPin:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 638
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mPUK:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/android/phone/SimUnlockScreen;->checkPUK(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->resetPukInfo()V

    goto :goto_3

    .line 641
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->showErrorDialog()V

    .line 642
    iput v5, p0, Lcom/android/phone/SimUnlockScreen;->mUnblockPinState:I

    .line 643
    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mNewPin:Ljava/lang/String;

    .line 644
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    goto :goto_3

    .line 651
    .end local v2           #isPUK:Z
    .end local v4           #str:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto/16 :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1433
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1097
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1098
    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->updateConfiguration()V

    .line 1099
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 1242
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1438
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1003
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 1029
    :cond_0
    :goto_0
    return v1

    .line 1008
    :cond_1
    sget-object v2, Lcom/android/phone/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 1009
    .local v0, match:C
    if-eqz v0, :cond_2

    .line 1010
    add-int/lit8 v2, v0, -0x30

    invoke-direct {p0, v2}, Lcom/android/phone/SimUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 1013
    :cond_2
    const/16 v2, 0x43

    if-ne p1, v2, :cond_3

    .line 1014
    iget v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1016
    iget v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 1018
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processEmergencyDailStatus()V

    goto :goto_0

    .line 1024
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_4

    .line 1025
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 1029
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 335
    iput-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 339
    iput-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 342
    :cond_1
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .parameter "phoneState"

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 1416
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->alternativeECCWay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1221
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "serviceStatus"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1237
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1225
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 352
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->updateDetailSimStatus()V

    .line 353
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_3

    .line 357
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v3

    aget v0, v3, v8

    .line 359
    .local v0, pinRetry:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "keyguard_password_enter_pin_code_with_counter_verizon"

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, tempStr:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    if-le v0, v6, :cond_1

    .line 364
    const-string v3, "keyguard_password_times_left_verizon"

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 368
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .end local v0           #pinRetry:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #tempStr:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mOkTextView:Landroid/widget/TextView;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :goto_2
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iput v8, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 389
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    const-string v3, ""

    iput-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mOkText:Ljava/lang/String;

    .line 391
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 392
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderHintText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/phone/SimUnlockScreen;->mCurrentHintTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    :cond_0
    return-void

    .line 366
    .restart local v0       #pinRetry:I
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    .restart local v2       #tempStr:Ljava/lang/String;
    :cond_1
    const-string v3, "keyguard_password_time_left_verizon"

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SimUnlockScreen;->getResourcesString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 372
    .end local v0           #pinRetry:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #tempStr:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/SimUnlockScreen;->mHtcContext:Landroid/content/Context;

    const v5, 0x20c0113

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v7

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_4

    .line 379
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->resetPukInfo()V

    .line 380
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->processPUKTitle()V

    goto :goto_2

    .line 382
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto :goto_2
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1229
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1233
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, -0x1

    .line 1332
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/SimUnlockScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1333
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1334
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1335
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1336
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    invoke-direct {p0}, Lcom/android/phone/SimUnlockScreen;->resizeFont()V

    .line 1343
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 1344
    return-void
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/android/phone/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1073
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/phone/SimUnlockScreen;->mCreationOrientation:I

    if-eq v3, v4, :cond_1

    .line 1074
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1082
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iput v2, p0, Lcom/android/phone/SimUnlockScreen;->mEnteredDigits:I

    .line 1084
    return-void

    .line 1075
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p0, Lcom/android/phone/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v3, v4, :cond_0

    .line 1076
    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Lcom/android/phone/SimUnlockScreen;->mKeyboardHidden:I

    .line 1077
    iget v3, p0, Lcom/android/phone/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v3, v0, :cond_2

    .line 1078
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .end local v0           #isKeyboardOpen:Z
    :cond_2
    move v0, v2

    .line 1077
    goto :goto_1
.end method
