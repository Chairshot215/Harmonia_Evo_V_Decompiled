.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasRequestProperties:Z

.field private requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24623
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 25942
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    .line 26000
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    .line 24623
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 25959
    if-nez p1, :cond_0

    .line 25960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25962
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    .line 25965
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25966
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 26003
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 26005
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getSerializedSize()I

    .line 26007
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    return v0
.end method

.method public getRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25945
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->request_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1

    .prologue
    .line 25925
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 26012
    const/4 v2, 0x0

    .line 26013
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26014
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26017
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    .line 26018
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 26021
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    :cond_1
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->cachedSize:I

    .line 26022
    return v2
.end method

.method public hasRequestProperties()Z
    .locals 1

    .prologue
    .line 25924
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26030
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 26031
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 26035
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26036
    :sswitch_0
    return-object p0

    .line 26041
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    .line 26042
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 26043
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->setRequestProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    goto :goto_0

    .line 26047
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;-><init>()V

    .line 26048
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 26049
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->addRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    goto :goto_0

    .line 26031
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
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
    .line 24621
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setRequestProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 25927
    if-nez p1, :cond_0

    .line 25928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25930
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties:Z

    .line 25931
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->requestProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 25932
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
    .line 25992
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->hasRequestProperties()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25993
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25995
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->getRequestList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    .line 25996
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 25998
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    :cond_1
    return-void
.end method
