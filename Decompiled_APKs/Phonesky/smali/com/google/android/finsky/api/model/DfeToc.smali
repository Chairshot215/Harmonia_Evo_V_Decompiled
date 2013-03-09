.class public Lcom/google/android/finsky/api/model/DfeToc;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeToc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCorpusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedBackendId:I

.field private final mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/google/android/finsky/api/model/DfeToc$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeToc$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeToc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 26
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mSelectedBackendId:I

    .line 28
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 37
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 38
    .local v1, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    .end local v1           #metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .locals 2
    .parameter "backendId"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    return-object v0
.end method

.method public getCorpusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    return-object v0
.end method

.method public getHomeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconOverrideUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTosCheckboxTextMarketingEmails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTosContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTosToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentUserPreviouslyOptedIn()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getUserSettings()Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getTosCheckboxMarketingEmailsOptedIn()Z

    move-result v0

    return v0
.end method

.method public hasIconOverrideUrl()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasIconOverrideUrl()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    return-void
.end method
