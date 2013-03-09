.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_ERI_DESTINATION.java"


# instance fields
.field private DBG:Z

.field private DM_NVI_ID_ERI_DESTINATION_LENGTH:I

.field private final LOG_TAG:Ljava/lang/String;

.field private gERI_DESTINATION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "DM_NVI_ID_ERI_DESTINATION"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->LOG_TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->DBG:Z

    .line 13
    const/16 v0, 0x80

    iput v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->DM_NVI_ID_ERI_DESTINATION_LENGTH:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->gERI_DESTINATION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getERIDESTINATION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->gERI_DESTINATION:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->DM_NVI_ID_ERI_DESTINATION_LENGTH:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, nERI_DESTINATION:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->gERI_DESTINATION:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->gERI_DESTINATION:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_0

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->gERI_DESTINATION:Ljava/lang/String;

    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->DBG:Z

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "DM_NVI_ID_ERI_DESTINATION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERI_DESTINATION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->gERI_DESTINATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    return-void
.end method
