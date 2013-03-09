.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcTelecElectricLicenseActivity;
.super Landroid/app/Activity;
.source "HtcTelecElectricLicenseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcTelecElectricLicenseActivity;->setContentView(I)V

    .line 22
    return-void
.end method
