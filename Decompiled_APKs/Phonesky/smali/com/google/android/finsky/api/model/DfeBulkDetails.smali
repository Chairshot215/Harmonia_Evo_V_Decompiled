.class public Lcom/google/android/finsky/api/model/DfeBulkDetails;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeBulkDetails.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAnalyticsCookie:Ljava/lang/String;

.field private mBulkDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

.field private final mDocids:Ljava/util/List;
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
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V
    .locals 1
    .parameter "dfeApi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, docids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter "dfeApi"
    .parameter
    .parameter "analyticsCookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, docids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 49
    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mAnalyticsCookie:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDocids:Ljava/util/List;

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDocids:Ljava/util/List;

    invoke-interface {p1, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 52
    return-void
.end method


# virtual methods
.method public getDocuments()Ljava/util/List;
    .locals 7
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
    .line 59
    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    if-nez v3, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 76
    :cond_0
    return-object v2

    .line 63
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntryCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;->getEntry(I)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v0

    .line 66
    .local v0, doc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    if-nez v0, :cond_3

    .line 69
    sget-boolean v3, Lcom/google/android/finsky/utils/DfeLog;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 70
    const-string v3, "Null document for requested docid: %s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDocids:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_3
    new-instance v3, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mAnalyticsCookie:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->onResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)V

    return-void
.end method
