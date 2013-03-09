.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identifier"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasIdentifier:Z

.field private hasType:Z

.field private identifier_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->type_:I

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->identifier_:Ljava/lang/String;

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->cachedSize:I

    .line 341
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->cachedSize:I

    if-gez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->getSerializedSize()I

    .line 406
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->cachedSize:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->identifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasIdentifier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->cachedSize:I

    .line 421
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->type_:I

    return v0
.end method

.method public hasIdentifier()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasIdentifier:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 430
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    :sswitch_0
    return-object p0

    .line 440
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->setType(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;

    goto :goto_0

    .line 444
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;

    goto :goto_0

    .line 430
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x98 -> :sswitch_1
        0xa2 -> :sswitch_2
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
    .line 338
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;

    move-result-object v0

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    .locals 1
    .parameter "value"

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasIdentifier:Z

    .line 368
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->identifier_:Ljava/lang/String;

    .line 369
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;
    .locals 1
    .parameter "value"

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasType:Z

    .line 351
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->type_:I

    .line 352
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->hasIdentifier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails$Identifier;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 397
    :cond_1
    return-void
.end method
