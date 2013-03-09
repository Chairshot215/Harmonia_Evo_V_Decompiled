.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingAddressSpec"
.end annotation


# instance fields
.field private billingAddressType_:I

.field private cachedSize:I

.field private hasBillingAddressType:Z

.field private requiredField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2038
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2050
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->billingAddressType_:I

    .line 2066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    .line 2114
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    .line 2038
    return-void
.end method


# virtual methods
.method public addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 2
    .parameter "value"

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    .line 2083
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    return-object p0
.end method

.method public getBillingAddressType()I
    .locals 1

    .prologue
    .line 2052
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->billingAddressType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2117
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    if-gez v0, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getSerializedSize()I

    .line 2121
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    return v0
.end method

.method public getRequiredFieldCount()I
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequiredFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->requiredField_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2126
    const/4 v3, 0x0

    .line 2127
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2128
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2132
    :cond_0
    const/4 v0, 0x0

    .line 2133
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2134
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2137
    .end local v1           #element:Ljava/lang/Integer;
    :cond_1
    add-int/2addr v3, v0

    .line 2138
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2140
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->cachedSize:I

    .line 2141
    return v3
.end method

.method public hasBillingAddressType()Z
    .locals 1

    .prologue
    .line 2051
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2150
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2154
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2155
    :sswitch_0
    return-object p0

    .line 2160
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    goto :goto_0

    .line 2164
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    goto :goto_0

    .line 2150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 2035
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .locals 1
    .parameter "value"

    .prologue
    .line 2054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    .line 2055
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->billingAddressType_:I

    .line 2056
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
    .line 2106
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2107
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/Integer;

    .line 2110
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 2112
    .end local v0           #element:Ljava/lang/Integer;
    :cond_1
    return-void
.end method
