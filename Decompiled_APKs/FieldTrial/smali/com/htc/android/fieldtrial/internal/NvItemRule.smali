.class public Lcom/htc/android/fieldtrial/internal/NvItemRule;
.super Ljava/lang/Object;
.source "NvItemRule.java"

# interfaces
.implements Lcom/htc/android/fieldtrial/internal/IRule;


# static fields
.field private static final DBG:Z = true

.field private static final ID_CMD_BAD_PARAMETER:Ljava/lang/String; = "0600"

.field private static final ID_CMD_NOT_ACTIVE:Ljava/lang/String; = "0500"

.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final ID_CMD_SUCCESS:Ljava/lang/String; = "0000"

.field private static final ID_HEX_NVITEM_READ:Ljava/lang/String; = "26"

.field private static final LOG_TAG:Ljava/lang/String; = "NvItemRule"

.field private static final STATUS_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkReceivedCmdStatus(Ljava/lang/String;)I
    .locals 6
    .parameter "origin"

    .prologue
    .line 29
    const-string v3, ""

    .line 30
    .local v3, tmp:Ljava/lang/String;
    const/4 v2, 0x1

    .line 32
    .local v2, ret:I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 33
    .local v1, len:I
    add-int/lit8 v4, v1, -0x4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    const/4 v2, 0x0

    .line 46
    .end local v1           #len:I
    :cond_0
    :goto_0
    return v2

    .line 36
    .restart local v1       #len:I
    :cond_1
    const-string v4, "0500"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    const/4 v2, 0x2

    goto :goto_0

    .line 38
    :cond_2
    const-string v4, "0600"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const/4 v2, 0x1

    goto :goto_0

    .line 42
    .end local v1           #len:I
    :catch_0
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x1

    .line 44
    const-string v4, "NvItemRule"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onPreSendAction(Ljava/lang/String;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/fieldtrial/internal/StructBase;Ljava/lang/String;)I
    .locals 4
    .parameter "type"
    .parameter "response"
    .parameter "appendInfo"
    .parameter "structure"
    .parameter "args"

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, result:I
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/android/fieldtrial/internal/NvItemRule;->checkReceivedCmdStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 25
    :goto_0
    return v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NvItemRule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceivedWriteMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "response"
    .parameter "args"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/android/fieldtrial/internal/NvItemRule;->checkReceivedCmdStatus(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, status:I
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSendEditAction(IIILcom/htc/android/fieldtrial/internal/StructBase;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "structure"
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 63
    new-array v2, v4, [Ljava/lang/String;

    .line 64
    .local v2, send:[Ljava/lang/String;
    const-string v3, "C827"

    aput-object v3, v2, v6

    .line 65
    const-string v3, "%04X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, nvitemhexid:Ljava/lang/String;
    invoke-virtual {p4}, Lcom/htc/android/fieldtrial/internal/StructBase;->generateCmdData()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, autoGenerateCmdData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "generate write cmd failed"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/htc/android/fieldtrial/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 71
    return-object v2
.end method

.method public onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    const-string v1, "C826"

    .line 51
    .local v1, send:Ljava/lang/String;
    const-string v3, "%04X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, nvitem:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/htc/android/fieldtrial/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v3, "%02X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, strIndex:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    return-object v1
.end method
