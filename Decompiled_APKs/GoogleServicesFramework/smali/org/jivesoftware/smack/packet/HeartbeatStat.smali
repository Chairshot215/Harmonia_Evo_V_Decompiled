.class public Lorg/jivesoftware/smack/packet/HeartbeatStat;
.super Ljava/lang/Object;
.source "HeartbeatStat.java"


# instance fields
.field public interval:J

.field public ip:Ljava/lang/String;

.field public timeout:Z


# direct methods
.method public constructor <init>(ZJLjava/lang/String;)V
    .locals 0
    .parameter "timeout"
    .parameter "interval"
    .parameter "ip"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    .line 29
    iput-wide p2, p0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->interval:J

    .line 30
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Heartbeat Stat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-boolean v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->timeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ",interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ",ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatStat;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
