.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuerySuggestionResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private estimatedNumAppSuggestions_:I

.field private estimatedNumQuerySuggestions_:I

.field private hasEstimatedNumAppSuggestions:Z

.field private hasEstimatedNumQuerySuggestions:Z

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18394
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    .line 18573
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumAppSuggestions_:I

    .line 18590
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumQuerySuggestions_:I

    .line 18633
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    .line 18394
    return-void
.end method


# virtual methods
.method public addSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18556
    if-nez p1, :cond_0

    .line 18557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18559
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    .line 18562
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18563
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 18636
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 18638
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getSerializedSize()I

    .line 18640
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    return v0
.end method

.method public getEstimatedNumAppSuggestions()I
    .locals 1

    .prologue
    .line 18574
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumAppSuggestions_:I

    return v0
.end method

.method public getEstimatedNumQuerySuggestions()I
    .locals 1

    .prologue
    .line 18591
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumQuerySuggestions_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 18645
    const/4 v2, 0x0

    .line 18646
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getSuggestionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    .line 18647
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 18650
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18651
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumAppSuggestions()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 18654
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18655
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumQuerySuggestions()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 18658
    :cond_2
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->cachedSize:I

    .line 18659
    return v2
.end method

.method public getSuggestionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18542
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public hasEstimatedNumAppSuggestions()Z
    .locals 1

    .prologue
    .line 18575
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions:Z

    return v0
.end method

.method public hasEstimatedNumQuerySuggestions()Z
    .locals 1

    .prologue
    .line 18592
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18667
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18668
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 18672
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18673
    :sswitch_0
    return-object p0

    .line 18678
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;-><init>()V

    .line 18679
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 18680
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->addSuggestion(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    goto :goto_0

    .line 18684
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->setEstimatedNumAppSuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    goto :goto_0

    .line 18688
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->setEstimatedNumQuerySuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    goto :goto_0

    .line 18668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x20 -> :sswitch_2
        0x28 -> :sswitch_3
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
    .line 18392
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setEstimatedNumAppSuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions:Z

    .line 18578
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumAppSuggestions_:I

    .line 18579
    return-object p0
.end method

.method public setEstimatedNumQuerySuggestions(I)Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions:Z

    .line 18595
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->estimatedNumQuerySuggestions_:I

    .line 18596
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
    .line 18622
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getSuggestionList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;

    .line 18623
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 18625
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto$Suggestion;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumAppSuggestions()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18626
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumAppSuggestions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18628
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->hasEstimatedNumQuerySuggestions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18629
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;->getEstimatedNumQuerySuggestions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18631
    :cond_2
    return-void
.end method
