.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusBarNotificationProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private contentText_:Ljava/lang/String;

.field private contentTitle_:Ljava/lang/String;

.field private hasContentText:Z

.field private hasContentTitle:Z

.field private hasTickerText:Z

.field private tickerText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19856
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->tickerText_:Ljava/lang/String;

    .line 19878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentTitle_:Ljava/lang/String;

    .line 19895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentText_:Ljava/lang/String;

    .line 19935
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    .line 19856
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 19938
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 19940
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getSerializedSize()I

    .line 19942
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    return v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19896
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentText_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19879
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 19947
    const/4 v0, 0x0

    .line 19948
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19949
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getTickerText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19952
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19953
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19956
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19957
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19960
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->cachedSize:I

    .line 19961
    return v0
.end method

.method public getTickerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19862
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->tickerText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContentText()Z
    .locals 1

    .prologue
    .line 19897
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText:Z

    return v0
.end method

.method public hasContentTitle()Z
    .locals 1

    .prologue
    .line 19880
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle:Z

    return v0
.end method

.method public hasTickerText()Z
    .locals 1

    .prologue
    .line 19863
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19969
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19970
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 19974
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19975
    :sswitch_0
    return-object p0

    .line 19980
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->setTickerText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    goto :goto_0

    .line 19984
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->setContentTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    goto :goto_0

    .line 19988
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->setContentText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    goto :goto_0

    .line 19970
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 19854
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    move-result-object v0

    return-object v0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText:Z

    .line 19900
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentText_:Ljava/lang/String;

    .line 19901
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle:Z

    .line 19883
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->contentTitle_:Ljava/lang/String;

    .line 19884
    return-object p0
.end method

.method public setTickerText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText:Z

    .line 19866
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->tickerText_:Ljava/lang/String;

    .line 19867
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
    .line 19924
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasTickerText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19925
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getTickerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19927
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19928
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19930
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->hasContentText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19931
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;->getContentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19933
    :cond_2
    return-void
.end method
