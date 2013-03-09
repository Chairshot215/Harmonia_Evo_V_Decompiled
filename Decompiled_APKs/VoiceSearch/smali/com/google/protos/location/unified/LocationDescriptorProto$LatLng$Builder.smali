.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;",
        ">;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LatLngOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1471
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1472
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->maybeForceBuilderInitialization()V

    .line 1473
    return-void
.end method

.method static synthetic access$1000()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1

    .prologue
    .line 1466
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1

    .prologue
    .line 1478
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1476
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 2

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    .line 1500
    .local v0, result:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1501
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1503
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 5

    .prologue
    .line 1507
    new-instance v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V

    .line 1508
    .local v1, result:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->bitField0_:I

    .line 1509
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1510
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1511
    or-int/lit8 v2, v2, 0x1

    .line 1513
    :cond_0
    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->latitudeE7_:I

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->access$1202(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I

    .line 1514
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1515
    or-int/lit8 v2, v2, 0x2

    .line 1517
    :cond_1
    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->longitudeE7_:I

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->access$1302(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I

    .line 1518
    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->access$1402(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;I)I

    .line 1519
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 2

    .prologue
    .line 1491
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 1495
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1534
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1466
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1466
    check-cast p1, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1466
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1541
    const/4 v2, 0x0

    .line 1543
    .local v2, parsedMessage:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    :try_start_0
    sget-object v3, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    if-eqz v2, :cond_0

    .line 1549
    invoke-virtual {p0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 1552
    :cond_0
    return-object p0

    .line 1544
    :catch_0
    move-exception v1

    .line 1545
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-object v2, v0

    .line 1546
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1548
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1549
    invoke-virtual {p0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1523
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-object p0

    .line 1524
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1525
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->setLatitudeE7(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 1527
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->setLongitudeE7(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    goto :goto_0
.end method

.method public setLatitudeE7(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1565
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->bitField0_:I

    .line 1566
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->latitudeE7_:I

    .line 1568
    return-object p0
.end method

.method public setLongitudeE7(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1586
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->bitField0_:I

    .line 1587
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->longitudeE7_:I

    .line 1589
    return-object p0
.end method
