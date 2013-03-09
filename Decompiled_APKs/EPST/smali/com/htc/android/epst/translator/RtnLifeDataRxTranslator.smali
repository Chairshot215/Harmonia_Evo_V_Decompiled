.class public Lcom/htc/android/epst/translator/RtnLifeDataRxTranslator;
.super Lcom/htc/android/epst/translator/LifeDataRxTranslator;
.source "RtnLifeDataRxTranslator.java"


# instance fields
.field private kilobytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/epst/translator/LifeDataRxTranslator;-><init>()V

    .line 9
    const/16 v0, 0x400

    iput v0, p0, Lcom/htc/android/epst/translator/RtnLifeDataRxTranslator;->kilobytes:I

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 8

    .prologue
    .line 13
    iget-object v4, p0, Lcom/htc/android/epst/translator/RtnLifeDataRxTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x1f5e

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;

    .line 15
    .local v0, datacall:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->getRX()Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, rx:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    iget v6, p0, Lcom/htc/android/epst/translator/RtnLifeDataRxTranslator;->kilobytes:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 17
    .local v2, rxdata:Ljava/lang/Long;
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v4

    const v5, 0x7f040013

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, value:Ljava/lang/String;
    return-object v3
.end method
