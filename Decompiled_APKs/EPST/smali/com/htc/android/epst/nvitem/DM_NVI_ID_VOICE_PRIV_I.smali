.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_VOICE_PRIV_I.java"


# static fields
.field public static final DISABLE:Ljava/lang/String; = "00"

.field public static final ENABLE:Ljava/lang/String; = "01"

.field public static final LOG_TAG:Ljava/lang/String; = "DM_NVI_ID_VOICE_PRIV_I"


# instance fields
.field private VOICE_PRIV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->VOICE_PRIV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->VOICE_PRIV:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->mCurrentCmdData:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getVPRIV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->VOICE_PRIV:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->VOICE_PRIV:Ljava/lang/String;

    .line 27
    const-string v0, "DM_NVI_ID_VOICE_PRIV_I"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOICE_PRIV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->VOICE_PRIV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public setVPRIV(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_VOICE_PRIV_I;->VOICE_PRIV:Ljava/lang/String;

    .line 21
    return-void
.end method
