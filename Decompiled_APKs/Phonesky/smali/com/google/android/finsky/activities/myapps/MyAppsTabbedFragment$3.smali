.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->openDocDetails(Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private purchase()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 503
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    .line 504
    .local v10, finskyApp:Lcom/google/android/finsky/FinskyApp;
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v1

    .line 507
    .local v1, account:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$700(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "myApps"

    const/4 v9, 0x0

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 510
    return-void
.end method


# virtual methods
.method public enable()V
    .locals 4

    .prologue
    .line 478
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$500(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 480
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 484
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$600(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/DocumentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onDataChanged()V

    .line 487
    return-void
.end method

.method public install()V
    .locals 3

    .prologue
    .line 492
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    .local v0, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->startActivity(Landroid/content/Intent;)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->purchase()V

    goto :goto_0
.end method

.method public launch()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$400(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 474
    return-void
.end method

.method public refund(Ljava/lang/String;)V
    .locals 2
    .parameter "accountName"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refundDocument(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public uninstall(ZZZ)V
    .locals 2
    .parameter "isSystemPackage"
    .parameter "isOwnedApp"
    .parameter "hasSubscriptions"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/finsky/utils/AppSupport;->showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;ZZZ)V

    .line 464
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->purchase()V

    .line 456
    return-void
.end method

.method public viewDetails()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->val$document:Lcom/google/android/finsky/api/model/Document;

    const-string v3, "myApps"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method
