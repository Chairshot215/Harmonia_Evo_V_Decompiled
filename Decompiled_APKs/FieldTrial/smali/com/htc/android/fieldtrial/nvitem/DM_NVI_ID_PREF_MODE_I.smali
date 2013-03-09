.class public Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;
.super Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
.source "DM_NVI_ID_PREF_MODE_I.java"


# static fields
.field public static final AUTOMATIC:Ljava/lang/String; = "0004"

.field public static final CDMAHDR:Ljava/lang/String; = "0013"

.field public static final CDMAONLY:Ljava/lang/String; = "0009"

.field public static final DIGITALONLY:Ljava/lang/String; = "0001"

.field public static final HDRONLY:Ljava/lang/String; = "000A"


# instance fields
.field private MODE:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;-><init>()V

    .line 18
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->NAM:Ljava/lang/String;

    .line 19
    const-string v0, "0001"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->MODE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->MODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/fieldtrial/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, mode:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->NAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->mCurrentCmdData:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->MODE:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 32
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->NAM:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->MODE:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->MODE:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_PREF_MODE_I;->read()V

    .line 39
    return-void
.end method
