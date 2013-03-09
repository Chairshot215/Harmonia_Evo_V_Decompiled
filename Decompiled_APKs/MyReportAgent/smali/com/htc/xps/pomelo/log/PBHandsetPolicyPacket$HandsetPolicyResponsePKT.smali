.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandsetPolicyResponsePKT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    }
.end annotation


# static fields
.field public static final POLICY_FIELD_NUMBER:I = 0xb

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;


# instance fields
.field private hasStatus:Z

.field private hasUpdateTimestamp:Z

.field private memoizedSerializedSize:I

.field private policy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

.field private updateTimestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 840
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 844
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internalForceInit()V

    .line 845
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 474
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 481
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->updateTimestamp_:J

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->memoizedSerializedSize:I

    .line 385
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    iput-wide p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->updateTimestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$1100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1

    .prologue
    .line 596
    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1400()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 599
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;->access$1300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    return-object v0
.end method

.method public getPolicy(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    return-object v0
.end method

.method public getPolicyCount()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->policy_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 517
    iget v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->memoizedSerializedSize:I

    .line 518
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 535
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 520
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 526
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUpdateTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    .line 530
    .local v0, element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    const/16 v4, 0xb

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 533
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 534
    iput v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->memoizedSerializedSize:I

    move v3, v2

    .line 535
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->status_:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    return-object v0
.end method

.method public getUpdateTimestamp()J
    .locals 2

    .prologue
    .line 483
    iget-wide v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->updateTimestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus:Z

    return v0
.end method

.method public hasUpdateTimestamp()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$1200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;
    .locals 1

    .prologue
    .line 601
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getStatus()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->hasUpdateTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUpdateTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getPolicyList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;

    .line 510
    .local v0, element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 512
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 513
    return-void
.end method
