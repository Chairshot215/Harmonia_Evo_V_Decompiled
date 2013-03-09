.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
.implements Lcom/android/settings/EditPinPreference$onCreateDialogListener;


# static fields
.field private static final CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final CHANGE_PIN_FAIL:Ljava/lang/String; = "ChangePinFail"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final INVALID_PIN:Ljava/lang/String; = "InvalidPin"

.field private static final LOG_TAG:Ljava/lang/String; = "SimLockSettings"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN:Ljava/lang/String; = " NewPin"

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PIN:Ljava/lang/String; = "OldPin"

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final RETRY_INFO:Ljava/lang/String; = "RetryInfo"

.field private static final SIM_PIN2:Ljava/lang/String; = "sim_pin2"

.field private static final STAT_NONE:I = 0x0

.field private static final STAT_PIN_CHANGE:I = 0x2

.field private static final STAT_PIN_LOCK:I = 0x1


# instance fields
.field private mChangePinFail:Z

.field private mContext:Landroid/content/Context;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mInvalidPin:Z

.field private mLimitedDisplayArea:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRetryInfo:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 116
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 142
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 157
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method private checkIccSateBeforeDoAction()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 908
    const/4 v1, 0x1

    .line 909
    .local v1, iccNotOk:Z
    const v3, 0x7f0c02de

    .line 910
    .local v3, resId:I
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v7, :cond_0

    .line 954
    :goto_0
    return v6

    .line 913
    :cond_0
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 914
    .local v0, icc:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_3

    .line 915
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    .line 918
    .local v5, state:Lcom/android/internal/telephony/IccCard$State;
    const/4 v2, 0x0

    .line 919
    .local v2, isNoSimCard:Z
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd8

    if-eq v7, v8, :cond_1

    .line 921
    const-string v7, "gsm.sim.absent"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, simType:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 925
    const/4 v2, 0x1

    .line 926
    const-string v7, "SimLockSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNoSimCard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v4           #simType:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v7, v5, :cond_2

    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    .line 940
    :cond_2
    const v3, 0x7f0c02de

    .line 949
    .end local v2           #isNoSimCard:Z
    .end local v5           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 950
    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_4
    move v6, v1

    .line 954
    goto :goto_0

    .line 945
    .restart local v2       #isNoSimCard:Z
    .restart local v5       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c09dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 180
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c09dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private iccLockChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x1

    .line 758
    if-eqz p1, :cond_2

    .line 759
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 761
    const/4 v0, 0x0

    .line 771
    .local v0, resId:I
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-ne v1, v3, :cond_1

    const v0, 0x7f0c035e

    .line 774
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 776
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eq v1, v2, :cond_0

    .line 777
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 797
    .end local v0           #resId:I
    :cond_0
    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/android/settings/IccLockSettings;->resetDialogState(IZ)V

    .line 804
    return-void

    .line 771
    .restart local v0       #resId:I
    :cond_1
    const v0, 0x7f0c035f

    goto :goto_0

    .line 783
    .end local v0           #resId:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    .line 785
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockSettings;->showPinErrorDialog(I)V

    goto :goto_1
.end method

.method private iccPinChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 807
    if-nez p1, :cond_0

    .line 811
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockSettings;->showPinErrorDialog(I)V

    .line 836
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/android/settings/IccLockSettings;->resetDialogState(IZ)V

    .line 843
    return-void

    .line 820
    :cond_0
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0639

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 824
    :cond_1
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c062b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c09e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 851
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 855
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 860
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 861
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 862
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 864
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 866
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 868
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 869
    return-void
.end method

