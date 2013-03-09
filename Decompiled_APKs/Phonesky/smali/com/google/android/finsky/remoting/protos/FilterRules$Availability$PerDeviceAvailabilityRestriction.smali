.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerDeviceAvailabilityRestriction"
.end annotation


# instance fields
.field private androidId_:J

.field private cachedSize:I

.field private channelId_:J

.field private deviceRestriction_:I

.field private filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

.field private hasAndroidId:Z

.field private hasChannelId:Z

.field private hasDeviceRestriction:Z

.field private hasFilterInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 961
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 966
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId_:J

    .line 983
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction_:I

    .line 1000
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId_:J

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    .line 1068
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    .line 961
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .locals 2

    .prologue
    .line 967
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    if-gez v0, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getSerializedSize()I

    .line 1075
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    return v0
.end method

.method public getChannelId()J
    .locals 2

    .prologue
    .line 1001
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId_:J

    return-wide v0
.end method

.method public getDeviceRestriction()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction_:I

    return v0
.end method

.method public getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getAndroidId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getDeviceRestriction()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1090
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getChannelId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasFilterInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1094
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1097
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    .line 1098
    return v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    return v0
.end method

.method public hasChannelId()Z
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    return v0
.end method

.method public hasDeviceRestriction()Z
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    return v0
.end method

.method public hasFilterInfo()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasFilterInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1107
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1111
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    :sswitch_0
    return-object p0

    .line 1117
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setAndroidId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 1121
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setDeviceRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 1125
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setChannelId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 1129
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;-><init>()V

    .line 1130
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1131
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setFilterInfo(Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x51 -> :sswitch_1
        0x58 -> :sswitch_2
        0x60 -> :sswitch_3
        0x7a -> :sswitch_4
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
    .line 958
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .locals 1
    .parameter "value"

    .prologue
    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    .line 971
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId_:J

    .line 972
    return-object p0
.end method

.method public setChannelId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    .line 1005
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId_:J

    .line 1006
    return-object p0
.end method

.method public setDeviceRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .locals 1
    .parameter "value"

    .prologue
    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    .line 988
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction_:I

    .line 989
    return-object p0
.end method

.method public setFilterInfo(Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .locals 1
    .parameter "value"

    .prologue
    .line 1021
    if-nez p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1024
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasFilterInfo:Z

    .line 1025
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo_:Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    .line 1026
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
    .line 1054
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getAndroidId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getDeviceRestriction()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1060
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getChannelId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1063
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasFilterInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getFilterInfo()Lcom/google/android/finsky/remoting/protos/FilterRules$FilterEvaluationInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1066
    :cond_3
    return-void
.end method
