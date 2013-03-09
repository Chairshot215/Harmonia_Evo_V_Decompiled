.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_ROAM_PREF_I.java"


# static fields
.field public static final AUTOMATIC:Ljava/lang/String; = "FF"

.field public static final HOMEONLY:Ljava/lang/String; = "01"

.field public static final ROAMINGONLY:Ljava/lang/String; = "FE"

.field public static final WORLDROAM:Ljava/lang/String; = "02"


# instance fields
.field private NAM:Ljava/lang/String;

.field private ROAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->NAM:Ljava/lang/String;

    .line 18
    const-string v0, "01"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->ROAM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->NAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->ROAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->mCurrentCmdData:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getRoam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->ROAM:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 31
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->NAM:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->ROAM:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setRoam(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ROAM_PREF_I;->ROAM:Ljava/lang/String;

    .line 26
    return-void
.end method
