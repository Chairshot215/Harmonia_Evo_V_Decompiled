.class public Lcom/android/phone/FdnSetting;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/EditPinPreference$onCreateDialogListener;


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final DIALOG_MESSAGE_KEY:Ljava/lang/String; = "dialog_message_key"

.field private static final DIALOG_PIN_ENTRY_KEY:Ljava/lang/String; = "dialog_pin_entry_key"

.field private static final ERROR_INFO_KEY:Ljava/lang/String; = "error_info_key"

.field private static final EVENT_PIN2_CHANGE_COMPLETE:I = 0xc8

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final INVALID_PIN:Ljava/lang/String; = "InvalidPin"

.field private static final LOG_TAG:Ljava/lang/String; = "FdnSetting"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN_KEY:Ljava/lang/String; = "new_pin_key"

.field private static final OLD_PIN_KEY:Ljava/lang/String; = "old_pin_key"

.field private static final PIN2_REQUESTED:I = 0x0

.field private static final PIN2_STATE_KEY:Ljava/lang/String; = "pin2_state_key"

.field private static final PIN_CHANGE_NEW:I = 0x1

.field private static final PIN_CHANGE_OLD:I = 0x0

.field private static final PIN_CHANGE_PUK:I = 0x3

.field private static final PIN_CHANGE_REENTER:I = 0x2

.field private static final PIN_CHANGE_STATE_KEY:Ljava/lang/String; = "pin_change_state_key"

.field private static final PUK2_BLOCKED:I = 0x2

.field private static final PUK2_KEY:Ljava/lang/String; = "puk2_key"

.field private static final PUK2_REQUESTED:I = 0x1

.field private static final RETRY_INFO:Ljava/lang/String; = "RetryInfo"

.field private static final SKIP_OLD_PIN_KEY:Ljava/lang/String; = "skip_old_pin_key"


# instance fields
.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mError:Ljava/lang/String;

.field private mFDNHandler:Landroid/os/Handler;

.field private mFdnList:Lcom/htc/preference/HtcPreferenceScreen;

.field private mHtcContext:Landroid/content/Context;

.field private mInvalidPin:Z

.field private mLimitedDisplayArea:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPin2State:I

.field private mPinChangeState:I

.field private mPuk2:Ljava/lang/String;

.field private mRetryInfo:Ljava/lang/String;

.field private mSkipOldPin:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 125
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 338
    new-instance v0, Lcom/android/phone/FdnSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$2;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updatePin2RelatedStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/phone/FdnSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/FdnSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/FdnSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/FdnSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    return v0
.end method

.method private checkSIMSateBeforeDoAction()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 807
    const/4 v0, 0x1

    .line 808
    .local v0, needShow:Z
    const v1, 0x20c0122

    .line 809
    .local v1, resId:I
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_0

    .line 828
    :goto_0
    return v4

    .line 813
    :cond_0
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 814
    .local v2, sim:Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_1

    .line 815
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 816
    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v3, :cond_3

    .line 817
    const v1, 0x7f0e0394

    .line 823
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 824
    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    move v4, v0

    .line 828
    goto :goto_0

    .line 819
    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 505
    return-void
.end method

.method private final displayPinChangeDialog()V
    .locals 2

    .prologue
    .line 511
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 512
    return-void
.end method

.method private final displayPinChangeDialog(IZ)V
    .locals 4
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 516
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    .line 528
    const v0, 0x7f0e038a

    .line 533
    .local v0, msgId:I
    :goto_0
    if-eqz p1, :cond_2

    .line 536
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_1

    .line 537
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 539
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 549
    :goto_1
    if-eqz p2, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 552
    :cond_0
    return-void

    .line 518
    .end local v0           #msgId:I
    :pswitch_0
    const v0, 0x7f0e0381

    .line 519
    .restart local v0       #msgId:I
    goto :goto_0

    .line 521
    .end local v0           #msgId:I
    :pswitch_1
    const v0, 0x7f0e0382

    .line 522
    .restart local v0       #msgId:I
    goto :goto_0

    .line 524
    .end local v0           #msgId:I
    :pswitch_2
    const v0, 0x7f0e0383

    .line 525
    .restart local v0       #msgId:I
    goto :goto_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final resetFdnToggleDialog()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 560
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0380

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method

