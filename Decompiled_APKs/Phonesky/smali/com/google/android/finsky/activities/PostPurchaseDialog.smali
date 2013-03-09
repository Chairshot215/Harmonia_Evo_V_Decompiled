.class public Lcom/google/android/finsky/activities/PostPurchaseDialog;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "PostPurchaseDialog.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PostPurchaseDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string v1, "purchaseDocUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "offerType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->finish()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f080037

    .line 50
    const v6, 0x7f040060

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->setContentView(I)V

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 54
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "purchaseDocUrl"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, purchaseDocUrl:Ljava/lang/String;
    const-string v6, "offerType"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 56
    .local v4, offerType:I
    const-string v6, "accountName"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/activities/PostPurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 59
    iget-object v6, p0, Lcom/google/android/finsky/activities/PostPurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v7, p0, Lcom/google/android/finsky/activities/PostPurchaseDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v6, v7, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {v5, v4, v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/finsky/activities/PostPurchaseFragment;

    move-result-object v1

    .line 66
    .local v1, fragment:Lcom/google/android/finsky/activities/PostPurchaseFragment;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 67
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v2, v8, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->finish()V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onReady(Z)V
    .locals 0
    .parameter "shouldHandleIntent"

    .prologue
    .line 74
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PostPurchaseDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 99
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .parameter "breadcrumb"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backend"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 109
    return-void
.end method
