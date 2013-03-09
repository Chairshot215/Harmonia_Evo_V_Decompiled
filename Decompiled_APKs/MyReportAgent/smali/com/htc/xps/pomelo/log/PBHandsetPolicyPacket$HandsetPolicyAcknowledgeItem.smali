.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandsetPolicyAcknowledgeItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;
    }
.end annotation


# static fields
.field public static final MGMT_GROUP_ID_FIELD_NUMBER:I = 0x1

.field public static final POLICY_GROUP_ID_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;


# instance fields
.field private hasMgmtGroupId:Z

.field private hasPolicyGroupId:Z

.field private hasStatus:Z

.field private memoizedSerializedSize:I

.field private mgmtGroupId_:Ljava/lang/String;

.field private policyGroupId_:Ljava/lang/String;

.field private status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2421
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    .line 2833
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2837
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internalForceInit()V

    .line 2838
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2419
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 2508
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->mgmtGroupId_:Ljava/lang/String;

    .line 2515
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->policyGroupId_:Ljava/lang/String;

    .line 2522
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;->POLICY_DONE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    .line 2544
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->memoizedSerializedSize:I

    .line 2419
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2416
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;-><init>()V

    return-void
.end method

.method static synthetic access$6402(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasMgmtGroupId:Z

    return p1
.end method

.method static synthetic access$6502(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->mgmtGroupId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasPolicyGroupId:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->policyGroupId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasStatus:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1

    .prologue
    .line 2423
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2432
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$5900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    .locals 1

    .prologue
    .line 2625
    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6200()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2628
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2603
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2609
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2570
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2576
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2615
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2621
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2592
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2598
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2581
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2587
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;->access$6100(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;
    .locals 1

    .prologue
    .line 2427
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;

    return-object v0
.end method

.method public getMgmtGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->mgmtGroupId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->policyGroupId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2546
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->memoizedSerializedSize:I

    .line 2547
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2564
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2549
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2550
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasMgmtGroupId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2551
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getMgmtGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2554
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasPolicyGroupId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2555
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getPolicyGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2558
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2559
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2562
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2563
    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->memoizedSerializedSize:I

    move v1, v0

    .line 2564
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    return-object v0
.end method

.method public hasMgmtGroupId()Z
    .locals 1

    .prologue
    .line 2509
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasMgmtGroupId:Z

    return v0
.end method

.method public hasPolicyGroupId()Z
    .locals 1

    .prologue
    .line 2516
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasPolicyGroupId:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2523
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasStatus:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2437
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$6000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2527
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    .locals 1

    .prologue
    .line 2626
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;
    .locals 1

    .prologue
    .line 2630
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$Builder;

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
    .line 2532
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasMgmtGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2533
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getMgmtGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2535
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasPolicyGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getPolicyGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2538
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2539
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem$AckStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2541
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 2542
    return-void
.end method