.method private final resetPinChangeState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 569
    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 570
    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 571
    invoke-direct {p0, v0, v0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 572
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e034c

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 574
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 583
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 584
    invoke-direct {p0, v1, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 586
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 592
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    const v6, 0x7f0e0387

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetFdnToggleDialog()V

    .line 185
    :goto_0
    return-void

    .line 155
    :cond_0
    iput-object v5, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    .line 156
    iput-object v5, p0, Lcom/android/phone/FdnSetting;->mRetryInfo:Ljava/lang/String;

    .line 159
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v5}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, password:Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    iput-boolean v4, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 164
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 165
    .local v0, isEnabled:Z
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 168
    .local v1, onComplete:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v5, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 184
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :goto_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0       #isEnabled:Z
    .restart local v1       #onComplete:Landroid/os/Message;
    :cond_1
    move v3, v4

    .line 168
    goto :goto_1

    .line 173
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 174
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 175
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_3

    .line 176
    invoke-direct {p0, v6}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 180
    :goto_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_2

    .line 178
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    goto :goto_3
.end method

.method private updateEnableFDN()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e034d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 620
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0348

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 621
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e034b

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 628
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetFdnToggleDialog()V

    .line 629
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e034e

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e0349

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 625
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f0e034a

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_0
.end method

.method private updatePINChangeState(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/4 v1, 0x0

    const v6, 0x7f0e0388

    const v5, 0x7f0e0387

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    if-nez p1, :cond_2

    .line 201
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-nez v1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_0

    .line 210
    :cond_2
    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mRetryInfo:Ljava/lang/String;

    .line 222
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iput-boolean v4, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 229
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 230
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_0

    .line 234
    :cond_3
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 235
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_4

    .line 236
    invoke-direct {p0, v5}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 240
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    goto :goto_1

    .line 245
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    iput-boolean v4, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 252
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 253
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_0

    .line 255
    :cond_5
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 256
    invoke-direct {p0, v5, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 262
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 263
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 264
    const v1, 0x7f0e0386

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 266
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    goto/16 :goto_0

    .line 271
    :cond_6
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, onComplete:Landroid/os/Message;
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-nez v1, :cond_7

    .line 284
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 285
    :cond_7
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-ne v1, v3, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 287
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    .end local v0           #onComplete:Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 316
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 317
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    .line 318
    iput-boolean v4, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    goto/16 :goto_0

    .line 321
    :cond_8
    iput-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 322
    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_9

    .line 323
    invoke-direct {p0, v6}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 327
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto/16 :goto_0

    .line 325
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    goto :goto_2

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updatePin2RelatedStatus()V
    .locals 8

    .prologue
    const v7, 0x7f0e0010

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 716
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->checkSIMSateBeforeDoAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v2

    aget v0, v2, v3

    .line 721
    .local v0, pin2retry:I
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v2

    aget v1, v2, v6

    .line 722
    .local v1, puk2retry:I
    if-lez v0, :cond_3

    .line 724
    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eqz v2, :cond_1

    .line 725
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 727
    :cond_1
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    .line 728
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e034c

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 729
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e0350

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 730
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e034c

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 745
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updatePreferecneList()V

    goto :goto_0

    .line 731
    :cond_3
    if-gtz v0, :cond_5

    if-lez v1, :cond_5

    .line 732
    iput v5, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    .line 733
    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-eq v2, v3, :cond_4

    .line 734
    iput v6, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 736
    :cond_4
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 737
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e0011

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 738
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_1

    .line 739
    :cond_5
    if-gtz v0, :cond_2

    if-gtz v1, :cond_2

    .line 740
    iput v3, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    .line 741
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e0012

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 742
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v3, 0x7f0e0014

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 743
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updatePreferecneList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 836
    iget v0, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mFdnList:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mFdnList:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 845
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mFdnList:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 604
    if-eqz p2, :cond_1

    move v0, v1

    .line 607
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 608
    :cond_0
    const/4 v1, 0x0

    .line 610
    :goto_1
    return v1

    .line 604
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 610
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 495
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 496
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 497
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 633
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 637
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    .line 645
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 647
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 650
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 651
    .local v1, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 653
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnCreateDialogListener(Lcom/android/phone/EditPinPreference$onCreateDialogListener;)V

    .line 657
    :cond_0
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 659
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnCreateDialogListener(Lcom/android/phone/EditPinPreference$onCreateDialogListener;)V

    .line 662
    :cond_1
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mFdnList:Lcom/htc/preference/HtcPreferenceScreen;

    .line 663
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->checkSIMSateBeforeDoAction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updatePin2RelatedStatus()V

    .line 673
    :goto_1
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 674
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 676
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 679
    if-nez p1, :cond_4

    .line 682
    iget v2, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-nez v2, :cond_3

    .line 683
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 687
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetFdnToggleDialog()V

    .line 706
    :goto_3
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 708
    return-void

    .line 638
    .end local v1           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :catch_0
    move-exception v0

    .line 639
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "FdnSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get HtcResource context failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 667
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 668
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mFdnList:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 685
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_2

    .line 690
    :cond_4
    const-string v2, "skip_old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 691
    const-string v2, "pin_change_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 692
    const-string v2, "old_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 693
    const-string v2, "new_pin_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 694
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_message_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, "dialog_pin_entry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 697
    const-string v2, "puk2_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    .line 698
    const-string v2, "error_info_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    .line 699
    const-string v2, "pin2_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    .line 700
    const-string v2, "InvalidPin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    .line 701
    const-string v2, "RetryInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mRetryInfo:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public onCreateDialog(Landroid/view/View;)V
    .locals 12
    .parameter "Dialog"

    .prologue
    const v11, 0x7f0e038a

    const v10, 0x7f0e0381

    const v9, 0x7f0e0380

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 753
    if-eqz p1, :cond_0

    .line 755
    iget v3, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    if-nez v3, :cond_4

    .line 756
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0e034c

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 757
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v3

    const/4 v4, 0x2

    aget v1, v3, v4

    .line 758
    .local v1, pin2Retry:I
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mHtcContext:Landroid/content/Context;

    if-le v1, v7, :cond_1

    const v3, 0x20c011c

    :goto_0
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, extraInfo:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_2

    .line 761
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 800
    .end local v0           #extraInfo:Ljava/lang/String;
    .end local v1           #pin2Retry:I
    :cond_0
    :goto_1
    return-void

    .line 758
    .restart local v1       #pin2Retry:I
    :cond_1
    const v3, 0x20c011b

    goto :goto_0

    .line 766
    .restart local v0       #extraInfo:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    if-ne v3, v7, :cond_3

    .line 767
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 773
    :cond_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 780
    .end local v0           #extraInfo:Ljava/lang/String;
    .end local v1           #pin2Retry:I
    :cond_4
    iget v3, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    if-ne v3, v7, :cond_0

    iget v3, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 781
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const v4, 0x7f0e0010

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 782
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDetailIccStatus()[I

    move-result-object v3

    const/4 v4, 0x3

    aget v2, v3, v4

    .line 783
    .local v2, puk2Retry:I
    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mHtcContext:Landroid/content/Context;

    if-le v2, v7, :cond_5

    const v3, 0x20c011c

    :goto_2
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .restart local v0       #extraInfo:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_6

    .line 787
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (%s)"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 783
    .end local v0           #extraInfo:Ljava/lang/String;
    :cond_5
    const v3, 0x20c011b

    goto :goto_2

    .line 790
    .restart local v0       #extraInfo:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    if-ne v3, v7, :cond_7

    .line 791
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 794
    :cond_7
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v11}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 866
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 867
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 869
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 1
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1

    .line 140
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 142
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 851
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 854
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updatePin2RelatedStatus()V

    .line 858
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 861
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 876
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 877
    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 878
    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v0, "dialog_pin_entry_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v0, "puk2_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mPuk2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v0, "error_info_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v0, "pin2_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPin2State:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const-string v0, "InvalidPin"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mInvalidPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    const-string v0, "RetryInfo"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-void
.end method
