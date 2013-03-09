.class public Lcom/htc/android/epst/translator/LifeDataRxTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "LifeDataRxTranslator.java"


# instance fields
.field protected mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/LifeDataRxTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 15
    iget-object v4, p0, Lcom/htc/android/epst/translator/LifeDataRxTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x1f5e

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;

    .line 17
    .local v0, datacall:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DATACALL;->getRX()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, rx:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 19
    .local v2, rxdata:Ljava/lang/Long;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, value:Ljava/lang/String;
    return-object v3
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f5e

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 27
    return-void
.end method
