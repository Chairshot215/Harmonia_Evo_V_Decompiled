.class public final Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BulkDetailsRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private docid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasIncludeChildDocs:Z

.field private includeChildDocs_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->includeChildDocs_:Z

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    .line 247
    return-void
.end method


# virtual methods
.method public addDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getSerializedSize()I

    .line 328
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    return v0
.end method

.method public getDocidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->docid_:Ljava/util/List;

    return-object v0
.end method

.method public getIncludeChildDocs()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->includeChildDocs_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 333
    const/4 v3, 0x0

    .line 335
    .local v3, size:I
    const/4 v0, 0x0

    .line 336
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 340
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 341
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getDocidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 343
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getIncludeChildDocs()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 347
    :cond_1
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->cachedSize:I

    .line 348
    return v3
.end method

.method public hasIncludeChildDocs()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 357
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    :sswitch_0
    return-object p0

    .line 367
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->addDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    goto :goto_0

    .line 371
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->setIncludeChildDocs(Z)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;

    move-result-object v0

    return-object v0
.end method

.method public setIncludeChildDocs(Z)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs:Z

    .line 290
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->includeChildDocs_:Z

    .line 291
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
    .line 313
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getDocidList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 314
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->hasIncludeChildDocs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsRequest;->getIncludeChildDocs()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 319
    :cond_1
    return-void
.end method
