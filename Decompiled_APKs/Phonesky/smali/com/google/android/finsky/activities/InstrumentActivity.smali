.class public abstract Lcom/google/android/finsky/activities/InstrumentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "InstrumentActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/InstrumentActivity$Mode;
    }
.end annotation


# instance fields
.field protected mBillingFlowParameters:Landroid/os/Bundle;

.field protected mFragmentContainer:Landroid/view/ViewGroup;

.field private mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

.field protected mMainView:Landroid/view/View;

.field private mNeedsHideProgress:Z

.field private mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

.field private mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private mSaveInstanceStateCalled:Z

.field protected mSavedFlowState:Landroid/os/Bundle;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    .line 138
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/InstrumentActivity;Lcom/google/android/finsky/billing/InstrumentFactory;)Lcom/google/android/finsky/billing/InstrumentFactory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/InstrumentActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->startOrResumeFlow(Landroid/os/Bundle;)V

    return-void
.end method

.method private startOrResumeFlow(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "billing_flow"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, instrumentFamilyType:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "billing_flow_version"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 279
    .local v2, version:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v0, v3, :cond_1

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "update_address_header"

    iget-object v4, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->getUpdateAddressText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v5, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/billing/InstrumentFactory;->updateAddress(IILcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v0, :cond_2

    .line 289
    const-string v0, "Couldn\'t instantiate BillingFlow for FOP type %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 300
    :goto_1
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v0, v3, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    iget-object v5, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/billing/InstrumentFactory;->create(IILcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 294
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    if-nez p1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_1

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private stopFlow()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 319
    return-void
.end method

.method private useProgressDialog()Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "addToBackStack"

    .prologue
    .line 361
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 365
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 366
    if-eqz p2, :cond_1

    .line 367
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 369
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    .line 408
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->useProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 410
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_1

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    goto :goto_0

    .line 418
    :cond_2
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->back()V

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v0, "Cannot interrupt the current flow."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f080033

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 158
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v2, 0x7f040010

    invoke-static {p0, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    .line 161
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mTitleView:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->setContentView(Landroid/view/View;)V

    .line 163
    const v2, 0x7f080037

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v2, "Invalid account supplied in the intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "authAccount"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ui_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, uiModeString:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 173
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 174
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v2, v3, :cond_1

    .line 175
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mMainView:Landroid/view/View;

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "instrument_mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    .line 181
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_4

    .line 182
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "extra_paramters"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_paramters"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "ui_mode"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "entry_point_menu"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "entry_point_menu"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "referrer_url"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referrer_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mBillingFlowParameters:Landroid/os/Bundle;

    const-string v3, "referrer_list_cookie"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referrer_list_cookie"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz p1, :cond_3

    .line 197
    const-string v2, "flow_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSavedFlowState:Landroid/os/Bundle;

    .line 198
    const-string v2, "progress_dialog"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 200
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    .line 204
    iput-object v8, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 208
    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/finsky/activities/InstrumentActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/InstrumentActivity$1;-><init>(Lcom/google/android/finsky/activities/InstrumentActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentMode:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v3, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    if-ne v2, v3, :cond_2

    .line 184
    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 260
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->stopFlow()V

    .line 261
    return-void
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .locals 3
    .parameter "flow"
    .parameter "error"

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 469
    .local v0, result:Landroid/content/Intent;
    const-string v1, "billing_flow_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v1, "billing_flow_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 472
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 473
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .locals 7
    .parameter "flow"
    .parameter "canceled"
    .parameter "flowResult"

    .prologue
    const/4 v6, -0x1

    .line 438
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v3, result:Landroid/content/Intent;
    const-string v4, "billing_flow_error"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    const-string v4, "billing_flow_canceled"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string v4, "redeemed_offer_message_html"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    const-string v4, "redeemed_offer_message_html"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, redeemedOfferHtml:Ljava/lang/String;
    const-string v4, "redeemed_offer_message_html"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->showRedeemedOfferDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07019f

    invoke-static {v4, v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 450
    .local v1, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "result_intent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 453
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "redeemed_promo_offer"

    invoke-virtual {v1, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 460
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v2           #redeemedOfferHtml:Ljava/lang/String;
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0, v6, v3}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    goto :goto_0
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 488
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 237
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->onBackPressed()V

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 479
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 480
    const-string v1, "result_intent"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 481
    .local v0, result:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->setResult(ILandroid/content/Intent;)V

    .line 482
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->finish()V

    .line 484
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->onActivityResume()V

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mNeedsHideProgress:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->hideProgress()V

    .line 255
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    .line 305
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v1, :cond_0

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 309
    const-string v1, "flow_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "progress_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 314
    :cond_1
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 383
    return-void
.end method

.method protected removeActionBar()V
    .locals 1

    .prologue
    .line 322
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    .line 323
    .local v0, bar:Lcom/google/android/finsky/layout/CustomActionBar;
    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->hide()V

    .line 324
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setTitle(Ljava/lang/String;)V
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 3
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 347
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v2, :cond_0

    .line 357
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 351
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 352
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 355
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .locals 3
    .parameter "fragment"
    .parameter "title"
    .parameter "addToBackStack"

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 333
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/activities/InstrumentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->setTitle(Ljava/lang/String;)V

    .line 337
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 338
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f080037

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 339
    if-eqz p3, :cond_1

    .line 340
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 342
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 335
    .end local v0           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/InstrumentActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showProgress(I)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->useProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-static {p1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    .line 398
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_1
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showRedeemedOfferDialog()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    return v0
.end method
