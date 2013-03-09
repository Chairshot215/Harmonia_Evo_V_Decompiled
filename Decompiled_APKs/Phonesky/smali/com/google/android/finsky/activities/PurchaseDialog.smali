.class public Lcom/google/android/finsky/activities/PurchaseDialog;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "PurchaseDialog.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mContinueUrl:Ljava/lang/String;

.field private mDocIdToPurchase:Ljava/lang/String;

.field private mExternalReferrer:Ljava/lang/String;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mOfferType:I

.field private mReferrerCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PurchaseDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "offer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "ext_referrer"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "continue_url"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->finish()V

    .line 116
    return-void
.end method

.method protected hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 150
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 52
    const v1, 0x7f040060

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseDialog;->setContentView(I)V

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mAccount:Landroid/accounts/Account;

    .line 57
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mUrl:Ljava/lang/String;

    .line 58
    const-string v1, "offer"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mOfferType:I

    .line 59
    const-string v1, "referrer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerUrl:Ljava/lang/String;

    .line 60
    const-string v1, "referrer_cookie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerCookie:Ljava/lang/String;

    .line 61
    const-string v1, "ext_referrer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mExternalReferrer:Ljava/lang/String;

    .line 62
    const-string v1, "continue_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mContinueUrl:Ljava/lang/String;

    .line 63
    const-string v1, "docId_to_purchase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mDocIdToPurchase:Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 66
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v1, v2, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->finish()V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onReady(Z)V
    .locals 12
    .parameter "shouldHandleIntent"

    .prologue
    const v11, 0x7f080037

    .line 87
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mReferrerCookie:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mExternalReferrer:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mContinueUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mDocIdToPurchase:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseFragment;->newInstance(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseFragment;

    move-result-object v9

    .line 93
    .local v9, fragment:Lcom/google/android/finsky/activities/PurchaseFragment;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 94
    .local v10, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v10, v11, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mStateSaved:Z

    .line 145
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 121
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .parameter "breadcrumb"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backend"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 131
    return-void
.end method
