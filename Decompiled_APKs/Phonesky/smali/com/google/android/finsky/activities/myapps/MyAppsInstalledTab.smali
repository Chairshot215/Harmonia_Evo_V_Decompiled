.class public Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsInstalledTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeBulkDetails;",
        ">;",
        "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

.field private mInstalledView:Landroid/view/ViewGroup;

.field private mListInitialized:Z

.field private mMyAppsList:Landroid/widget/ListView;

.field private mOwnedDocIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V
    .locals 9
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "dfeApi"
    .parameter "detailsOpener"
    .parameter "state"

    .prologue
    .line 51
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090006

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v1, p1

    move-object v5, p2

    move-object v6, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;ZLcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mOwnedDocIds:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public bucketsChanged()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->restoreTabSelection()V

    .line 161
    :cond_0
    return-void
.end method

.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "view"

    .prologue
    .line 142
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3
    .parameter "backendId"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v1, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->getDocuments()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, docs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->addDocs(Ljava/util/Collection;)V

    .line 125
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mListInitialized:Z

    if-nez v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 131
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mUseTwoColumnLayout:Z

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 134
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mListInitialized:Z

    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->restoreTabSelection()V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->syncViewToState()V

    goto :goto_0
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 166
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->notifyDataSetChanged()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    goto :goto_0
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter "library"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    .line 177
    return-void
.end method

.method protected requestData()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method protected retryFromError()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->clearState()V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    .line 112
    return-void
.end method
