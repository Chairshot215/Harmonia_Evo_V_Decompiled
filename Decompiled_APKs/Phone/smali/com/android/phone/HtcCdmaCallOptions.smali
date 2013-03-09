.class public Lcom/android/phone/HtcCdmaCallOptions;
.super Ljava/lang/Object;
.source "HtcCdmaCallOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_CDMA_ADDITINAL_SETTINGS:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CDMA_AUTOPREPEND:Ljava/lang/String; = "button_auto_prepend_key"

.field private static final BUTTON_CDMA_CALL_FORWARD:Ljava/lang/String; = "button_cdma_cf_expand_key"

.field private static final BUTTON_CDMA_DDTM:Ljava/lang/String; = "button_ddtm_mode_key"

.field private static final BUTTON_CDMA_NBPCD:Ljava/lang/String; = "button_cdma_nbpcd_key"

.field private static final BUTTON_CDMA_PLUS_CODE_DIALING_KEY:Ljava/lang/String; = "button_plus_code_dialing_key"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key_from_cdma"

.field private static final BUTTON_NORTH_AMERICAN_DIALING_KEY:Ljava/lang/String; = "button_north_american_dialing_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final BUTTON_VOICE_ROMAING_KEY:Ljava/lang/String; = "button_voice_roaming_key"

.field private static final BUTTON_VP_KEY:Ljava/lang/String; = "button_voice_privacy_key"

.field private static final DBG:Z = true

.field public static final EVENT_GET_ROAMING_PREFERENCE:I = 0x1

.field public static final EVENT_SET_ROAMING_PREFERENCE:I = 0x0

.field private static final INTERNATIONAL_DIALING_CODE_KEY:Ljava/lang/String; = "international_dialing_code_key"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaCallOptions"

.field static final preferredTtyMode:I


# instance fields
.field private QUICK_START:Ljava/lang/String;

.field private SETTINGS_PREFERR_NETWORK_TYPE:Ljava/lang/String;

.field private SETTINGS_TTY:Ljava/lang/String;

.field private mButtonFDN:Lcom/htc/preference/HtcPreference;

.field private mButtonTTY:Lcom/htc/preference/HtcListPreference;

.field private mButtonVoicePrivacy:Lcom/htc/preference/HtcCheckBoxPreference;

.field protected mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButton_PlusCodeDialing:Lcom/htc/preference/HtcPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mInternationalDialingCode:Lcom/android/phone/HtcCdmaEditNumberPreference;

.field private mPendingSetupQueryIndex:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mQuickShow_TTY:Z

.field private mQuickShow_preferredNetwork:Z

.field private mShortCutOfSecrectCode:Ljava/lang/String;

.field ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 3
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonFDN:Lcom/htc/preference/HtcPreference;

    .line 84
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 85
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 86
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mInternationalDialingCode:Lcom/android/phone/HtcCdmaEditNumberPreference;

    .line 87
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_PlusCodeDialing:Lcom/htc/preference/HtcPreferenceScreen;

    .line 88
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 94
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    .line 95
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    .line 474
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    .line 719
    const-string v0, "preferrednetwork"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->SETTINGS_PREFERR_NETWORK_TYPE:Ljava/lang/String;

    .line 720
    iput-boolean v2, p0, Lcom/android/phone/HtcCdmaCallOptions;->mQuickShow_preferredNetwork:Z

    .line 726
    iput-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    .line 727
    const-string v0, "shortcut"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->QUICK_START:Ljava/lang/String;

    .line 728
    const-string v0, "TTY"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->SETTINGS_TTY:Ljava/lang/String;

    .line 729
    iput-boolean v2, p0, Lcom/android/phone/HtcCdmaCallOptions;->mQuickShow_TTY:Z

    .line 757
    new-instance v0, Lcom/android/phone/HtcCdmaCallOptions$8;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaCallOptions$8;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 116
    iput-object p2, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 118
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    .line 120
    const-string v0, "HtcCdmaCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrefActivity.getComponentName()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallOptions;->create()V

    .line 123
    return-void
