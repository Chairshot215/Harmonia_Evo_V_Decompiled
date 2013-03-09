.class public Lcom/android/phone/HtcCdmaOptions;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcCdmaOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11


# instance fields
.field private DBG:Z

.field private mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Lcom/htc/preference/HtcPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "Phone/Settings_HtcCdmaOptions"

    sput-object v0, Lcom/android/phone/HtcCdmaOptions;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaOptions;->DBG:Z

    .line 40
    iput-object v1, p0, Lcom/android/phone/HtcCdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 41
    iput-object v1, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 43
    iput-object v1, p0, Lcom/android/phone/HtcCdmaOptions;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 112
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaOptions;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaOptions;->addPreferencesFromResource(I)V

    .line 53
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcCdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 57
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v1, Lcom/android/phone/CdmaOptions;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CdmaOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaOptions;->destroy()V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iput-object p2, p0, Lcom/android/phone/HtcCdmaOptions;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    .line 87
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/HtcCdmaOptions;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/android/phone/HtcCdmaOptions;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/CdmaOptions;->resume()V

    .line 66
    return-void
.end method
