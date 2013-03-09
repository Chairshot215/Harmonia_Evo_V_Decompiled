.class public Lcom/google/android/setupwizard/SetupWizardTestActivity;
.super Lcom/google/android/setupwizard/SetupWizardActivity;
.source "SetupWizardTestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/setupwizard/SetupWizardActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupwizard/SetupWizardTestActivity;->mOverrideExit:Z

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    sget-boolean v2, Lcom/google/android/setupwizard/SetupWizardTestActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "SetupWizard"

    const-string v3, "SetupWizardTestActivity - starting ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v2, Lcom/google/android/setupwizard/SetupWizardTestActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "startedFromTestActivity"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_4

    const-string v2, "testMode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, testMode:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    .line 65
    sget-boolean v2, Lcom/google/android/setupwizard/SetupWizardTestActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "SetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupWizardTestActivity : testMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    const-string v2, "enterpriseLogin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    sget-boolean v2, Lcom/google/android/setupwizard/SetupWizardTestActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "SetupWizard"

    const-string v3, "SetupWizardTestActivity - testing enterprise"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    sget-object v2, Lcom/google/android/setupwizard/SetupWizardTestActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "testMode"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/SetupWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void

    .line 63
    .end local v1           #testMode:Ljava/lang/String;
    :cond_4
    const-string v1, "no intent"

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/SetupWizardActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/SetupWizardTestActivity;->setIntent(Landroid/content/Intent;)V

    .line 48
    const-string v1, "completed"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "completed"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, completed:Z
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/SetupWizardTestActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupWizardTestActivity;->finish()V

    .line 54
    .end local v0           #completed:Z
    :cond_0
    return-void

    .line 51
    .restart local v0       #completed:Z
    :cond_1
    const/4 v1, 0x7

    goto :goto_0
.end method
