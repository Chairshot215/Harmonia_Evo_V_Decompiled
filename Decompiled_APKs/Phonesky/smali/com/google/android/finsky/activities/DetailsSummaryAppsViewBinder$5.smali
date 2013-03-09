.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->cancel(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method
