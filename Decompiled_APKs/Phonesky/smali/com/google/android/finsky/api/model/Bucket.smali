.class public Lcom/google/android/finsky/api/model/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 29
    return-void
.end method


# virtual methods
.method public getAnalyticsCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackend()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendId()I

    move-result v0

    return v0
.end method

.method public getBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 5
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
    .line 130
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    if-nez v2, :cond_0

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    .line 132
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 133
    .local v0, child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    new-instance v3, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0           #child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Bucket;->mChildren:Ljava/util/List;

    return-object v2
.end method

.method public getContainerWithBannerTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v0

    return-object v0
.end method

.method public getEstimatedResults()I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getEstimatedResults()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContainerWithBannerTemplate()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEditorialSeriesContainer()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreItems()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

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

.method public hasRecommendationsTemplate()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrdered()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Bucket;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getOrdered()Z

    move-result v0

    goto :goto_0
.end method
