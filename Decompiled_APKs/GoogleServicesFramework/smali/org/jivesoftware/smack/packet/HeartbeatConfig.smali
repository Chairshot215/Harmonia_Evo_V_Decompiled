.class public Lorg/jivesoftware/smack/packet/HeartbeatConfig;
.super Ljava/lang/Object;
.source "HeartbeatConfig.java"


# instance fields
.field public interval:J

.field public ip:Ljava/lang/String;

.field public uploadStat:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;JLjava/lang/String;)V
    .locals 0
    .parameter "uploadStat"
    .parameter "interval"
    .parameter "ip"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    .line 30
    iput-wide p2, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    .line 31
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Heartbeat Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "uploadStat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    iget-wide v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 42
    const-string v1, ",interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-wide v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 46
    const-string v1, ",ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
