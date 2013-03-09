.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuerySuggestionProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private estimatedNumResults_:I

.field private hasEstimatedNumResults:Z

.field private hasQuery:Z

.field private hasQueryWeight:Z

.field private queryWeight_:I

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18086
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->query_:Ljava/lang/String;

    .line 18108
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->estimatedNumResults_:I

    .line 18125
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->queryWeight_:I

    .line 18166
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    .line 18086
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 18169
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 18171
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getSerializedSize()I

    .line 18173
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    return v0
.end method

.method public getEstimatedNumResults()I
    .locals 1

    .prologue
    .line 18109
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->estimatedNumResults_:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18092
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryWeight()I
    .locals 1

    .prologue
    .line 18126
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->queryWeight_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 18178
    const/4 v0, 0x0

    .line 18179
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18180
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18183
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18184
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getEstimatedNumResults()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18187
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18188
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQueryWeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18191
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->cachedSize:I

    .line 18192
    return v0
.end method

.method public hasEstimatedNumResults()Z
    .locals 1

    .prologue
    .line 18110
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 18093
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery:Z

    return v0
.end method

.method public hasQueryWeight()Z
    .locals 1

    .prologue
    .line 18127
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18201
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 18205
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18206
    :sswitch_0
    return-object p0

    .line 18211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    goto :goto_0

    .line 18215
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->setEstimatedNumResults(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    goto :goto_0

    .line 18219
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->setQueryWeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    goto :goto_0

    .line 18201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 18084
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;

    move-result-object v0

    return-object v0
.end method

.method public setEstimatedNumResults(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults:Z

    .line 18113
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->estimatedNumResults_:I

    .line 18114
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery:Z

    .line 18096
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->query_:Ljava/lang/String;

    .line 18097
    return-object p0
.end method

.method public setQueryWeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight:Z

    .line 18130
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->queryWeight_:I

    .line 18131
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
    .line 18155
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18156
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18158
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasEstimatedNumResults()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18159
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getEstimatedNumResults()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18161
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->hasQueryWeight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18162
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionProto;->getQueryWeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18164
    :cond_2
    return-void
.end method
