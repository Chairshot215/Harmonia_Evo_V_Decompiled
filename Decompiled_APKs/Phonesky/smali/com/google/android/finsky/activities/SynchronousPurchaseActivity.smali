.class public Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "SynchronousPurchaseActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;
.implements Lcom/google/android/finsky/utils/NotificationListener;


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mDocId:Ljava/lang/String;

.field protected mErrorShown:Z

.field protected mExternalReferrerUrl:Ljava/lang/String;

.field protected mIsDirectLinkPurchase:Z

.field protected mOfferType:I

.field protected mOriginalUrl:Ljava/lang/String;

.field protected mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

.field protected mReferrerCookie:Ljava/lang/String;

.field protected mReferrerUrl:Ljava/lang/String;

.field protected mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

.field protected mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 60
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "document_id"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "finsky.original_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "finsky.offer_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v1, "finsky.referrer_url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "finsky.external_referrer_url"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "finsky.referrer_cookie"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "finsky.is_direct_link_purchase"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0, p9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 4

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, data:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->setResultData(Landroid/content/Intent;)V

    .line 188
    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    sget-object v3, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    if-ne v2, v3, :cond_0

    const/4 v1, -0x1

    .line 189
    .local v1, result:I
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    .line 191
    return-void

    .line 188
    .end local v1           #result:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 2

    .prologue
    .line 154
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "No navigation manager in IabActivity."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPurchaseFragment()Lcom/google/android/finsky/activities/PurchaseFragment;
    .locals 9

    .prologue
    .line 278
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 281
    .local v0, currentAccount:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOriginalUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerCookie:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    iget-object v6, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mExternalReferrerUrl:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v1

    return-object v1
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->finish()V

    .line 177
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->handleBackPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 201
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onBackPressed()V

    .line 203
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 89
    const v1, 0x7f04007a

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->setContentView(I)V

    .line 90
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "document_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mAccount:Landroid/accounts/Account;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.original_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOriginalUrl:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.referrer_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.external_referrer_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mExternalReferrerUrl:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.offer_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mOfferType:I

    .line 99
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.referrer_cookie"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mReferrerCookie:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finsky.is_direct_link_purchase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v1, "error_shown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    .line 103
    const-string v1, "response_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 106
    :cond_0
    return-void
.end method

.method public onFailure(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x1

    .line 238
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 239
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    if-eqz v2, :cond_0

    .line 255
    :goto_0
    return-void

    .line 242
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v0, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    .line 246
    .local v0, dialogMessage:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    if-ne v2, v3, :cond_1

    .line 247
    sget-object v2, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 249
    :cond_1
    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 252
    :cond_2
    const-string v2, "No error message to show to user."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->goBack()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 132
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPause()V

    .line 133
    return-void
.end method

.method protected onReady(Z)V
    .locals 4
    .parameter "shouldHandleIntent"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "purchase_fragment"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/PurchaseFragment;

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-nez v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 119
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getPurchaseFragment()Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    .line 120
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V

    .line 121
    const v1, 0x7f080037

    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    const-string v3, "purchase_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 122
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 127
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/activities/PurchaseFragment;->setPurchaseFragmentListener(Lcom/google/android/finsky/activities/PurchaseFragment$PurchaseFragmentListener;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 138
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    .line 139
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "purchase_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mPurchaseFragment:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 148
    :cond_0
    const-string v0, "error_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mErrorShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string v0, "response_code"

    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extraParams"

    .prologue
    .line 228
    sget-object v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mResponseCode:Lcom/google/android/finsky/billing/iab/MarketBillingService$ResponseCode;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->finish()V

    .line 230
    return-void
.end method

.method protected setResultData(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 180
    const-string v0, "finsky.is_direct_link_purchase"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mIsDirectLinkPurchase:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v0, "requested_doc_id"

    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method public showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "title"
    .parameter "htmlMessage"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "docId"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "detailsUrl"

    .prologue
    const/4 v0, 0x1

    .line 259
    iget-object v1, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mDocId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_0
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 3
    .parameter "breadcrumb"

    .prologue
    .line 162
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "Ignoring breadcrumb: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 4
    .parameter "backend"

    .prologue
    .line 169
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "Ignoring backend: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method
