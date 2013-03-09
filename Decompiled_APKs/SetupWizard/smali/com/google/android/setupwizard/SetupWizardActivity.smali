.class public Lcom/google/android/setupwizard/SetupWizardActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "SetupWizardActivity.java"


# instance fields
.field private mClearAccountsDone:Z

.field protected mOverrideExit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 60
    const-string v5, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetupWizardActivity.onCreate("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_1

    const-string v3, "null"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") LTE == "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->isLTE()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v3, "firstRun"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    const-string v3, "firstRun"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    const-string v3, "SetupWizard"

    const-string v5, "supressing spurious Setup Wizard relaunch"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v4, v2}, Lcom/google/android/setupwizard/SetupWizardActivity;->onSetupComplete(ZZ)V

    .line 111
    :goto_2
    return-void

    .line 60
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "icicle"

    goto :goto_0

    :cond_2
    const-string v3, "false"

    goto :goto_1

    .line 80
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/setupwizard/SetupWizardActivity;->mOverrideExit:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->provisioningDisabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {p0, v2, v2}, Lcom/google/android/setupwizard/SetupWizardActivity;->onSetupComplete(ZZ)V

    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move v0, v4

    .line 91
    .local v0, firstBoot:Z
    :goto_3
    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 92
    const-string v3, "SetupWizard"

    const-string v5, "Resetting DEVICE_PROVISIONED FLAG to 0\n"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v2, v4

    .line 99
    .local v2, provisioned:Z
    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->isHomeActivity()Z

    move-result v3

    if-nez v3, :cond_8

    .line 101
    :cond_7
    iput-boolean v4, p0, Lcom/google/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z

    .line 104
    :cond_8
    if-nez p1, :cond_9

    .line 105
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->onSetupStart()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->startPrepayDetection()V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->startWelcomeActivity()V

    .line 110
    :cond_9
    const-string v3, "SetupWizard"

    const-string v4, "SetupWizardActivity.onCreate() completed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #firstBoot:Z
    .end local v2           #provisioned:Z
    :cond_a
    move v0, v2

    .line 89
    goto :goto_3
.end method

.method public onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V
    .locals 3
    .parameter "gls"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;->provisioningDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/google/android/gsf/IGoogleLoginService;->deleteAllAccounts()V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/setupwizard/SetupWizardActivity;->mClearAccountsDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SetupWizard"

    const-string v2, "GLS died.  There might be spurious accounts."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/SetupWizardActivity;->setIntent(Landroid/content/Intent;)V

    .line 48
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v1, "completed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, completed:Z
    sget-boolean v1, Lcom/google/android/setupwizard/SetupWizardActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard completion detected, completed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/SetupWizardActivity;->setResult(I)V

    .line 54
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->finish()V

    .line 56
    .end local v0           #completed:Z
    :cond_1
    return-void

    .line 53
    .restart local v0       #completed:Z
    :cond_2
    const/4 v1, 0x7

    goto :goto_0
.end method
