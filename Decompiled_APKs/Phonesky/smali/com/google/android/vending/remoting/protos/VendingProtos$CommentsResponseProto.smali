.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentsResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private comment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;",
            ">;"
        }
    .end annotation
.end field

.field private hasNumTotalEntries:Z

.field private hasSelfComment:Z

.field private numTotalEntries_:J

.field private selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5137
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    .line 5175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->numTotalEntries_:J

    .line 5192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5235
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    .line 5137
    return-void
.end method


# virtual methods
.method public addComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5158
    if-nez p1, :cond_0

    .line 5159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5161
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    .line 5164
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5165
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5238
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 5240
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getSerializedSize()I

    .line 5242
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    return v0
.end method

.method public getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5144
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getNumTotalEntries()J
    .locals 2

    .prologue
    .line 5176
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->numTotalEntries_:J

    return-wide v0
.end method

.method public getSelfComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .locals 1

    .prologue
    .line 5194
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 5247
    const/4 v2, 0x0

    .line 5248
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getCommentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5249
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 5252
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5253
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getNumTotalEntries()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 5256
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5257
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getSelfComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5260
    :cond_2
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->cachedSize:I

    .line 5261
    return v2
.end method

.method public hasNumTotalEntries()Z
    .locals 1

    .prologue
    .line 5177
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries:Z

    return v0
.end method

.method public hasSelfComment()Z
    .locals 1

    .prologue
    .line 5193
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5270
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5274
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5275
    :sswitch_0
    return-object p0

    .line 5280
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;-><init>()V

    .line 5281
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5282
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->addComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    goto :goto_0

    .line 5286
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    goto :goto_0

    .line 5290
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;-><init>()V

    .line 5291
    .restart local v1       #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5292
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->setSelfComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    goto :goto_0

    .line 5270
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 5135
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setNumTotalEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries:Z

    .line 5180
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->numTotalEntries_:J

    .line 5181
    return-object p0
.end method

.method public setSelfComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 5196
    if-nez p1, :cond_0

    .line 5197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5199
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment:Z

    .line 5200
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->selfComment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5201
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5224
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getCommentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5225
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 5227
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasNumTotalEntries()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5228
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getNumTotalEntries()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 5230
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->hasSelfComment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5231
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;->getSelfComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5233
    :cond_2
    return-void
.end method
