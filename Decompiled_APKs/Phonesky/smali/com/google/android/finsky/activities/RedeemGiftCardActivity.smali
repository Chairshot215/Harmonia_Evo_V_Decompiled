.class public Lcom/google/android/finsky/activities/RedeemGiftCardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RedeemGiftCardActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private final mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    return-void
.end method

.method public static createIntent(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "backend"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v2, "authAccount"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "entry_point_menu"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    const-string v2, "referrer_url"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "referrer_url"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private setupActionBar(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 97
    iget-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-interface {v1, v2, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "backend"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, backendId:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 104
    if-eqz p1, :cond_0

    const-string v1, "last_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "last_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setTitle(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter "activity"
    .parameter "accountName"
    .parameter "backendId"

    .prologue
    const/4 v2, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v1, "Redeem chosen with no current account."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v2, v2}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->createIntent(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .parameter "fragment"
    .parameter "addToBackStack"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 151
    .local v0, fragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 152
    if-eqz p2, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 156
    return-void
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->back()V

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "Cannot interrupt the current flow."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setupActionBar(Landroid/os/Bundle;)V

    .line 85
    new-instance v1, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p0, p0, v2}, Lcom/google/android/finsky/billing/giftcard/GiftCardFormOfPayment;->create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v1, "flow_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, flowState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 93
    .end local v0           #flowState:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .locals 1
    .parameter "flow"
    .parameter "error"

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->finish()V

    .line 203
    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .locals 4
    .parameter "flow"
    .parameter "canceled"
    .parameter "flowResult"

    .prologue
    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "entry_point_menu"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .restart local v0       #result:Landroid/content/Intent;
    const-string v2, "billing_flow_error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    const-string v2, "billing_flow_canceled"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->finish()V

    .line 194
    return-void

    .line 192
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->finish()V

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, flowState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 114
    const-string v1, "flow_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    .end local v0           #flowState:Landroid/os/Bundle;
    :cond_0
    const-string v1, "last_title"

    iget-object v2, p0, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CustomActionBar;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 166
    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 3
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 140
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 141
    .local v1, prev:Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;IZ)V
    .locals 3
    .parameter "fragment"
    .parameter "title"
    .parameter "addToBackStack"

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 125
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f080037

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 126
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 127
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setTitle(Ljava/lang/String;)V

    .line 131
    :goto_0
    if-eqz p3, :cond_0

    .line 132
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 135
    return-void

    .line 129
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showProgress(I)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 176
    return-void
.end method
