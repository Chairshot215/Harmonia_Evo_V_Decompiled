.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandsetPolicyItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    }
.end annotation


# static fields
.field public static final APP_POLICY_ITEM_FIELD_NUMBER:I = 0x3

.field public static final MGMT_GROUP_ID_FIELD_NUMBER:I = 0x1

.field public static final POLICY_GROUP_ID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;


# instance fields
.field private appPolicyItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private hasMgmtGroupId:Z

.field private hasPolicyGroupId:Z

.field private memoizedSerializedSize:I

.field private mgmtGroupId_:Ljava/lang/String;

.field private policyGroupId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 853
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    .line 1238
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1242
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internalForceInit()V

    .line 1243
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->mgmtGroupId_:Ljava/lang/String;

    .line 882
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->policyGroupId_:Ljava/lang/String;

    .line 888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->appPolicyItem_:Ljava/util/List;

    .line 916
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->memoizedSerializedSize:I

    .line 851
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->appPolicyItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->appPolicyItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasMgmtGroupId:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->mgmtGroupId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 848
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasPolicyGroupId:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->policyGroupId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1

    .prologue
    .line 855
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 864
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$2100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    .locals 1

    .prologue
    .line 997
    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2400()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1000
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 959
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;->access$2300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppPolicyItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->appPolicyItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    return-object v0
.end method

.method public getAppPolicyItemCount()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->appPolicyItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAppPolicyItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->appPolicyItem_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1

    .prologue
    .line 859
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    return-object v0
.end method

.method public getMgmtGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->mgmtGroupId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->policyGroupId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 918
    iget v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->memoizedSerializedSize:I

    .line 919
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 936
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 921
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 922
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasMgmtGroupId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 923
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getMgmtGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasPolicyGroupId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 927
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getPolicyGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 930
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getAppPolicyItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 931
    .local v0, element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 934
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 935
    iput v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->memoizedSerializedSize:I

    move v3, v2

    .line 936
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasMgmtGroupId()Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasMgmtGroupId:Z

    return v0
.end method

.method public hasPolicyGroupId()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasPolicyGroupId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 869
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$2200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    .locals 1

    .prologue
    .line 998
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;
    .locals 1

    .prologue
    .line 1002
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasMgmtGroupId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getMgmtGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->hasPolicyGroupId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 908
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getPolicyGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getAppPolicyItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 911
    .local v0, element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 913
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 914
    return-void
.end method
