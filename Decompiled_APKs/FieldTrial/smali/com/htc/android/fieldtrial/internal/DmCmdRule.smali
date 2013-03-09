.class public Lcom/htc/android/fieldtrial/internal/DmCmdRule;
.super Ljava/lang/Object;
.source "DmCmdRule.java"

# interfaces
.implements Lcom/htc/android/fieldtrial/internal/IRule;


# static fields
.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final NAM_SETTING_BYTE:Ljava/lang/String; = "00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreSendAction(Ljava/lang/String;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/fieldtrial/internal/StructBase;Ljava/lang/String;)I
    .locals 5
    .parameter "type"
    .parameter "response"
    .parameter "appendInfo"
    .parameter "structure"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 17
    const/4 v2, 0x0

    .line 19
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/android/fieldtrial/internal/CmdParser;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, purecmd:Ljava/lang/String;
    invoke-virtual {p4, v1}, Lcom/htc/android/fieldtrial/internal/StructBase;->setCmd(Ljava/lang/String;)V

    .line 21
    check-cast p4, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    .end local p4
    invoke-virtual {p4}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;->onCheckCmdState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 25
    .end local v1           #purecmd:Ljava/lang/String;
    :goto_0
    if-ne v2, v3, :cond_0

    .line 26
    const/4 v3, 0x0

    .line 28
    :cond_0
    return v3

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "args"

    .prologue
    .line 34
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, hexId:Ljava/lang/String;
    const-string v1, "C8"

    .line 36
    .local v1, send:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_0
    return-object v1
.end method
