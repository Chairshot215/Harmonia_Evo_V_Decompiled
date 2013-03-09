.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MEID.java"


# instance fields
.field private MEID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 7
    const-string v0, "00000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->MEID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->MEID:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 10
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->MEID:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setMeid(Ljava/lang/String;)V
    .locals 0
    .parameter "mEID"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->MEID:Ljava/lang/String;

    .line 15
    return-void
.end method
