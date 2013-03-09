.class public Lcom/htc/wrap/android/server/data/HtcWrapCrashData;
.super Ljava/lang/Object;
.source "HtcWrapCrashData.java"


# instance fields
.field final activity:Ljava/lang/String;

.field final buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

.field final id:Ljava/lang/String;

.field final state:[B

.field final throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

.field final time:J


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v4, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected 0 or 1. Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    new-instance v2, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    invoke-direct {v2, p1}, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;-><init>(Ljava/io/DataInput;)V

    iput-object v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    new-instance v2, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-direct {v2, p1}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;-><init>(Ljava/io/DataInput;)V

    iput-object v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    if-ne v0, v4, :cond_2

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    iput-object v5, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    :goto_0
    return-void

    :cond_1
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    iget-object v2, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Ljava/io/DataInput;->readFully([BII)V

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/wrap/android/server/data/HtcWrapBuildData;Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    invoke-static {p3}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    invoke-static {p4}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/wrap/android/server/data/HtcWrapBuildData;Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;[B)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    invoke-static {p2}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    invoke-static {p3}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    invoke-static {p4}, Lcom/htc/wrap/com/android/internal/util/HtcWrapObjects;->nonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    iput-object p5, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    new-instance v0, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    invoke-direct {v0}, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;-><init>()V

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    new-instance v0, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-direct {v0, p2}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildData()Lcom/htc/wrap/android/server/data/HtcWrapBuildData;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()[B
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    return-object v0
.end method

.method public getThrowableData()Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CrashData: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " buildData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " throwableData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-virtual {v1}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    if-nez v0, :cond_1

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->activity:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->time:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->buildData:Lcom/htc/wrap/android/server/data/HtcWrapBuildData;

    invoke-virtual {v0, p1}, Lcom/htc/wrap/android/server/data/HtcWrapBuildData;->write(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->throwableData:Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;

    invoke-virtual {v0, p1}, Lcom/htc/wrap/android/server/data/HtcWrapThrowableData;->write(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    iget-object v1, p0, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->state:[B

    array-length v1, v1

    invoke-interface {p1, v0, v2, v1}, Ljava/io/DataOutput;->write([BII)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method
