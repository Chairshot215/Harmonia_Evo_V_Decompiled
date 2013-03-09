.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DYNAMIC_FEATURE;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DYNAMIC_FEATURE.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DYNAMIC_FEATURE;->mCurrentCmdData:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DYNAMIC_FEATURE;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method
