.class public final Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Country"
.end annotation


# instance fields
.field private cachedSize:I

.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasRegionCode:Z

.field private regionCode_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1298
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->regionCode_:Ljava/lang/String;

    .line 1320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->displayName_:Ljava/lang/String;

    .line 1356
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->cachedSize:I

    .line 1298
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->cachedSize:I

    if-gez v0, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getSerializedSize()I

    .line 1363
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->cachedSize:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->regionCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasRegionCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1373
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1374
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1377
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->cachedSize:I

    .line 1378
    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasDisplayName:Z

    return v0
.end method

.method public hasRegionCode()Z
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasRegionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1387
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1391
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    :sswitch_0
    return-object p0

    .line 1397
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->setRegionCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    goto :goto_0

    .line 1401
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->setDisplayName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    goto :goto_0

    .line 1387
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1295
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasDisplayName:Z

    .line 1325
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->displayName_:Ljava/lang/String;

    .line 1326
    return-object p0
.end method

.method public setRegionCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;
    .locals 1
    .parameter "value"

    .prologue
    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasRegionCode:Z

    .line 1308
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->regionCode_:Ljava/lang/String;

    .line 1309
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
    .line 1348
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasRegionCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getRegionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1351
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Country;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1354
    :cond_1
    return-void
.end method
