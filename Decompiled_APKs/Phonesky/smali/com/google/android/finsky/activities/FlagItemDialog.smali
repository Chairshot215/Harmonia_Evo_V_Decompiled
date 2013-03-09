.class public Lcom/google/android/finsky/activities/FlagItemDialog;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "FlagItemDialog.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/FlagItemDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const/high16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->finish()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f080037

    .line 40
    const v4, 0x7f040060

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/FlagItemDialog;->setContentView(I)V

    .line 41
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "url"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, url:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 47
    iget-object v4, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v4, v5, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {v3}, Lcom/google/android/finsky/activities/FlagItemFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/activities/FlagItemFragment;

    move-result-object v0

    .line 53
    .local v0, fragment:Lcom/google/android/finsky/activities/FlagItemFragment;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 54
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v6, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->finish()V

    .line 102
    const/4 v0, 0x1

    .line 104
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
    .line 61
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 86
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .parameter "breadcrumb"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backend"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemDialog;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 96
    return-void
.end method
