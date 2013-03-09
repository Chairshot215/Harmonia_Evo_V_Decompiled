.class public Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsSubscriptionsTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeBulkDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

.field private mAdapterInitialized:Z

.field mSubscriptionsInLibrary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/library/LibrarySubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsListView:Landroid/widget/ListView;

.field private mSubscriptionsView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "bitmapLoader"
    .parameter "dfeApi"
    .parameter "detailsOpener"
    .parameter "state"

    .prologue
    .line 64
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapterInitialized:Z

    .line 53
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;ZLcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    .line 68
    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "view"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3
    .parameter "backendId"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 112
    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    .line 114
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v10, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->getDocuments()Ljava/util/List;

    move-result-object v4

    .line 115
    .local v4, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 116
    .local v9, subsDocs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 117
    .local v2, appsDocs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    .line 118
    .local v3, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :sswitch_1
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .end local v3           #doc:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 134
    .local v6, libEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 135
    .local v8, subsDocId:Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    .line 136
    .local v7, subDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v8}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, appDocId:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 138
    .local v0, appDoc:Lcom/google/android/finsky/api/model/Document;
    if-nez v7, :cond_1

    .line 139
    const-string v10, "Subscription %s is unavailable, ignoring this entry"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v8, v11, v13

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    :cond_1
    if-nez v0, :cond_2

    .line 141
    const-string v10, "Parent app %s of subscription %s is unavailable, ignoring this entry"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v13

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v11, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-virtual {v11, v10, v7, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->addEntry(Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    .line 147
    .end local v0           #appDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v1           #appDocId:Ljava/lang/String;
    .end local v6           #libEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    .end local v7           #subDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v8           #subsDocId:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v10}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sortDocs()V

    .line 149
    iget-boolean v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapterInitialized:Z

    if-nez v10, :cond_5

    .line 150
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    const v11, 0x7f080179

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    .line 152
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 154
    iget-boolean v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mUseTwoColumnLayout:Z

    if-eqz v10, :cond_4

    .line 155
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 157
    :cond_4
    iput-boolean v12, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapterInitialized:Z

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->restoreTabSelection()V

    .line 160
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->syncViewToState()V

    .line 161
    return-void

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 204
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->notifyDataSetChanged()V

    .line 208
    :cond_1
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter "library"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->requestData()V

    .line 213
    return-void
.end method

.method protected requestData()V
    .locals 10

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->clearState()V

    .line 75
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 76
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v8}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->clear()V

    .line 77
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    .line 79
    .local v5, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 80
    .local v1, docIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v8}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    .line 84
    .local v0, currentLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/library/AccountLibrary;

    .line 85
    .local v6, library:Lcom/google/android/finsky/library/AccountLibrary;
    if-eq v6, v0, :cond_0

    .line 86
    invoke-virtual {v6}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 87
    .local v7, subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    iget-object v9, v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v8, v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v8, v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #library:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v7           #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 95
    .restart local v7       #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    iget-object v9, v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v8, v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v8, v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->docId:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v7           #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 103
    .local v2, fetchDocIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    new-instance v8, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v8, v9, v2}, Lcom/google/android/finsky/api/model/DfeBulkDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V

    iput-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    .line 106
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v8, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v8, p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 107
    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v8, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v8, p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 108
    return-void
.end method

.method protected retryFromError()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->requestData()V

    .line 180
    return-void
.end method
