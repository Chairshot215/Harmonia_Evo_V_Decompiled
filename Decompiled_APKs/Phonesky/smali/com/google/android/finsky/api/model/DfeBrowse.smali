.class public Lcom/google/android/finsky/api/model/DfeBrowse;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeBrowse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/DfeBrowse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeBrowse$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeBrowse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .locals 0
    .parameter "dfeApi"
    .parameter "landingUrl"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 38
    invoke-interface {p1, p2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V
    .locals 0
    .parameter "browseResponse"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 30
    return-void
.end method


# virtual methods
.method public buildContentList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 3
    .parameter "dfeApi"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 3
    .parameter "dfeApi"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getBreadcrumbList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCategories()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPromotionalItems()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->clearErrors()V

    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 106
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse;->onResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    return-void
.end method
