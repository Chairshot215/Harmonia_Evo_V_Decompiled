.class public Lcom/htc/android/epst/internal/CmdParser;
.super Ljava/lang/Object;
.source "CmdParser.java"


# static fields
.field private static final CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final NVITEM_ID_LENGTH:I = 0x4

.field private static final PREFIX_LENGTH:I = 0x2

.field private static final SUFFIX_LENGTH:I = 0x4

.field private static mNewInstance:Lcom/htc/android/epst/internal/CmdParser;


# instance fields
.field private mCurDmCmdId:Ljava/lang/String;

.field private mCurNvItemId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private cullingDmCommandId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x2

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, id:Ljava/lang/String;
    const-string v1, ""

    .line 72
    .local v1, purecmd:Ljava/lang/String;
    const-string v2, "26"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "27"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_0
    iput-object v0, p0, Lcom/htc/android/epst/internal/CmdParser;->mCurDmCmdId:Ljava/lang/String;

    .line 80
    return-object v1

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private deletePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x2

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 40
    .local v1, len:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, legency:Ljava/lang/String;
    const-string v2, "C8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_0
    return-object p1
.end method

.method public static getSingleton()Lcom/htc/android/epst/internal/CmdParser;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/android/epst/internal/CmdParser;->mNewInstance:Lcom/htc/android/epst/internal/CmdParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/epst/internal/CmdParser;

    invoke-direct {v0}, Lcom/htc/android/epst/internal/CmdParser;-><init>()V

    sput-object v0, Lcom/htc/android/epst/internal/CmdParser;->mNewInstance:Lcom/htc/android/epst/internal/CmdParser;

    .line 21
    :cond_0
    sget-object v0, Lcom/htc/android/epst/internal/CmdParser;->mNewInstance:Lcom/htc/android/epst/internal/CmdParser;

    return-object v0
.end method


# virtual methods
.method public cullingNvItemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x4

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, NvItemData:Ljava/lang/String;
    iput-object v1, p0, Lcom/htc/android/epst/internal/CmdParser;->mCurNvItemId:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public deleteEndChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 96
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurCmdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/epst/internal/CmdParser;->mCurDmCmdId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurNvItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/android/epst/internal/CmdParser;->mCurNvItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 107
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/android/epst/internal/CmdParser;->deletePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/epst/internal/CmdParser;->cullingDmCommandId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
