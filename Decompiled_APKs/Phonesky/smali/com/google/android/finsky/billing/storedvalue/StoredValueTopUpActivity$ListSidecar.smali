.class public final Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
.super Lcom/google/android/finsky/fragments/SidecarFragment;
.source "StoredValueTopUpActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListSidecar"
.end annotation


# instance fields
.field private mDfeList:Lcom/google/android/finsky/api/model/DfeList;

.field private mLastError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    .locals 3
    .parameter "account"
    .parameter "dfeListUrl"

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "list_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;-><init>()V

    .line 77
    .local v1, result:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public getDocuments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    .line 117
    .local v0, bucket:Lcom/google/android/finsky/api/model/Bucket;
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLastError()Lcom/android/volley/VolleyError;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mLastError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 112
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setState(II)V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "authAccount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    .line 88
    .local v1, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    iget-object v3, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "list_url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, dfeListUrl:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/api/model/DfeList;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    .line 94
    .end local v2           #dfeListUrl:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setState(II)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setState(II)V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "volleyError"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mLastError:Lcom/android/volley/VolleyError;

    .line 137
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setState(II)V

    .line 138
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "list"

    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    return-void
.end method

.method protected restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    .line 108
    return-void
.end method
