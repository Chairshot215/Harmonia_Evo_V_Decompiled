.class public final Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAggregatePersonImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    }
.end annotation


# static fields
.field public static final FILENAME_FIELD_NUMBER:I = 0x4f9

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;


# instance fields
.field private filename_:Ljava/lang/String;

.field private hasFilename:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2549
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 2807
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 2812
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 2571
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->filename_:Ljava/lang/String;

    .line 2588
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->memoizedSerializedSize:I

    .line 2547
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2544
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;-><init>()V

    return-void
.end method

.method static synthetic access$7102(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2544
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->filename_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2551
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2560
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$6600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2661
    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6900()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2664
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2639
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2645
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2606
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2612
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2651
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2657
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2628
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2634
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2617
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2623
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->access$6800(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 2555
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->filename_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2590
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->memoizedSerializedSize:I

    .line 2591
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2600
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2593
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2594
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2595
    const/16 v2, 0x4f9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2598
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2599
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->memoizedSerializedSize:I

    move v1, v0

    .line 2600
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasFilename()Z
    .locals 1

    .prologue
    .line 2572
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2565
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$6700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2576
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2577
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2662
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 2666
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

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
    .line 2582
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->hasFilename()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2583
    const/16 v0, 0x4f9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2585
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 2586
    return-void
.end method
