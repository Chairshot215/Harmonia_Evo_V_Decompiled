.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DS_MIP_RETRY_INT_I.java"


# static fields
.field public static final MS_1000:Ljava/lang/String; = "00"

.field public static final MS_1250:Ljava/lang/String; = "01"

.field public static final MS_1500:Ljava/lang/String; = "02"

.field public static final MS_1750:Ljava/lang/String; = "03"

.field public static final MS_2000:Ljava/lang/String; = "04"

.field public static final MS_2250:Ljava/lang/String; = "05"

.field public static final MS_2500:Ljava/lang/String; = "06"

.field public static final MS_2750:Ljava/lang/String; = "07"

.field public static final MS_3000:Ljava/lang/String; = "08"

.field public static final MS_3250:Ljava/lang/String; = "09"

.field public static final MS_3500:Ljava/lang/String; = "0A"

.field public static final MS_3750:Ljava/lang/String; = "0B"

.field public static final MS_4000:Ljava/lang/String; = "0C"

.field public static final MS_4250:Ljava/lang/String; = "0D"

.field public static final MS_4500:Ljava/lang/String; = "0E"

.field public static final MS_4750:Ljava/lang/String; = "0F"

.field public static final MS_5000:Ljava/lang/String; = "10"


# instance fields
.field private DS_MIP_RETRY_INT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 24
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->DS_MIP_RETRY_INT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->DS_MIP_RETRY_INT:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->mCurrentCmdData:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getDsMipRetryInt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->DS_MIP_RETRY_INT:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->DS_MIP_RETRY_INT:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDsMipRetryInt(Ljava/lang/String;)V
    .locals 0
    .parameter "retryInt"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_RETRY_INT_I;->DS_MIP_RETRY_INT:Ljava/lang/String;

    .line 32
    return-void
.end method
