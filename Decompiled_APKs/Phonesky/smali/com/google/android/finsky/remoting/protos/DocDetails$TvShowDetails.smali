.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvShowDetails"
.end annotation


# instance fields
.field private broadcaster_:Ljava/lang/String;

.field private cachedSize:I

.field private endYear_:I

.field private hasBroadcaster:Z

.field private hasEndYear:Z

.field private hasSeasonCount:Z

.field private hasStartYear:Z

.field private seasonCount_:I

.field private startYear_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3913
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3918
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->seasonCount_:I

    .line 3935
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->startYear_:I

    .line 3952
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->endYear_:I

    .line 3969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->broadcaster_:Ljava/lang/String;

    .line 4013
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    .line 3913
    return-void
.end method


# virtual methods
.method public getBroadcaster()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3970
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->broadcaster_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4016
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 4018
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getSerializedSize()I

    .line 4020
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    return v0
.end method

.method public getEndYear()I
    .locals 1

    .prologue
    .line 3953
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->endYear_:I

    return v0
.end method

.method public getSeasonCount()I
    .locals 1

    .prologue
    .line 3919
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->seasonCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4025
    const/4 v0, 0x0

    .line 4026
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4027
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getSeasonCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4030
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4031
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getStartYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4034
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4035
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getEndYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4038
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4039
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4042
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->cachedSize:I

    .line 4043
    return v0
.end method

.method public getStartYear()I
    .locals 1

    .prologue
    .line 3936
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->startYear_:I

    return v0
.end method

.method public hasBroadcaster()Z
    .locals 1

    .prologue
    .line 3971
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    return v0
.end method

.method public hasEndYear()Z
    .locals 1

    .prologue
    .line 3954
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    return v0
.end method

.method public hasSeasonCount()Z
    .locals 1

    .prologue
    .line 3920
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    return v0
.end method

.method public hasStartYear()Z
    .locals 1

    .prologue
    .line 3937
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4051
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4052
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4056
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4057
    :sswitch_0
    return-object p0

    .line 4062
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setSeasonCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4066
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setStartYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4070
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setEndYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4074
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    goto :goto_0

    .line 4052
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
    .line 3910
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcaster(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster:Z

    .line 3974
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->broadcaster_:Ljava/lang/String;

    .line 3975
    return-object p0
.end method

.method public setEndYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear:Z

    .line 3957
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->endYear_:I

    .line 3958
    return-object p0
.end method

.method public setSeasonCount(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount:Z

    .line 3923
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->seasonCount_:I

    .line 3924
    return-object p0
.end method

.method public setStartYear(I)Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 3939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear:Z

    .line 3940
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->startYear_:I

    .line 3941
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
    .line 3999
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasSeasonCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4000
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getSeasonCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4002
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasStartYear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4003
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getStartYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4005
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasEndYear()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4006
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getEndYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4008
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->hasBroadcaster()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4009
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;->getBroadcaster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4011
    :cond_3
    return-void
.end method
