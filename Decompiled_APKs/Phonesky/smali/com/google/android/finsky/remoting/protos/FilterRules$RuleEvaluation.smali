.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuleEvaluation"
.end annotation


# instance fields
.field private actualBoolValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private actualDoubleValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private actualLongValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private actualStringValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasRule:Z

.field private rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualStringValue_:Ljava/util/List;

    .line 598
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualLongValue_:Ljava/util/List;

    .line 625
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualBoolValue_:Ljava/util/List;

    .line 652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualDoubleValue_:Ljava/util/List;

    .line 714
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->cachedSize:I

    .line 541
    return-void
.end method


# virtual methods
.method public addActualBoolValue(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
    .locals 2
    .parameter "value"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualBoolValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualBoolValue_:Ljava/util/List;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualBoolValue_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    return-object p0
.end method

.method public addActualDoubleValue(D)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
    .locals 2
    .parameter "value"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualDoubleValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualDoubleValue_:Ljava/util/List;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualDoubleValue_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    return-object p0
.end method

.method public addActualLongValue(J)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
    .locals 2
    .parameter "value"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualLongValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualLongValue_:Ljava/util/List;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualLongValue_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    return-object p0
.end method

.method public addActualStringValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
    .locals 1
    .parameter "value"

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualStringValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualStringValue_:Ljava/util/List;

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualStringValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    return-object p0
.end method

.method public getActualBoolValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualBoolValue_:Ljava/util/List;

    return-object v0
.end method

.method public getActualDoubleValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualDoubleValue_:Ljava/util/List;

    return-object v0
.end method

.method public getActualLongValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualLongValue_:Ljava/util/List;

    return-object v0
.end method

.method public getActualStringValueList()Ljava/util/List;
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
    .line 568
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->actualStringValue_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->cachedSize:I

    if-gez v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getSerializedSize()I

    .line 721
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->cachedSize:I

    return v0
.end method

.method public getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 726
    const/4 v4, 0x0

    .line 727
    .local v4, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->hasRule()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v5

    add-int/2addr v4, v5

    .line 732
    :cond_0
    const/4 v0, 0x0

    .line 733
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualStringValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 734
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 737
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v4, v0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualStringValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 741
    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualLongValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 743
    .local v1, element:J
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 746
    .end local v1           #element:J
    :cond_2
    add-int/2addr v4, v0

    .line 747
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualLongValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 750
    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualBoolValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v0, v5, 0x1

    .line 752
    add-int/2addr v4, v0

    .line 753
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualBoolValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 756
    const/4 v0, 0x0

    .line 757
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualDoubleValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v0, v5, 0x8

    .line 758
    add-int/2addr v4, v0

    .line 759
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualDoubleValueList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 761
    iput v4, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->cachedSize:I

    .line 762
    return v4
.end method

.method public hasRule()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->hasRule:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 771
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 775
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 776
    :sswitch_0
    return-object p0

    .line 781
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 782
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 783
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;

    goto :goto_0

    .line 787
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->addActualStringValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;

    goto :goto_0

    .line 791
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->addActualLongValue(J)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;

    goto :goto_0

    .line 795
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->addActualBoolValue(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;

    goto :goto_0

    .line 799
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->addActualDoubleValue(D)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;

    goto :goto_0

    .line 771
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x29 -> :sswitch_5
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
    .line 538
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;

    move-result-object v0

    return-object v0
.end method

.method public setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;
    .locals 1
    .parameter "value"

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 553
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->hasRule:Z

    .line 554
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 555
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
    .line 697
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->hasRule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 698
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualStringValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 701
    .local v0, element:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 703
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualLongValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 704
    .local v0, element:J
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    goto :goto_1

    .line 706
    .end local v0           #element:J
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualBoolValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 707
    .local v0, element:Z
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_2

    .line 709
    .end local v0           #element:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$RuleEvaluation;->getActualDoubleValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 710
    .local v0, element:D
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    goto :goto_3

    .line 712
    .end local v0           #element:D
    :cond_4
    return-void
.end method
