.class public Lcom/android/phone/HtcGsmRoamingPref;
.super Ljava/lang/Object;
.source "HtcGsmRoamingPref.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_gsm_roaming_key"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcGsmRoamingPref"


# instance fields
.field private PREFERRED_NETWORK_MODE:Ljava/lang/String;

.field private mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDialogShowing:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 1
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 32
    const-string v0, "preferred_network_mode"

    iput-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->PREFERRED_NETWORK_MODE:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 37
    iput-object p2, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 38
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/HtcGsmRoamingPref;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcGsmRoamingPref;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcGsmRoamingPref;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private getPreferredNetwork()I
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->PREFERRED_NETWORK_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private showAlertDialog(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 120
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, ret:Lcom/htc/widget/HtcAlertDialog;
    if-nez v0, :cond_1

    .line 99
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e02df

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/HtcGsmRoamingPref$3;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcGsmRoamingPref$3;-><init>(Lcom/android/phone/HtcGsmRoamingPref;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/phone/HtcGsmRoamingPref$2;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcGsmRoamingPref$2;-><init>(Lcom/android/phone/HtcGsmRoamingPref;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/HtcGsmRoamingPref$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcGsmRoamingPref$1;-><init>(Lcom/android/phone/HtcGsmRoamingPref;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 119
    :cond_1
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bEnableGSMBotton()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Lcom/android/phone/HtcGsmRoamingPref;->getPreferredNetwork()I

    move-result v0

    .line 62
    .local v0, settingsNetworkMode:I
    iget-object v2, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 63
    const-string v2, "HtcGsmRoamingPref"

    const-string v3, "PHONE_TYPE_GSM enable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return v1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 67
    :cond_1
    const-string v2, "HtcGsmRoamingPref"

    const-string v3, "Automatic CDMA enable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v1, "button_gsm_roaming_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 46
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/HtcGsmRoamingPref;->bEnableGSMBotton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 50
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 125
    return-void
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, key:Ljava/lang/String;
    const-string v1, "button_gsm_roaming_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/HtcGsmRoamingPref;->showAlertDialog(Z)V

    .line 83
    const/4 v1, 0x1

    .line 86
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resume()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/HtcGsmRoamingPref;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/HtcGsmRoamingPref;->bEnableGSMBotton()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 132
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/phone/HtcGsmRoamingPref;->mButtonDataRoam:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 55
    const-string v0, "HtcGsmRoamingPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable gsm roaming pref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method
