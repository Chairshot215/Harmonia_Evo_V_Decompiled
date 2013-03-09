.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Suggestion"
.end annotation


# instance fields
.field private appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

.field private cachedSize:I

.field private hasAppSuggestion:Z

.field private hasQuerySuggestion:Z

.field private querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18398
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18403
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    .line 18423
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    .line 18468
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    .line 18398
    return-void
.end method


# virtual methods
.method public getAppSuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    .locals 1

    .prologue
    .line 18405
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 18471
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    if-gez v0, :cond_0

    .line 18473
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getSerializedSize()I

    .line 18475
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    return v0
.end method

.method public getQuerySuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .locals 1

    .prologue
    .line 18425
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 18480
    const/4 v0, 0x0

    .line 18481
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18482
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getAppSuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18485
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18486
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getQuerySuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18489
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->cachedSize:I

    .line 18490
    return v0
.end method

.method public hasAppSuggestion()Z
    .locals 1

    .prologue
    .line 18404
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion:Z

    return v0
.end method

.method public hasQuerySuggestion()Z
    .locals 1

    .prologue
    .line 18424
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18498
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18499
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 18503
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18504
    :sswitch_0
    return-object p0

    .line 18509
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;-><init>()V

    .line 18510
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18511
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->setAppSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    goto :goto_0

    .line 18515
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;-><init>()V

    .line 18516
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18517
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->setQuerySuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    goto :goto_0

    .line 18499
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 18396
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public setAppSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    .locals 1
    .parameter "value"

    .prologue
    .line 18407
    if-nez p1, :cond_0

    .line 18408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion:Z

    .line 18411
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->appSuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    .line 18412
    return-object p0
.end method

.method public setQuerySuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    .locals 1
    .parameter "value"

    .prologue
    .line 18427
    if-nez p1, :cond_0

    .line 18428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion:Z

    .line 18431
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->querySuggestion_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    .line 18432
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
    .line 18460
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasAppSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18461
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getAppSuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$AppSuggestionProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 18463
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->hasQuerySuggestion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18464
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;->getQuerySuggestion()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 18466
    :cond_1
    return-void
.end method
