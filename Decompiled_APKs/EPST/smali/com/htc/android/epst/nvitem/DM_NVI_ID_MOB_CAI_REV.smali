.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MOB_CAI_REV.java"


# static fields
.field public static final IS2000:Ljava/lang/String; = "06"

.field public static final IS95A_TSB74:Ljava/lang/String; = "03"

.field public static final J_STD_008:Ljava/lang/String; = "01"


# instance fields
.field private MOB_CAI_REV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 11
    const-string v0, "01"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->MOB_CAI_REV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->MOB_CAI_REV:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->mCurrentCmdData:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getCaiRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->MOB_CAI_REV:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->MOB_CAI_REV:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setCaiRev(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->MOB_CAI_REV:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOB_CAI_REV;->read()V

    .line 29
    return-void
.end method
