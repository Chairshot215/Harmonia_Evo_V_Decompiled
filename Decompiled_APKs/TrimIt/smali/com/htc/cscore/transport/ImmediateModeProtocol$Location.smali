.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    }
.end annotation


# static fields
.field public static final LATITUDE_FIELD_NUMBER:I = 0x1

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;


# instance fields
.field private hasLatitude:Z

.field private hasLongitude:Z

.field private latitude_:D

.field private longitude_:D

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1213
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 1508
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1512
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internalForceInit()V

    .line 1513
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1211
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 1235
    iput-wide v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->latitude_:D

    .line 1242
    iput-wide v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->longitude_:D

    .line 1263
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->memoizedSerializedSize:I

    .line 1211
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;-><init>()V

    return-void
.end method

.method static synthetic access$3502(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1208
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1208
    iput-wide p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$3702(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1208
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1208
    iput-wide p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->longitude_:D

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 1215
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1224
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 1

    .prologue
    .line 1340
    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3300()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1343
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1324
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1291
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1307
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1296
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;->access$3200(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 1219
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 1237
    iget-wide v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 1244
    iget-wide v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->longitude_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->memoizedSerializedSize:I

    .line 1266
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1279
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1268
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1269
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1270
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 1273
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1274
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 1277
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1278
    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->memoizedSerializedSize:I

    move v1, v0

    .line 1279
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1229
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1247
    iget-boolean v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude:Z

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v0

    .line 1248
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude:Z

    if-eqz v1, :cond_0

    .line 1249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 1

    .prologue
    .line 1341
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;
    .locals 1

    .prologue
    .line 1345
    invoke-static {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 1261
    return-void
.end method
