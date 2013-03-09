.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_QCMIP_I.java"


# static fields
.field public static final MOBILE_IP_ONLY:Ljava/lang/String; = "02"

.field public static final MOBILE_IP_PREFERED:Ljava/lang/String; = "01"

.field public static final SIMPLE_IP_ONLY:Ljava/lang/String; = "00"


# instance fields
.field private DS_QCMIP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->DS_QCMIP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->DS_QCMIP:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->mCurrentCmdData:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getDsQcmip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->DS_QCMIP:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->DS_QCMIP:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDsQcmip(Ljava/lang/String;)V
    .locals 0
    .parameter "mip"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_QCMIP_I;->DS_QCMIP:Ljava/lang/String;

    .line 18
    return-void
.end method
