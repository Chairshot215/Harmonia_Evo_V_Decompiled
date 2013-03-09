.class public Lcom/android/settings/TestingSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/android/settings/TestingSettings;->addPreferencesFromResource(I)V

    .line 29
    return-void
.end method
