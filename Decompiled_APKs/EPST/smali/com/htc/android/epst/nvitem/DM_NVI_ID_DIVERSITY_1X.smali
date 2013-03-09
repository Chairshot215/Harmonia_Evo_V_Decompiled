.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DIVERSITY_1X.java"


# static fields
.field public static final DISABLE:Ljava/lang/String; = "0000"

.field public static final ENABLE:Ljava/lang/String; = "0100"

.field public static final RDDS:Ljava/lang/String; = "1100"


# instance fields
.field private STATUS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 9
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->STATUS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->STATUS:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->mCurrentCmdData:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->STATUS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->STATUS:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIVERSITY_1X;->STATUS:Ljava/lang/String;

    .line 17
    return-void
.end method
