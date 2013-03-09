.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PREF_FOR_RC_I.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DM_NVI_ID_PREF_FOR_RC_I"

.field public static final RC1:Ljava/lang/String; = "0001"

.field public static final RC2:Ljava/lang/String; = "0002"

.field public static final RC3:Ljava/lang/String; = "0003"

.field public static final RC4:Ljava/lang/String; = "0004"

.field public static final RC5:Ljava/lang/String; = "0005"


# instance fields
.field private gMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 20
    const-string v0, "0001"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->gMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->gMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, mode:Ljava/lang/String;
    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->mCurrentCmdData:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->gMode:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->gMode:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->gMode:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PREF_FOR_RC_I;->read()V

    .line 40
    return-void
.end method
