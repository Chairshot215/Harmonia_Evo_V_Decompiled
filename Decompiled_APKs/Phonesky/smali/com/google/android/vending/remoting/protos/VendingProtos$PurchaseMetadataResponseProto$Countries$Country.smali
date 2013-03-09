.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Country"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    }
.end annotation


# instance fields
.field private allowsReducedBillingAddress_:Z

.field private cachedSize:I

.field private countryCode_:Ljava/lang/String;

.field private countryName_:Ljava/lang/String;

.field private hasAllowsReducedBillingAddress:Z

.field private hasCountryCode:Z

.field private hasCountryName:Z

.field private hasPaypalCountryInfo:Z

.field private instrumentAddressSpec_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;",
            ">;"
        }
    .end annotation
.end field

.field private paypalCountryInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11953
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode_:Ljava/lang/String;

    .line 12108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryName_:Ljava/lang/String;

    .line 12125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->paypalCountryInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    .line 12145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress_:Z

    .line 12161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->instrumentAddressSpec_:Ljava/util/List;

    .line 12234
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->cachedSize:I

    .line 11953
    return-void
.end method


# virtual methods
.method public addInstrumentAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 12178
    if-nez p1, :cond_0

    .line 12179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12181
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->instrumentAddressSpec_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->instrumentAddressSpec_:Ljava/util/List;

    .line 12184
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->instrumentAddressSpec_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12185
    return-object p0
.end method

.method public getAllowsReducedBillingAddress()Z
    .locals 1

    .prologue
    .line 12146
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 12237
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->cachedSize:I

    if-gez v0, :cond_0

    .line 12239
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getSerializedSize()I

    .line 12241
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->cachedSize:I

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12092
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12109
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryName_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentAddressSpecList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12164
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->instrumentAddressSpec_:Ljava/util/List;

    return-object v0
.end method

.method public getPaypalCountryInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    .locals 1

    .prologue
    .line 12127
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->paypalCountryInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 12246
    const/4 v2, 0x0

    .line 12247
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12248
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12251
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12252
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12255
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasPaypalCountryInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12256
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getPaypalCountryInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12259
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasAllowsReducedBillingAddress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12260
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 12263
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getInstrumentAddressSpecList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    .line 12264
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 12267
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    :cond_4
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->cachedSize:I

    .line 12268
    return v2
.end method

.method public hasAllowsReducedBillingAddress()Z
    .locals 1

    .prologue
    .line 12147
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasAllowsReducedBillingAddress:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 12093
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryCode:Z

    return v0
.end method

.method public hasCountryName()Z
    .locals 1

    .prologue
    .line 12110
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryName:Z

    return v0
.end method

.method public hasPaypalCountryInfo()Z
    .locals 1

    .prologue
    .line 12126
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasPaypalCountryInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12276
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12277
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 12281
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12282
    :sswitch_0
    return-object p0

    .line 12287
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    goto :goto_0

    .line 12291
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setCountryName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    goto :goto_0

    .line 12295
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;-><init>()V

    .line 12296
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 12297
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setPaypalCountryInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    goto :goto_0

    .line 12301
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->setAllowsReducedBillingAddress(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    goto :goto_0

    .line 12305
    :sswitch_5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;-><init>()V

    .line 12306
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 12307
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->addInstrumentAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    goto :goto_0

    .line 12277
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x30 -> :sswitch_4
        0x3b -> :sswitch_5
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
    .line 11951
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    return-object v0
.end method

.method public setAllowsReducedBillingAddress(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 12149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasAllowsReducedBillingAddress:Z

    .line 12150
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress_:Z

    .line 12151
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 12095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryCode:Z

    .line 12096
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode_:Ljava/lang/String;

    .line 12097
    return-object p0
.end method

.method public setCountryName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 12112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryName:Z

    .line 12113
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryName_:Ljava/lang/String;

    .line 12114
    return-object p0
.end method

.method public setPaypalCountryInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 12129
    if-nez p1, :cond_0

    .line 12130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasPaypalCountryInfo:Z

    .line 12133
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->paypalCountryInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    .line 12134
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
    .line 12217
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12218
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12220
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasCountryName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12221
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12223
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasPaypalCountryInfo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12224
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getPaypalCountryInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 12226
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->hasAllowsReducedBillingAddress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12227
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 12229
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getInstrumentAddressSpecList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    .line 12230
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 12232
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    :cond_4
    return-void
.end method
