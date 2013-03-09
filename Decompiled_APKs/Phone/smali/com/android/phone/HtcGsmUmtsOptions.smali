.class public Lcom/android/phone/HtcGsmUmtsOptions;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcGsmUmtsOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private mClickedPreference:Lcom/htc/preference/HtcPreference;

.field private mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "Phone/Settings_HtcGsmUmtsOptions"

    sput-object v0, Lcom/android/phone/HtcGsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

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

    iput-boolean v0, p0, Lcom/android/phone/HtcGsmUmtsOptions;->DBG:Z

    .line 40
    iput-object v1, p0, Lcom/android/phone/HtcGsmUmtsOptions;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 42
    iput-object v1, p0, Lcom/android/phone/HtcGsmUmtsOptions;->mClickedPreference:Lcom/htc/preference/HtcPreference;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcGsmUmtsOptions;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/HtcGsmUmtsOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 52
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v1, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/GsmUmtsOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/phone/HtcGsmUmtsOptions;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 66
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/android/phone/HtcGsmUmtsOptions;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/HtcGsmUmtsOptions;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v1, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 60
    return-void
.end method
