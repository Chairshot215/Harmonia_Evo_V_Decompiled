.class public final Lcom/google/android/finsky/remoting/protos/Buy$Money;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Money"
.end annotation


# instance fields
.field private cachedSize:I

.field private currencyCode_:Ljava/lang/String;

.field private formattedAmount_:Ljava/lang/String;

.field private hasCurrencyCode:Z

.field private hasFormattedAmount:Z

.field private hasMicros:Z

.field private micros_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1930
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->micros_:J

    .line 1947
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->currencyCode_:Ljava/lang/String;

    .line 1964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->formattedAmount_:Ljava/lang/String;

    .line 2006
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->cachedSize:I

    .line 1925
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2009
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->cachedSize:I

    if-gez v0, :cond_0

    .line 2011
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getSerializedSize()I

    .line 2013
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->cachedSize:I

    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->formattedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getMicros()J
    .locals 2

    .prologue
    .line 1931
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->micros_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2018
    const/4 v0, 0x0

    .line 2019
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasMicros()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2023
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasCurrencyCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2024
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2027
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasFormattedAmount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2028
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2031
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->cachedSize:I

    .line 2032
    return v0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 1949
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasCurrencyCode:Z

    return v0
.end method

.method public hasFormattedAmount()Z
    .locals 1

    .prologue
    .line 1966
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasFormattedAmount:Z

    return v0
.end method

.method public hasMicros()Z
    .locals 1

    .prologue
    .line 1932
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasMicros:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$Money;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2040
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2041
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2045
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2046
    :sswitch_0
    return-object p0

    .line 2051
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->setMicros(J)Lcom/google/android/finsky/remoting/protos/Buy$Money;

    goto :goto_0

    .line 2055
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$Money;

    goto :goto_0

    .line 2059
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$Money;

    goto :goto_0

    .line 2041
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1922
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v0

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$Money;
    .locals 1
    .parameter "value"

    .prologue
    .line 1951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasCurrencyCode:Z

    .line 1952
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->currencyCode_:Ljava/lang/String;

    .line 1953
    return-object p0
.end method

.method public setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$Money;
    .locals 1
    .parameter "value"

    .prologue
    .line 1968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasFormattedAmount:Z

    .line 1969
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->formattedAmount_:Ljava/lang/String;

    .line 1970
    return-object p0
.end method

.method public setMicros(J)Lcom/google/android/finsky/remoting/protos/Buy$Money;
    .locals 1
    .parameter "value"

    .prologue
    .line 1934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasMicros:Z

    .line 1935
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$Money;->micros_:J

    .line 1936
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasMicros()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getMicros()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1998
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasCurrencyCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1999
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2001
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->hasFormattedAmount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2002
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$Money;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2004
    :cond_2
    return-void
.end method
