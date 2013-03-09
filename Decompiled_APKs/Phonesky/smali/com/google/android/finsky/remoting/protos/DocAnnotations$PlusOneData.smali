.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneData"
.end annotation


# instance fields
.field private cachedSize:I

.field private circlesProfiles_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;",
            ">;"
        }
    .end annotation
.end field

.field private circlesTotal_:J

.field private hasCirclesTotal:Z

.field private hasSetByUser:Z

.field private hasTotal:Z

.field private setByUser_:Z

.field private total_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 701
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setByUser_:Z

    .line 723
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->total_:J

    .line 740
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesTotal_:J

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesProfiles_:Ljava/util/List;

    .line 820
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    .line 701
    return-void
.end method


# virtual methods
.method public addCirclesProfiles(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 1
    .parameter "value"

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesProfiles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesProfiles_:Ljava/util/List;

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesProfiles_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    if-gez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSerializedSize()I

    .line 827
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    return v0
.end method

.method public getCirclesProfilesCount()I
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesProfiles_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCirclesProfilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesProfiles_:Ljava/util/List;

    return-object v0
.end method

.method public getCirclesTotal()J
    .locals 2

    .prologue
    .line 741
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesTotal_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 832
    const/4 v2, 0x0

    .line 833
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 842
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesTotal()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 845
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesProfilesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 846
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 849
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    .line 850
    return v2
.end method

.method public getSetByUser()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setByUser_:Z

    return v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 724
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->total_:J

    return-wide v0
.end method

.method public hasCirclesTotal()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal:Z

    return v0
.end method

.method public hasSetByUser()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser:Z

    return v0
.end method

.method public hasTotal()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 859
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 863
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    :sswitch_0
    return-object p0

    .line 869
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setSetByUser(Z)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 873
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 877
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setCirclesTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 881
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;-><init>()V

    .line 882
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 883
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->addCirclesProfiles(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 859
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 698
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public setCirclesTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 1
    .parameter "value"

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal:Z

    .line 745
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesTotal_:J

    .line 746
    return-object p0
.end method

.method public setSetByUser(Z)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 1
    .parameter "value"

    .prologue
    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser:Z

    .line 711
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setByUser_:Z

    .line 712
    return-object p0
.end method

.method public setTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .locals 1
    .parameter "value"

    .prologue
    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal:Z

    .line 728
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->total_:J

    .line 729
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
    .line 806
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 813
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesTotal()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 815
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesProfilesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;

    .line 816
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 818
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;
    :cond_3
    return-void
.end method
