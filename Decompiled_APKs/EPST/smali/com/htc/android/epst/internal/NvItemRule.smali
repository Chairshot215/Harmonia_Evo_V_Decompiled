.class public Lcom/htc/android/epst/internal/NvItemRule;
.super Ljava/lang/Object;
.source "NvItemRule.java"

# interfaces
.implements Lcom/htc/android/epst/internal/IRule;


# static fields
.field private static final DBG:Z = true

.field private static final DISPLACEMENT:I = 0x1f40

.field private static final ID_CMD_BAD_PARAMETER:Ljava/lang/String; = "0600"

.field private static final ID_CMD_NOT_ACTIVE:Ljava/lang/String; = "0500"

.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final ID_CMD_SUCCESS:Ljava/lang/String; = "0000"

.field private static final ID_HEX_HTC_NVITEM_READ:Ljava/lang/String; = "F8"

.field private static final ID_HEX_HTC_NVITEM_WRITE:Ljava/lang/String; = "F9"

.field private static final ID_HEX_NVITEM_READ:Ljava/lang/String; = "26"

.field private static final ID_HEX_NVITEM_WRITE:Ljava/lang/String; = "27"

.field private static final LOG_TAG:Ljava/lang/String; = "NvItemRule"

.field private static final STATUS_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkReceivedCmdStatus(Ljava/lang/String;)I
    .locals 6
    .parameter "origin"

    .prologue
    .line 41
    const-string v3, ""

    .line 42
    .local v3, tmp:Ljava/lang/String;
    const/4 v2, 0x1

    .line 44
    .local v2, ret:I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 45
    .local v1, len:I
    add-int/lit8 v4, v1, -0x4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 46
    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const/4 v2, 0x0

    .line 58
    .end local v1           #len:I
    :cond_0
    :goto_0
    return v2

    .line 48
    .restart local v1       #len:I
    :cond_1
    const-string v4, "0500"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const/4 v2, 0x2

    goto :goto_0

    .line 50
    :cond_2
    const-string v4, "0600"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    .end local v1           #len:I
    :catch_0
    move-exception v0

    .line 55
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x1

    .line 56
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
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedReadMessage(ILjava/lang/String;ILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)I
    .locals 4
    .parameter "type"
    .parameter "response"
    .parameter "appendInfo"
    .parameter "structure"
    .parameter "args"

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, result:I
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/android/epst/internal/NvItemRule;->checkReceivedCmdStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
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
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/android/epst/internal/NvItemRule;->checkReceivedCmdStatus(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, status:I
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSendEditAction(IIILcom/htc/android/epst/internal/StructBase;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "structure"
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 89
    const-string v0, "27"

    .line 90
    .local v0, HEX_NVITEM_WRITE:Ljava/lang/String;
    const/16 v4, 0x1f40

    if-lt p2, v4, :cond_0

    .line 91
    add-int/lit16 p2, p2, -0x1f40

    .line 92
    const-string v0, "F9"

    .line 96
    :cond_0
    new-array v3, v6, [Ljava/lang/String;

    .line 97
    .local v3, send:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 98
    const-string v4, "%04X"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, nvitemhexid:Ljava/lang/String;
    invoke-virtual {p4}, Lcom/htc/android/epst/internal/StructBase;->generateCmdData()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, autoGenerateCmdData:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 101
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "generate write cmd failed"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 104
    return-object v3
.end method

.method public onSendViewAction(IIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cmdid"
    .parameter "nvitemid"
    .parameter "index"
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 65
    const-string v0, "26"

    .line 66
    .local v0, HEX_NVITEM_READ:Ljava/lang/String;
    const/16 v4, 0x1f40

    if-lt p2, v4, :cond_0

    .line 67
    add-int/lit16 p2, p2, -0x1f40

    .line 68
    const-string v0, "F8"

    .line 71
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, send:Ljava/lang/String;
    const-string v4, "NvItemRule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendViewAction.send:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v4, "%04X"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, nvitem:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v4, "%02X"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, strIndex:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    return-object v2
.end method