.end method

.method private DoubleConfirmTTYMode(I)V
    .locals 3
    .parameter "selectedIndex"

    .prologue
    .line 610
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0356

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00e0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0264

    new-instance v2, Lcom/android/phone/HtcCdmaCallOptions$7;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/HtcCdmaCallOptions$7;-><init>(Lcom/android/phone/HtcCdmaCallOptions;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/HtcCdmaCallOptions$6;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaCallOptions$6;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 627
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaCallOptions;Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcCdmaCallOptions;->handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaCallOptions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/HtcCdmaCallOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/HtcCdmaCallOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaCallOptions;->quickSelectTTYMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/HtcCdmaCallOptions;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaCallOptions;->DoubleConfirmTTYMode(I)V

    return-void
.end method

.method private handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/16 v7, 0x320

    const/4 v6, 0x0

    .line 635
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 636
    .local v0, buttonTtyMode:I
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 640
    .local v1, settingsTtyMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/HtcCdmaCallOptions;->log(Ljava/lang/String;)V

    .line 643
    if-eq v0, v1, :cond_1

    .line 645
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaCallOptions;->isPureGsmUmtsPhone()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 651
    iget v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I

    .line 653
    packed-switch v0, :pswitch_data_0

    .line 662
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    iget v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 668
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 678
    const/4 v0, 0x0

    .line 681
    :goto_1
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallOptions;->updatePreferredTtyModeSummary(I)V

    .line 683
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_1
    return-void

    .line 658
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    iget v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 668
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isPureGsmUmtsPhone()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isPureGsmUmtsPhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private needCommonItem()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 106
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallFeaturesSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private quickSelectTTYMode(I)V
    .locals 3
    .parameter "idexOfMode"

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mQuickShow_TTY:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mQuickShow_TTY:Z

    .line 582
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0356

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004f

    new-instance v2, Lcom/android/phone/HtcCdmaCallOptions$5;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaCallOptions$5;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/HtcCdmaCallOptions$4;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaCallOptions$4;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 606
    :cond_0
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 692
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 701
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 702
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 704
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected create()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 135
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v8, 0x7f050005

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaCallOptions;->needCommonItem()Z

    move-result v7

    if-nez v7, :cond_0

    .line 141
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 144
    :cond_0
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_SUPPORT_FDN:Z

    if-nez v7, :cond_2

    .line 146
    :cond_1
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_fdn_key_from_cdma"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonFDN:Lcom/htc/preference/HtcPreference;

    .line 147
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonFDN:Lcom/htc/preference/HtcPreference;

    if-eqz v7, :cond_2

    .line 148
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonFDN:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    :cond_2
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_tty_mode_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcListPreference;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    .line 153
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_TTY_MODE:Z

    if-ne v7, v11, :cond_b

    .line 154
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_3

    .line 155
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 156
    new-instance v7, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    invoke-direct {v7, p0}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    .line 167
    :cond_3
    :goto_0
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_DDTM:Z

    if-eq v7, v11, :cond_4

    .line 168
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_ddtm_mode_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 170
    .local v1, mButton_CDMA_DDTM:Lcom/htc/preference/HtcCheckBoxPreference;
    if-nez v1, :cond_c

    .line 171
    const-string v7, "HtcCdmaCallOptions"

    const-string v8, "OoO There is no BUTTON_CDMA_DDTM"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1           #mButton_CDMA_DDTM:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_auto_prepend_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 180
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_AUTOMATIC_PREPEND:Z

    if-eq v7, v11, :cond_5

    .line 181
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v7, :cond_d

    .line 182
    const-string v7, "HtcCdmaCallOptions"

    const-string v8, "OoO get the null object of BUTTON_CDMA_AUTOPREPEND"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_plus_code_dialing_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_PlusCodeDialing:Lcom/htc/preference/HtcPreferenceScreen;

    .line 191
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_PLUS_CODE_DIALING:Z

    if-eq v7, v11, :cond_f

    .line 193
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_PlusCodeDialing:Lcom/htc/preference/HtcPreferenceScreen;

    if-nez v7, :cond_e

    .line 194
    const-string v7, "HtcCdmaCallOptions"

    const-string v8, "OoO get the null object of BUTTON_CDMA_PLUS_CODE_DIALING_KEY"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_3
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_NBPCD:Z

    if-nez v7, :cond_6

    .line 223
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_cdma_nbpcd_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    .line 224
    .local v2, pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    if-eqz v2, :cond_6

    .line 225
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove BUTTON_CDMA_NBPCD ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v9, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v2           #pcdSetting:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_6
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eq v7, v11, :cond_7

    .line 234
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_cdma_cf_expand_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 235
    .local v4, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v4, :cond_7

    .line 236
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO remove FEATURE_CDMA_CALL_FORWARDING( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    :cond_7
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_WAITING:Z

    if-eq v7, v11, :cond_8

    .line 244
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_more_expand_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 245
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    if-eqz v4, :cond_8

    .line 246
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO remove BUTTON_CDMA_ADDITINAL_SETTINGS( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    :cond_8
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_VOICE_PRIVACY:Z

    if-nez v7, :cond_9

    .line 256
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_voice_privacy_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoicePrivacy:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 257
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoicePrivacy:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_9

    .line 258
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoicePrivacy:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 264
    :cond_9
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_voice_roaming_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 265
    sget-boolean v7, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_VOICE_ROAMING:Z

    if-nez v7, :cond_a

    .line 267
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v7, :cond_a

    .line 268
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 273
    :cond_a
    return-void

    .line 159
    :cond_b
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    if-eqz v7, :cond_3

    .line 160
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO remove BUTTON_TTY_KEY ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v10, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    .restart local v1       #mButton_CDMA_DDTM:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_c
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO remove BUTTON_CDMA_DDTM ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    .end local v1           #mButton_CDMA_DDTM:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_d
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 196
    :cond_e
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_PlusCodeDialing:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v5

    .line 197
    .local v5, rmOk:Z
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO rm object of BUTTON_CDMA_PLUS_CODE_DIALING_KEY ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 201
    .end local v5           #rmOk:Z
    :cond_f
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "button_north_american_dialing_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 205
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v8, "international_dialing_code_key"

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/android/phone/HtcCdmaEditNumberPreference;

    iput-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mInternationalDialingCode:Lcom/android/phone/HtcCdmaEditNumberPreference;

    .line 206
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0154

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, plusCode:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 209
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "cdma_plus_code_dialing_number_key"

    const-string v8, "011"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO OnCreate.International code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :goto_4
    iget-object v7, p0, Lcom/android/phone/HtcCdmaCallOptions;->mInternationalDialingCode:Lcom/android/phone/HtcCdmaEditNumberPreference;

    invoke-virtual {v7, v3}, Lcom/android/phone/HtcCdmaEditNumberPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "HtcCdmaCallOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO OnCreate.exception.International code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected destroy()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected internalResolveIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 738
    const-string v0, "HtcCdmaCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO internalResolveIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->QUICK_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    .line 742
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mShortCutOfSecrectCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->SETTINGS_TTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const-string v0, "HtcCdmaCallOptions"

    const-string v1, "OoO quickStart TTY "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaCallOptions;->mQuickShow_TTY:Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 423
    const-string v0, "HtcCdmaCallOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_0

    .line 431
    move-object v0, p2

    .line 432
    .local v0, Clone_objValue:Ljava/lang/Object;
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_TTY_MODE_DOUBLE_CONFIRM:Z

    if-eqz v1, :cond_2

    .line 433
    const-string v1, "HtcCdmaCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO TTY Value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0356

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00e0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0264

    new-instance v3, Lcom/android/phone/HtcCdmaCallOptions$3;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/HtcCdmaCallOptions$3;-><init>(Lcom/android/phone/HtcCdmaCallOptions;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/phone/HtcCdmaCallOptions$2;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcCdmaCallOptions$2;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/HtcCdmaCallOptions$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCdmaCallOptions$1;-><init>(Lcom/android/phone/HtcCdmaCallOptions;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 469
    .end local v0           #Clone_objValue:Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 461
    .restart local v0       #Clone_objValue:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/HtcCdmaCallOptions;->handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcCdmaCallOptions;->handleTTYChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected pause()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 282
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v4, :cond_1

    .line 283
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "cdma_number_hyphenation_key"

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    const-string v4, "HtcCdmaCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO enable Cdma Autoprepend("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v4, "cdma_number_hyphenation_key"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 291
    .local v2, value:Z
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eq v2, v4, :cond_0

    .line 292
    const-string v4, "HtcCdmaCallOptions"

    const-string v5, "OoO malfunctioned AutoPrepend"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v2           #value:Z
    :cond_0
    :goto_0
    return v3

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v4, :cond_3

    .line 297
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 298
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "cdma_plus_code_dialing_key"

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    const-string v4, "cdma_plus_code_dialing_key"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 302
    .restart local v2       #value:Z
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eq v2, v4, :cond_2

    .line 303
    const-string v4, "HtcCdmaCallOptions"

    const-string v5, "OoO malfunctioned Plus Code Dialing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_2
    const-string v4, "HtcCdmaCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO Enable Plus Code Dialing ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v2           #value:Z
    :cond_3
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v4, :cond_4

    .line 310
    const/4 v3, 0x1

    goto :goto_0

    .line 315
    :cond_4
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 317
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 320
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto :goto_0

    .line 329
    :cond_5
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method protected resume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 343
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    if-eqz v5, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaCallOptions;->isPureGsmUmtsPhone()Z

    move-result v5

    if-eq v5, v8, :cond_6

    .line 347
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    if-eqz v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    const/16 v7, 0x2bc

    invoke-virtual {v6, v7}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 361
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 362
    .local v3, sp:Landroid/content/SharedPreferences;
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_AUTOMATIC_PREPEND:Z

    if-ne v5, v8, :cond_2

    .line 363
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_2

    .line 365
    const/4 v0, 0x1

    .line 366
    .local v0, defaultValue:Z
    const-string v5, "cdma_number_hyphenation_key"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 367
    .local v4, value:Z
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eq v5, v4, :cond_1

    .line 368
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 369
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "cdma_number_hyphenation_key"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_CDMA_AutoPrepend:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 379
    .end local v0           #defaultValue:Z
    .end local v4           #value:Z
    :cond_2
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_4

    .line 381
    const/4 v0, 0x1

    .line 382
    .restart local v0       #defaultValue:Z
    const-string v5, "cdma_plus_code_dialing_key"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 383
    .restart local v4       #value:Z
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eq v5, v4, :cond_3

    .line 384
    const-string v5, "HtcCdmaCallOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO CDMA_PLUS_CODE_DIALING_KEY does not math ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 386
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "cdma_plus_code_dialing_key"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButton_NorthAmericanDialing:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 395
    .end local v0           #defaultValue:Z
    .end local v4           #value:Z
    :cond_4
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonVoiceRoaming:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_5

    .line 398
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/HtcCdmaCallOptions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 403
    :cond_5
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/HtcCdmaCallOptions;->internalResolveIntent(Landroid/content/Intent;)V

    .line 404
    return-void

    .line 351
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_6
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_tty_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 353
    .local v2, settingsTtyMode:I
    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, v2}, Lcom/android/phone/HtcCdmaCallOptions;->updatePreferredTtyModeSummary(I)V

    goto/16 :goto_0
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 420
    return-void
.end method
