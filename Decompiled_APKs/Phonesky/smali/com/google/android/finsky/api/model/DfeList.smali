.class public Lcom/google/android/finsky/api/model/DfeList;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
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
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mFilteredDocId:Ljava/lang/String;

.field private final mInitialListUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeList$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V
    .locals 1
    .parameter "api"
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 62
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;Z)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/util/List;IZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "currentCount"
    .parameter "autoLoadNextPage"
    .parameter "filteredDocId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/util/List;IZ)V

    .line 24
    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v0, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;IZLjava/lang/String;Lcom/google/android/finsky/api/model/DfeList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Ljava/util/List;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public filterDocId(Ljava/lang/String;)V
    .locals 0
    .parameter "docId"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public getInitialUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .locals 10
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 77
    invoke-virtual {p1, v9}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v6

    .line 78
    .local v6, rootDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, cookie:Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 81
    .local v4, item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v2, v4, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    .line 82
    .local v2, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 87
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v0           #cookie:Ljava/lang/String;
    .end local v2           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    .restart local v0       #cookie:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 90
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {p1, v9}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v0           #cookie:Ljava/lang/String;
    .end local v6           #rootDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_4
    return-object v5

    .line 92
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 94
    .local v1, doc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {v8, v1}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, nextPageUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v0

    .line 159
    .local v0, dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    .line 163
    .end local v0           #dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getNextPageUrl(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V
    .locals 0
    .parameter "api"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 122
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 124
    .local v1, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v1           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mAutoLoadNextPage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void

    .line 128
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
