.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DATA_MDR_MODE_I.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DM_NVI_ID_DATA_MDR_MODE_I"

.field public static final MDR_IF_AVAIL:Ljava/lang/String; = "01"

.field public static final MDR_ONLY:Ljava/lang/String; = "00"

.field public static final NO_MDR:Ljava/lang/String; = "02"

.field public static final SVC_OPT:Ljava/lang/String; = "03"


# instance fields
.field private MDR_MODE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 16
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->MDR_MODE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->MDR_MODE:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->mCurrentCmdData:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->MDR_MODE:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->MDR_MODE:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATA_MDR_MODE_I;->MDR_MODE:Ljava/lang/String;

    .line 24
    return-void
.end method
