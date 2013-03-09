.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_HA_AUTH.java"


# static fields
.field public static final DISABLE_STREAM:Ljava/lang/String; = "00"

.field public static final ENABLE_STREAM:Ljava/lang/String; = "01"


# instance fields
.field private STATUS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 7
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->STATUS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->STATUS:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->mCurrentCmdData:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->STATUS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->STATUS:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HA_AUTH;->STATUS:Ljava/lang/String;

    .line 14
    return-void
.end method
