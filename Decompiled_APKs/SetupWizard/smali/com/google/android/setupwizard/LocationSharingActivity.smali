.class public Lcom/google/android/setupwizard/LocationSharingActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "LocationSharingActivity.java"


# instance fields
.field private mAgreeSharing:Landroid/widget/CompoundButton;

.field private mAgreeUseSearch:Landroid/widget/CompoundButton;

.field private mBackButton:Landroid/view/View;

.field private mExplanationText:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mNextButton:Landroid/view/View;

    .line 61
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mBackButton:Landroid/view/View;

    .line 62
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mExplanationText:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mAgreeSharing:Landroid/widget/CompoundButton;

    .line 64
    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mAgreeUseSearch:Landroid/widget/CompoundButton;

    .line 66
    iget-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mBackButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "no_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mBackButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/LocationSharingActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->isWifiOnlyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mExplanationText:Landroid/widget/TextView;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 84
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/LocationSharingActivity;->setBackButton(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->initViews()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    .local v0, res:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mAgreeSharing:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 54
    iget-object v1, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mAgreeUseSearch:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    .end local v0           #res:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method protected start()V
    .locals 5

    .prologue
    .line 88
    iget-object v3, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mAgreeSharing:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 89
    .local v0, agreedSharing:Z
    invoke-virtual {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 90
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/google/android/setupwizard/LocationSharingActivity;->mAgreeUseSearch:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 91
    .local v1, agreedUseSearch:Z
    if-eqz v0, :cond_0

    .line 93
    const-string v3, "network_location_opt_in"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    :cond_0
    const-string v3, "network"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 99
    invoke-static {p0, v1}, Lcom/google/android/gsf/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    .line 101
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/android/setupwizard/LocationSharingActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/setupwizard/LocationSharingActivity;->finish()V

    .line 103
    return-void
.end method
