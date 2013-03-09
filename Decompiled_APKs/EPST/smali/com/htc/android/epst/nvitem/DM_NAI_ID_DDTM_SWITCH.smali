.class public Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NAI_ID_DDTM_SWITCH.java"


# static fields
.field public static final DISABLE:Ljava/lang/String; = "00"

.field public static final ENABLE:Ljava/lang/String; = "01"


# instance fields
.field private DDTM_SWITCH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 10
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->DDTM_SWITCH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->DDTM_SWITCH:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->mCurrentCmdData:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getDDTM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->DDTM_SWITCH:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->DDTM_SWITCH:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setDDTM(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NAI_ID_DDTM_SWITCH;->DDTM_SWITCH:Ljava/lang/String;

    .line 18
    return-void
.end method
