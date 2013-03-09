.class public Lcom/htc/android/epst/translator/MeidDecTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "MeidDecTranslator.java"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/MeidDecTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 15
    iget-object v7, p0, Lcom/htc/android/epst/translator/MeidDecTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v8, 0x797

    invoke-virtual {v7, v8}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;

    .line 17
    .local v6, meid:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;
    invoke-virtual {v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->getMeid()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, all:Ljava/lang/String;
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 19
    .local v5, lowbits:Ljava/lang/Long;
    const-string v7, "%010d"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, lowValue:Ljava/lang/String;
    const/16 v7, 0xe

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 21
    .local v3, highbits:Ljava/lang/Long;
    const-string v7, "%08d"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, highValue:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, MEIDDec:Ljava/lang/String;
    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x797

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 31
    return-void
.end method
