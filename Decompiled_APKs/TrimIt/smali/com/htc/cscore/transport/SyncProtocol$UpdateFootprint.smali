.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateFootprint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINT_FIELD_NUMBER:I = 0x4b

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;


# instance fields
.field private footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

.field private hasFootprint:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8235
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 8515
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 8519
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 8520
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8233
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 8257
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 8275
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->memoizedSerializedSize:I

    .line 8233
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8230
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;-><init>()V

    return-void
.end method

.method static synthetic access$24202(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8230
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z

    return p1
.end method

.method static synthetic access$24300(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8230
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method static synthetic access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8230
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 8237
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8246
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 8348
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$24000()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8351
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8326
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8293
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8299
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8338
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8344
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8315
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8321
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8304
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8310
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 8241
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 8259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 8277
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->memoizedSerializedSize:I

    .line 8278
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8287
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8280
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8281
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8282
    const/16 v2, 0x4b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8285
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 8286
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->memoizedSerializedSize:I

    move v1, v0

    .line 8287
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasFootprint()Z
    .locals 1

    .prologue
    .line 8258
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8251
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8262
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z

    if-nez v1, :cond_1

    .line 8264
    :cond_0
    :goto_0
    return v0

    .line 8263
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8264
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 8349
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 8353
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

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
    .line 8269
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8270
    const/16 v0, 0x4b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 8272
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 8273
    return-void
.end method
