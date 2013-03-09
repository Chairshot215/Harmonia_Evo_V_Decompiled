.class public Lcom/google/android/finsky/activities/CategoryViewBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "CategoryViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/DfeBrowse;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 8
    .parameter "view"
    .parameter "backendId"
    .parameter "currentBrowseUrl"
    .parameter "toc"

    .prologue
    .line 19
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 20
    .local v7, listView:Landroid/widget/ListView;
    new-instance v0, Lcom/google/android/finsky/adapters/CategoryAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CategoryViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CategoryViewBinder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CategoryViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/adapters/CategoryAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

    .line 22
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

    .line 28
    return-void
.end method
