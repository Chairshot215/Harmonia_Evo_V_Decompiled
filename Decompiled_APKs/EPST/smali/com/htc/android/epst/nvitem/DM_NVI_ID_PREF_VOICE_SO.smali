.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PREF_VOICE_SO.java"


# static fields
.field public static final DISABLE_STREAM:Ljava/lang/String; = "00"

.field public static final ENABLE_STREAM:Ljava/lang/String; = "01"

.field public static final EVRC:Ljava/lang/String; = "0003"

.field public static final EVRC_B:Ljava/lang/String; = "0044"

.field public static final IS96A:Ljava/lang/String; = "0001"

.field public static final IS_96:Ljava/lang/String; = "8001"

.field public static final SMV:Ljava/lang/String; = "0038"

.field public static final Voice13K:Ljava/lang/String; = "8000"

.field public static final Voice13K_IS733:Ljava/lang/String; = "0011"

.field public static final WILD:Ljava/lang/String; = "0000"


# instance fields
.field private EVRC_CAPABILITY_ENABLED:Ljava/lang/String;

.field private HOME_ORIG_VOICE_SO:Ljava/lang/String;

.field private HOME_PAGE_VOICE_SO:Ljava/lang/String;

.field private NAM:Ljava/lang/String;

.field private ROAM_ORIG_VOICE_SO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 23
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->NAM:Ljava/lang/String;

    .line 24
    const-string v0, "01"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->EVRC_CAPABILITY_ENABLED:Ljava/lang/String;

    .line 25
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_PAGE_VOICE_SO:Ljava/lang/String;

    .line 26
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_ORIG_VOICE_SO:Ljava/lang/String;

    .line 27
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->ROAM_ORIG_VOICE_SO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->EVRC_CAPABILITY_ENABLED:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, evrc:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_PAGE_VOICE_SO:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, hp:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_ORIG_VOICE_SO:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, ho:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->ROAM_ORIG_VOICE_SO:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, ro:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->NAM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCurrentCmdData:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCurrentCmdData:Ljava/lang/String;

    return-object v4
.end method

.method public getEvrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->EVRC_CAPABILITY_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeOrigVoiceSo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_ORIG_VOICE_SO:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePageVoiceSo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_PAGE_VOICE_SO:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamOrigVoiceSo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->ROAM_ORIG_VOICE_SO:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 64
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->NAM:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->EVRC_CAPABILITY_ENABLED:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_PAGE_VOICE_SO:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v6}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_ORIG_VOICE_SO:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->ROAM_ORIG_VOICE_SO:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setEvrc(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->EVRC_CAPABILITY_ENABLED:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setHomeOrigVoiceSo(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_ORIG_VOICE_SO:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setHomePageVoiceSo(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->HOME_PAGE_VOICE_SO:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRoamOrigVoiceSo(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->ROAM_ORIG_VOICE_SO:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_VOICE_SO;->read()V

    .line 74
    return-void
.end method
