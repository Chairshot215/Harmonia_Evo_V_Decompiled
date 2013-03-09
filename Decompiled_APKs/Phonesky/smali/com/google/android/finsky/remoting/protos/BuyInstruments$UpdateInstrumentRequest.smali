.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateInstrumentRequest"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutToken_:Ljava/lang/String;

.field private hasCheckoutToken:Z

.field private hasInstrument:Z

.field private instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->checkoutToken_:Ljava/lang/String;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->getSerializedSize()I

    .line 80
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->cachedSize:I

    return v0
.end method

.method public getCheckoutToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->checkoutToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasInstrument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasCheckoutToken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->getCheckoutToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->cachedSize:I

    .line 95
    return v0
.end method

.method public hasCheckoutToken()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasCheckoutToken:Z

    return v0
.end method

.method public hasInstrument()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasInstrument:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 104
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    :sswitch_0
    return-object p0

    .line 114
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 115
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    goto :goto_0

    .line 120
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasCheckoutToken:Z

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->checkoutToken_:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasInstrument:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->instrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 24
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasInstrument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->hasCheckoutToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->getCheckoutToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 71
    :cond_1
    return-void
.end method
