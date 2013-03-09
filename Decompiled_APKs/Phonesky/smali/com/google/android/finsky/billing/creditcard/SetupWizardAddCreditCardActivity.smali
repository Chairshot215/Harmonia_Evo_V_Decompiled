.class public Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;
.super Lcom/google/android/finsky/activities/InstrumentActivity;
.source "SetupWizardAddCreditCardActivity.java"


# instance fields
.field private mInitialSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mInitialSetup:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "Cannot interrupt the add credit card flow in the setup wizard."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "billing_flow"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string v1, "ui_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "ui_mode"

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->SETUP_WIZARD:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :cond_0
    const-string v1, "instrument_mode"

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v1, "on_initial_setup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mMainView:Landroid/view/View;

    const/high16 v2, 0x77

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/Compat;->viewSetSystemUiVisibility(Landroid/view/View;I)V

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v1, v2, :cond_2

    .line 61
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->removeActionBar()V

    .line 65
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "referrer_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "referrer_url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "externalPackage?pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v2, "cardholder_name"

    const-string v3, "cardholder_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "on_initial_setup"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mInitialSetup:Z

    .line 76
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 80
    const-string v0, "Swallowing title: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method protected showRedeemedOfferDialog()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mInitialSetup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
