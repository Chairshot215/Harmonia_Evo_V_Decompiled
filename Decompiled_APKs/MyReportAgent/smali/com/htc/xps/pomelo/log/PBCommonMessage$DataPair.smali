.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataPair"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;


# instance fields
.field private hasKey:Z

.field private hasValue:Z

.field private key_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 660
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    .line 959
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 963
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->internalForceInit()V

    .line 964
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->key_:Ljava/lang/String;

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->value_:Ljava/lang/String;

    .line 708
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->memoizedSerializedSize:I

    .line 658
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;-><init>()V

    return-void
.end method

.method static synthetic access$3002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->key_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->value_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1

    .prologue
    .line 662
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$2500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1

    .prologue
    .line 785
    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2800()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 788
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 747
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1

    .prologue
    .line 666
    sget-object v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->defaultInstance:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 710
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->memoizedSerializedSize:I

    .line 711
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 724
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 713
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 719
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 723
    iput v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->memoizedSerializedSize:I

    move v1, v0

    .line 724
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 676
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$2600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1

    .prologue
    .line 786
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1

    .prologue
    .line 790
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

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
    .line 699
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 706
    return-void
.end method
