.class public Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;
.super Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
.source "DM_NVI_ID_DIVERSITY_HDR.java"


# static fields
.field public static final DISABLE:Ljava/lang/String; = "00"

.field public static final ENABLE:Ljava/lang/String; = "01"


# instance fields
.field private STATUS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->STATUS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->STATUS:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->mCurrentCmdData:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->STATUS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->STATUS:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_HDR;->STATUS:Ljava/lang/String;

    .line 21
    return-void
.end method
