.class public Lcom/htc/android/epst/translator/LifeCounterTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "LifeCounterTranslator.java"


# instance fields
.field protected mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 14
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/LifeCounterTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 33
    const-string v0, ""

    .line 34
    .local v0, value:Ljava/lang/String;
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/android/epst/translator/LifeCounterTranslator;->getTotalCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method protected getTotalCount()J
    .locals 13

    .prologue
    const/16 v11, 0x10

    .line 17
    iget-object v9, p0, Lcom/htc/android/epst/translator/LifeCounterTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x1f5a

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;

    .line 18
    .local v0, mohome:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;
    iget-object v9, p0, Lcom/htc/android/epst/translator/LifeCounterTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x1f5b

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOROAM;

    .line 19
    .local v2, moroam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOROAM;
    iget-object v9, p0, Lcom/htc/android/epst/translator/LifeCounterTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x1f5c

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTHOME;

    .line 20
    .local v4, mthome:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTHOME;
    iget-object v9, p0, Lcom/htc/android/epst/translator/LifeCounterTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v10, 0x1f5d

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v6

    check-cast v6, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;

    .line 22
    .local v6, mtroam:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOHOME;->getCounts()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 23
    .local v1, mohomeCounts:Ljava/lang/Long;
    invoke-virtual {v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MOROAM;->getCounts()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 24
    .local v3, moroamCounts:Ljava/lang/Long;
    invoke-virtual {v4}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTHOME;->getCounts()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 25
    .local v5, mthomeCounts:Ljava/lang/Long;
    invoke-virtual {v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MTROAM;->getCounts()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 26
    .local v7, mtroamCounts:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 28
    .local v8, totalCounts:Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    return-wide v9
.end method

.method public sendReadRequest(I)V
    .locals 4
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x26

    .line 40
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x1f5a

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 42
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x1f5b

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 44
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x1f5c

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 46
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x1f5d

    invoke-virtual {v0, v2, v1, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 48
    return-void
.end method
