.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemApp"
.end annotation


# instance fields
.field private cachedSize:I

.field private certificateHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasPackageName:Z

.field private hasVersionCode:Z

.field private packageName_:Ljava/lang/String;

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName_:Ljava/lang/String;

    .line 1044
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode_:I

    .line 1060
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash_:Ljava/util/List;

    .line 1118
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->cachedSize:I

    .line 1022
    return-void
.end method


# virtual methods
.method public addCertificateHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 1
    .parameter "value"

    .prologue
    .line 1077
    if-nez p1, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash_:Ljava/util/List;

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1121
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->cachedSize:I

    if-gez v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getSerializedSize()I

    .line 1125
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->cachedSize:I

    return v0
.end method

.method public getCertificateHashList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash_:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1130
    const/4 v3, 0x0

    .line 1131
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1132
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1136
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getVersionCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1140
    :cond_1
    const/4 v0, 0x0

    .line 1141
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getCertificateHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1142
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1145
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getCertificateHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1148
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->cachedSize:I

    .line 1149
    return v3
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode_:I

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName:Z

    return v0
.end method

.method public hasVersionCode()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1158
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1162
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    :sswitch_0
    return-object p0

    .line 1168
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    goto :goto_0

    .line 1172
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    goto :goto_0

    .line 1176
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->addCertificateHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    goto :goto_0

    .line 1158
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0x60 -> :sswitch_2
        0x6a -> :sswitch_3
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
    .line 1020
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    move-result-object v0

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 1
    .parameter "value"

    .prologue
    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName:Z

    .line 1032
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName_:Ljava/lang/String;

    .line 1033
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 1
    .parameter "value"

    .prologue
    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    .line 1049
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode_:I

    .line 1050
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
    .line 1107
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->getCertificateHashList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 1114
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1116
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    return-void
.end method