.method private resetDialogState(IZ)V
    .locals 6
    .parameter "wherefrom"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 873
    iput-object v5, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 874
    iput-object v5, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 875
    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 876
    if-ne p2, v2, :cond_1

    .line 877
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 893
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 894
    .local v0, icc:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 896
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    .line 898
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 902
    .end local v1           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 903
    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 904
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 905
    return-void

    .line 878
    .end local v0           #icc:Lcom/android/internal/telephony/IccCard;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 881
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0

    .line 887
    :cond_2
    if-ne p1, v4, :cond_3

    .line 888
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0

    .line 890
    :cond_3
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method private setDialogValues()V
    .locals 8

    .prologue
    const v7, 0x7f0c0636

    const v6, 0x7f0c0628

    const v5, 0x7f0c09de

    const v4, 0x7f0c0632

    const v3, 0x7f0c0624

    .line 504
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 505
    const-string v0, ""

    .line 506
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 573
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 574
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 589
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_e

    .line 590
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 600
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 601
    return-void

    .line 508
    :pswitch_0
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0633

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0634

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0635

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 513
    :cond_2
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 514
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0625

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0626

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0627

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 519
    :cond_4
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c09df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c09e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c09e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 526
    :pswitch_1
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 531
    :cond_6
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 532
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 537
    :cond_7
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c09e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 544
    :pswitch_2
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 545
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0637

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 548
    :cond_8
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 549
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0629

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 553
    :cond_9
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c09e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 559
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c09e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 561
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 563
    :cond_a
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 564
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 567
    :cond_b
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 577
    :cond_c
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 578
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 582
    :cond_d
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c09e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 595
    :cond_e
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_1

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 8

    .prologue
    const v1, 0x20c011c

    const v2, 0x20c011b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 380
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v3, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatus()[I

    move-result-object v3

    aget v0, v3, v7

    .line 385
    .local v0, pinRetry:I
    if-eqz v0, :cond_0

    .line 389
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-ne v3, v6, :cond_6

    .line 391
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_4

    .line 392
    const-string v3, " (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_3

    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 428
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 430
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 392
    goto :goto_1

    .line 400
    :cond_4
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_5

    :goto_3
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    .line 407
    :cond_6
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 409
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_8

    .line 410
    const-string v3, " (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_7

    :goto_4
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_4

    .line 418
    :cond_8
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_9

    :goto_5
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_5
.end method

.method private showPinErrorDialog(I)V
    .locals 9
    .parameter "state"

    .prologue
    const v8, 0x7f0c09e6

    const v1, 0x20c011c

    const v2, 0x20c011b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 435
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v3, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    .line 443
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatus()[I

    move-result-object v3

    aget v0, v3, v7

    .line 444
    .local v0, pinRetry:I
    if-eqz v0, :cond_0

    .line 448
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 449
    if-ne p1, v6, :cond_5

    .line 450
    iput v6, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 451
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_3

    .line 452
    const-string v3, " (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_2

    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 496
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 498
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 452
    goto :goto_1

    .line 462
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_4

    :goto_3
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 470
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_9

    .line 471
    iput-boolean v6, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 472
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 473
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_7

    .line 474
    const-string v3, " (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_6

    :goto_4
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 474
    goto :goto_4

    .line 484
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v6, :cond_8

    :goto_5
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_5

    .line 493
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 755
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 848
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 274
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    .line 212
    const v1, 0x7f050039

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 214
    const-string v1, "sim_pin"

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/EditPinPreference;

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 215
    const-string v1, "sim_toggle"

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 216
    if-eqz p1, :cond_1

    const-string v1, "dialogState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const-string v1, "dialogState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 219
    const-string v1, "dialogPin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 220
    const-string v1, "dialogError"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 221
    const-string v1, "enableState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 224
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_2
    const-string v1, "ChangePinFail"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 242
    const-string v1, "InvalidPin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 243
    const-string v1, "OldPin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 244
    const-string v1, " NewPin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 245
    const-string v1, "RetryInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/EditPinPreference;->setOnCreateDialogListener(Lcom/android/settings/EditPinPreference$onCreateDialogListener;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 260
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    .line 261
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->checkIccSateBeforeDoAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 271
    :goto_3
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SimLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get HtcResource context failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 226
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_0
    const-string v1, "oldPinCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto/16 :goto_2

    .line 230
    :pswitch_1
    const-string v1, "oldPinCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 231
    const-string v1, "newPinCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto/16 :goto_2

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/view/View;)V
    .locals 10
    .parameter "Dialog"

    .prologue
    const v1, 0x20c011b

    const/4 v3, 0x2

    const v9, 0x7f0c02dc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 678
    if-eqz p1, :cond_3

    .line 681
    iget v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    if-nez v2, :cond_6

    .line 683
    :cond_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatus()[I

    move-result-object v2

    aget v0, v2, v8

    .line 684
    .local v0, pinRetry:I
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 685
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v2, :cond_4

    .line 686
    const-string v2, " (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v7, :cond_1

    const v1, 0x20c011c

    :cond_1
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 693
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v7, :cond_2

    .line 694
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 708
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 729
    .end local v0           #pinRetry:I
    :cond_3
    :goto_1
    return-void

    .line 698
    .restart local v0       #pinRetry:I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mHtcContext:Landroid/content/Context;

    if-le v0, v7, :cond_5

    const v1, 0x20c011c

    :cond_5
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 703
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v7, :cond_2

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_0

    .line 713
    .end local v0           #pinRetry:I
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-nez v1, :cond_7

    .line 714
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v7, :cond_3

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 717
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 718
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_1

    .line 721
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v7, :cond_3

    .line 722
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 307
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 309
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v5, 0x7f0c09e7

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 605
    if-nez p2, :cond_0

    .line 608
    invoke-direct {p0, v3, v1}, Lcom/android/settings/IccLockSettings;->resetDialogState(IZ)V

    .line 674
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 619
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 623
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 631
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 635
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 637
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 639
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 642
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 643
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 644
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 645
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 646
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 647
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 650
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 651
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 652
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 653
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 656
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 657
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 664
    :goto_1
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 665
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 666
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_1

    .line 668
    :cond_3
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 669
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 670
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 735
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 737
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 739
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 740
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 741
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 746
    :goto_0
    return v0

    .line 742
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 743
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-ne v0, v2, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 298
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 301
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    const-string v0, "ChangePinFail"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    const-string v0, "InvalidPin"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    const-string v0, "OldPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, " NewPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "RetryInfo"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_1
    return-void

    .line 329
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 327
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 360
    if-eqz p1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 365
    .local v0, shouldCheck:Z
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 370
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 375
    .end local v0           #shouldCheck:Z
    :cond_1
    return-void
.end method
