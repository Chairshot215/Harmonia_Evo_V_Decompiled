.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DATACALL.java"


# instance fields
.field private RX:Ljava/lang/String;

.field private TX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 6
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->TX:Ljava/lang/String;

    .line 7
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->RX:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public getRX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->RX:Ljava/lang/String;

    return-object v0
.end method

.method public getTX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->TX:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 20
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->TX:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->RX:Ljava/lang/String;

    .line 22
    return-void
.end method
