.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PRI_INFO.java"


# instance fields
.field private CHECKSUM:Ljava/lang/String;

.field private VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 7
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->VERSION:Ljava/lang/String;

    .line 8
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->CHECKSUM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->CHECKSUM:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 13
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->VERSION:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->CHECKSUM:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0
    .parameter "cHECKSUM"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->CHECKSUM:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0
    .parameter "vERSION"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->VERSION:Ljava/lang/String;

    .line 21
    return-void
.end method
