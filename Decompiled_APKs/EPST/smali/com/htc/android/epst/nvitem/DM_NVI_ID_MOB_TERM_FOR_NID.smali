.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MOB_TERM_FOR_NID.java"


# static fields
.field public static final DISABLE_STREAM:Ljava/lang/String; = "00"

.field public static final ENABLE_STREAM:Ljava/lang/String; = "01"


# instance fields
.field private ENABLED:Ljava/lang/String;

.field private NAM:Ljava/lang/String;

.field private RESERVED:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->NAM:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->RESERVED:Ljava/lang/String;

    .line 16
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->ENABLED:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->NAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->RESERVED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->ENABLED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->mCurrentCmdData:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 29
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->NAM:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->RESERVED:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->ENABLED:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->ENABLED:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_TERM_FOR_NID;->read()V

    .line 37
    return-void
.end method
