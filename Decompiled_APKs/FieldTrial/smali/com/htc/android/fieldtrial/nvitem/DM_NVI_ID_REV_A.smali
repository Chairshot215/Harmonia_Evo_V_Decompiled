.class public Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;
.super Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
.source "DM_NVI_ID_REV_A.java"


# static fields
.field public static DISABLE_STREAM:Ljava/lang/String;

.field public static ENABLE_STREAM:Ljava/lang/String;


# instance fields
.field private STATUS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "00"

    sput-object v0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->DISABLE_STREAM:Ljava/lang/String;

    .line 16
    const-string v0, "01"

    sput-object v0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->ENABLE_STREAM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;-><init>()V

    .line 18
    sget-object v0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->DISABLE_STREAM:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->STATUS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->STATUS:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->mCurrentCmdData:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->STATUS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->STATUS:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_REV_A;->STATUS:Ljava/lang/String;

    .line 25
    return-void
.end method
