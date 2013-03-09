.class public Lcom/android/phone/CdmaCallOptions;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "CdmaCallOptions.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaCallOptions"


# instance fields
.field private mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CdmaCallOptions;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallOptions;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 35
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v1, Lcom/android/phone/HtcCdmaCallOptions;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/HtcCdmaCallOptions;-><init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/phone/CdmaCallOptions;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/android/phone/CdmaCallOptions;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaCallOptions;->destroy()V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 50
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/android/phone/CdmaCallOptions;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaCallOptions;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-virtual {v1, p2}, Lcom/android/phone/HtcCdmaCallOptions;->preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/android/phone/CdmaCallOptions;->mHtcCdmaCallOptions:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaCallOptions;->resume()V

    .line 44
    return-void
.end method
