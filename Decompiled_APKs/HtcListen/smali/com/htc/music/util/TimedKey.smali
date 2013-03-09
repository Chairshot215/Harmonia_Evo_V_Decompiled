.class public Lcom/htc/music/util/TimedKey;
.super Ljava/lang/Object;
.source "TimedKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/TimedKey$TimedKeyComparator;
    }
.end annotation


# instance fields
.field private mAccessTime:J

.field private mKey:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    iput-wide p2, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    iput-object p1, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v2, p1, Lcom/htc/music/util/TimedKey;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/htc/music/util/TimedKey;

    iget-object v2, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    return-wide v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/util/TimedKey;->mKey:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAccessTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAccessTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/music/util/TimedKey;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
