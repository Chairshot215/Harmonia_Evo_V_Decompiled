.class public Lcom/google/android/finsky/activities/ReviewsActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "ReviewsActivity.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/ReviewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v1, "finsky.ReviewsActivity.document"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->finish()V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f080037

    .line 32
    const v3, 0x7f040060

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/ReviewsActivity;->setContentView(I)V

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "finsky.ReviewsActivity.document"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 36
    new-instance v3, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 38
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 39
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v3, v4, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 40
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 45
    .local v2, manager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {p0, v3}, Lcom/google/android/finsky/activities/ReviewsFragment;->newInstance(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/activities/ReviewsFragment;

    move-result-object v0

    .line 48
    .local v0, fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 49
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    .end local v0           #fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    .end local v1           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onReady(Z)V
    .locals 0
    .parameter "shouldHandleIntent"

    .prologue
    .line 57
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "title"
    .parameter "message"
    .parameter "goBack"

    .prologue
    .line 109
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .parameter "breadcrumb"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backend"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 90
    return-void
.end method
