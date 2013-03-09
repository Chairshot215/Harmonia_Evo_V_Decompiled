.class public Lcom/htc/omadm/core/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SessionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSession(IILjava/lang/Object;)V
    .locals 4
    .parameter "sessionType"
    .parameter "sessionID"
    .parameter "wapData"

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v1

    .line 26
    .local v1, st:Lcom/htc/omadm/util/Setting;
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getSession()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, queueData:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-static {p2}, Lcom/htc/omadm/util/Utility;->byteToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/htc/omadm/util/Setting;->Set_SessionQueue(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static getLastSession()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v1

    .line 69
    .local v1, st:Lcom/htc/omadm/util/Setting;
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getSession()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, queueData:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public static getNextSessionID()I
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getLastSession()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, queueData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getNextSessionType()I
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getLastSession()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, queueData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getNextSessionWapData()[B
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getLastSession()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, queueData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/omadm/util/Utility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static getSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 77
    .local v0, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_SessionQueue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static pollSession()V
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getSession()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, queueData:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, data:[Ljava/lang/String;
    const-string v2, ""

    .line 58
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v3

    .line 63
    .local v3, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v3, v2}, Lcom/htc/omadm/util/Setting;->Set_SessionQueue(Ljava/lang/String;)V

    .line 64
    return-void
.end method
