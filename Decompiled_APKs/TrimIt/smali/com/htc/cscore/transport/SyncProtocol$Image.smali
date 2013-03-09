.class public final Lcom/htc/cscore/transport/SyncProtocol$Image;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    }
.end annotation


# static fields
.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Image;


# instance fields
.field private hasValue:Z

.field private memoizedSerializedSize:I

.field private value_:Lcom/htc/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$Image;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Image;

    .line 544
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 548
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 549
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 308
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->value_:Lcom/htc/protobuf/ByteString;

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->memoizedSerializedSize:I

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;-><init>()V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/cscore/transport/SyncProtocol$Image;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/htc/cscore/transport/SyncProtocol$Image;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->value_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$Image;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Image;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1

    .prologue
    .line 398
    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$1000()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$Image;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 401
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Image;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$Image;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$Image;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 327
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->memoizedSerializedSize:I

    .line 328
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 337
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 330
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 336
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->memoizedSerializedSize:I

    move v1, v0

    .line 337
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValue()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->value_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$Image;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 323
    return-void
.end method
