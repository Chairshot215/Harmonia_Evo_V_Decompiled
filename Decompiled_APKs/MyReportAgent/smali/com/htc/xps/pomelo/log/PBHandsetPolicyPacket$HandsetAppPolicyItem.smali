.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandsetAppPolicyItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    }
.end annotation


# static fields
.field public static final APP_ID_FIELD_NUMBER:I = 0x1

.field public static final CATEGORY_ITEM_FIELD_NUMBER:I = 0x3

.field public static final END_TIME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;


# instance fields
.field private appId_:Ljava/lang/String;

.field private categoryItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private endTime_:J

.field private hasAppId:Z

.field private hasEndTime:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1251
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 1633
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1637
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internalForceInit()V

    .line 1638
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1249
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->appId_:Ljava/lang/String;

    .line 1280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->endTime_:J

    .line 1286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->memoizedSerializedSize:I

    .line 1249
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1246
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1246
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1246
    iput-boolean p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1246
    iput-wide p1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->endTime_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1

    .prologue
    .line 1253
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$3100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1

    .prologue
    .line 1395
    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3400()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1398
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1373
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1340
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1346
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1385
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1391
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1351
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    #calls: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    return-object v0
.end method

.method public getCategoryItemCount()I
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoryItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1

    .prologue
    .line 1257
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->defaultInstance:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->endTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1316
    iget v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->memoizedSerializedSize:I

    .line 1317
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1334
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1319
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1320
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1321
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1324
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1325
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getEndTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1328
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItemList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    .line 1329
    .local v0, element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1332
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1333
    iput v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->memoizedSerializedSize:I

    move v3, v2

    .line 1334
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId:Z

    return v0
.end method

.method public hasEndTime()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1267
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->access$3200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1

    .prologue
    .line 1396
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1

    .prologue
    .line 1400
    invoke-static {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->newBuilder(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

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
    .line 1302
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1306
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getEndTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1308
    :cond_1
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItemList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    .line 1309
    .local v0, element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 1311
    .end local v0           #element:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 1312
    return-void
.end method
