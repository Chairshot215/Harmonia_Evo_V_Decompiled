.class public Lcom/android/settings/wifi/WifiInfo;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInfo;->addPreferencesFromResource(I)V

    .line 33
    return-void
.end method
