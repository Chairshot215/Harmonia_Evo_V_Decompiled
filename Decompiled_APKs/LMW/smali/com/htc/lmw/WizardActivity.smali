.class public Lcom/htc/lmw/WizardActivity;
.super Lcom/htc/lmw/steps/WizardActivityBase;
.source "WizardActivity.java"


# instance fields
.field private loadingDialog:Landroid/app/Dialog;

.field protected final packageWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lcom/htc/lmw/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "baseActivity"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/lmw/steps/WizardActivityBase;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/lmw/WizardActivity;->setActivity(Landroid/app/Activity;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lmw/WizardActivity;)Lcom/htc/lmw/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/lmw/WizardActivity;Lcom/htc/lmw/ProgressDialog;)Lcom/htc/lmw/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lmw/WizardActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lmw/WizardActivity;->loadingDialog:Landroid/app/Dialog;

    .line 129
    :cond_0
    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/lmw/WizardActivity;->progressDialog:Lcom/htc/lmw/ProgressDialog;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/lmw/WizardActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/lmw/WizardActivity$4;-><init>(Lcom/htc/lmw/WizardActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    return-void
.end method

.method public handleBackPressed()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->back()V

    .line 97
    return-void
.end method

.method public handleNextPressed()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->next()V

    .line 103
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lmw/Wizard;->transactionFinished()V

    .line 193
    iget-object v3, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 195
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v2, upperView:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v3, Lcom/htc/lmw/WizardActivity$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/htc/lmw/WizardActivity$5;-><init>(Lcom/htc/lmw/WizardActivity;Ljava/util/List;Ljava/util/List;Landroid/view/LayoutInflater;)V

    invoke-virtual {v0, v3}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 265
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/lmw/WizardActivity;->dismissLoadingDialog()V

    .line 74
    invoke-virtual {p0}, Lcom/htc/lmw/WizardActivity;->dismissProgressDialog()V

    .line 75
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/Wizard;->transactionFinished()V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/htc/lmw/WizardActivity;->handleBackPressed()V

    .line 85
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lmw/Wizard;->getCurrentStep()I

    move-result v0

    .line 40
    .local v0, step:I
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/htc/lmw/Customize;->wizardActivityOnCreate(Landroid/app/Activity;I)V

    .line 42
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    .line 43
    .local v1, wizard:Lcom/htc/lmw/Wizard;
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/htc/lmw/Wizard;->handleActivity(Landroid/app/Activity;)V

    .line 45
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/lmw/WizardActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/lmw/WizardActivity$1;-><init>(Lcom/htc/lmw/WizardActivity;)V

    invoke-static {v2, v0, v3}, Lcom/htc/lmw/Customize;->setBackButtonCallback(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    .line 52
    iget-object v2, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/lmw/WizardActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/lmw/WizardActivity$2;-><init>(Lcom/htc/lmw/WizardActivity;)V

    invoke-static {v2, v0, v3}, Lcom/htc/lmw/Customize;->setNextButtonCallback(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 271
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected setNextButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lmw/Wizard;->getCurrentStep()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/htc/lmw/Customize;->setNextButtonEnabled(Landroid/app/Activity;ZI)V

    .line 91
    return-void
.end method

.method protected showLoadingDialog(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lmw/WizardActivity;->showLoadingDialog(ILandroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    return-void
.end method

.method protected showLoadingDialog(ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 107
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, dlg:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {v0, p2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    :cond_0
    iput-object v0, p0, Lcom/htc/lmw/WizardActivity;->loadingDialog:Landroid/app/Dialog;

    .line 112
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/lmw/WizardActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/htc/lmw/WizardActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 115
    return-void
.end method

.method protected updateProgressDialog(IIII)V
    .locals 7
    .parameter "titleId"
    .parameter "messageId"
    .parameter "progress"
    .parameter "progressMax"

    .prologue
    .line 133
    iget-object v6, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/htc/lmw/WizardActivity$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/WizardActivity$3;-><init>(Lcom/htc/lmw/WizardActivity;IIII)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method
