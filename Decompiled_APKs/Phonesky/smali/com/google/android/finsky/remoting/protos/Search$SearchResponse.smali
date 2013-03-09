.class public final Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResponse"
.end annotation


# instance fields
.field private aggregateQuery_:Z

.field private bucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private doc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation
.end field

.field private hasAggregateQuery:Z

.field private hasOriginalQuery:Z

.field private hasSuggestedQuery:Z

.field private originalQuery_:Ljava/lang/String;

.field private relatedSearch_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedQuery_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->originalQuery_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->suggestedQuery_:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->aggregateQuery_:Z

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public addDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0
.end method

.method public addRelatedSearch(Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object p0
.end method

.method public getAggregateQuery()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->aggregateQuery_:Z

    return v0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->bucket_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSerializedSize()I

    .line 213
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    return v0
.end method

.method public getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .locals 1
    .parameter "index"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getDocCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->doc_:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->originalQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedSearchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->relatedSearch_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getAggregateQuery()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 232
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 235
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDocList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 236
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 239
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getRelatedSearchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .line 240
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 243
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    :cond_5
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->cachedSize:I

    .line 244
    return v2
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->suggestedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateQuery()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery:Z

    return v0
.end method

.method public hasOriginalQuery()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery:Z

    return v0
.end method

.method public hasSuggestedQuery()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 253
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    :sswitch_0
    return-object p0

    .line 263
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->setOriginalQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 267
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->setSuggestedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 271
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->setAggregateQuery(Z)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 275
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;-><init>()V

    .line 276
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 281
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 282
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 283
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->addDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 287
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;-><init>()V

    .line 288
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 289
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->addRelatedSearch(Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    goto :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateQuery(Z)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery:Z

    .line 54
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->aggregateQuery_:Z

    .line 55
    return-object p0
.end method

.method public setOriginalQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->originalQuery_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setSuggestedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->suggestedQuery_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasOriginalQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasAggregateQuery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getAggregateQuery()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 196
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 198
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDocList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 199
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 201
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getRelatedSearchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;

    .line 202
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 204
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;
    :cond_5
    return-void
.end method
