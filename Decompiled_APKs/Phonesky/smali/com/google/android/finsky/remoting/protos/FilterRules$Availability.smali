.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Availability"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    }
.end annotation


# instance fields
.field private availableIfOwned_:Z

.field private cachedSize:I

.field private filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

.field private hasAvailableIfOwned:Z

.field private hasFilterInfo:Z

.field private hasOfferType:Z

.field private hasOwnershipInfo:Z

.field private hasRestriction:Z

.field private hasRule:Z

.field private install_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Install;",
            ">;"
        }
    .end annotation
.end field

.field private offerType_:I

.field private ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

.field private perDeviceAvailabilityRestriction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;",
            ">;"
        }
    .end annotation
.end field

.field private restriction_:I

.field private rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 940
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1154
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    .line 1188
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    .line 1205
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    .line 1224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    .line 1258
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 1277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    .line 1311
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    .line 1386
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    .line 940
    return-void
.end method


# virtual methods
.method public addInstall(Lcom/google/android/finsky/remoting/protos/Common$Install;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1241
    if-nez p1, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    return-object p0
.end method

.method public addPerDeviceAvailabilityRestriction(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1294
    if-nez p1, :cond_0

    .line 1295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    return-object p0
.end method

.method public getAvailableIfOwned()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1389
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    if-gez v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getSerializedSize()I

    .line 1393
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    return v0
.end method

.method public getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    return-object v0
.end method

.method public getInstallList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Install;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->install_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    return v0
.end method

.method public getOwnershipInfo()Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    return-object v0
.end method

.method public getPerDeviceAvailabilityRestrictionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    return-object v0
.end method

.method public getRestriction()I
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    return v0
.end method

.method public getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1398
    const/4 v2, 0x0

    .line 1399
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1400
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1404
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1407
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1408
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1411
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getPerDeviceAvailabilityRestrictionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    .line 1412
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1415
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1416
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1419
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getInstallList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Install;

    .line 1420
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1423
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1424
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1427
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1428
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOwnershipInfo()Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1431
    :cond_7
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    .line 1432
    return v2
.end method

.method public hasAvailableIfOwned()Z
    .locals 1

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    return v0
.end method

.method public hasFilterInfo()Z
    .locals 1

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType:Z

    return v0
.end method

.method public hasOwnershipInfo()Z
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo:Z

    return v0
.end method

.method public hasRestriction()Z
    .locals 1

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction:Z

    return v0
.end method

.method public hasRule()Z
    .locals 1

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1441
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1445
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1446
    :sswitch_0
    return-object p0

    .line 1451
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1455
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1459
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 1460
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1461
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1465
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;-><init>()V

    .line 1466
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1467
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->addPerDeviceAvailabilityRestriction(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1471
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setAvailableIfOwned(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1475
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Install;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Install;-><init>()V

    .line 1476
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Install;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1477
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->addInstall(Lcom/google/android/finsky/remoting/protos/Common$Install;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1481
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Install;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;-><init>()V

    .line 1482
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1483
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setFilterInfo(Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1487
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;-><init>()V

    .line 1488
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1489
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setOwnershipInfo(Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 1441
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_1
        0x30 -> :sswitch_2
        0x3a -> :sswitch_3
        0x4b -> :sswitch_4
        0x68 -> :sswitch_5
        0x72 -> :sswitch_6
        0x82 -> :sswitch_7
        0x8a -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    return-object v0
.end method

.method public setAvailableIfOwned(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    .line 1176
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    .line 1177
    return-object p0
.end method

.method public setFilterInfo(Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1315
    if-nez p1, :cond_0

    .line 1316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo:Z

    .line 1319
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    .line 1320
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType:Z

    .line 1193
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    .line 1194
    return-object p0
.end method

.method public setOwnershipInfo(Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1209
    if-nez p1, :cond_0

    .line 1210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1212
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo:Z

    .line 1213
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->ownershipInfo_:Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    .line 1214
    return-object p0
.end method

.method public setRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction:Z

    .line 1159
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    .line 1160
    return-object p0
.end method

.method public setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .locals 1
    .parameter "value"

    .prologue
    .line 1262
    if-nez p1, :cond_0

    .line 1263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1265
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule:Z

    .line 1266
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 1267
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1364
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1367
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1369
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getPerDeviceAvailabilityRestrictionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    .line 1370
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1372
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1373
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1375
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getInstallList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Install;

    .line 1376
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1378
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Install;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasFilterInfo()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1379
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1381
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOwnershipInfo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1382
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOwnershipInfo()Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1384
    :cond_7
    return-void
.end method
