.class public Lcom/htc/android/fieldtrial/translator/CdmaReceDiverTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "CdmaReceDiverTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 4
    .parameter "itemId"

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getSingleton()Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    move-result-object v2

    const/16 v3, 0x3fa

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_1X;

    .line 16
    .local v0, cdma:Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_1X;
    const-string v1, ""

    .line 17
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_1X;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f05001b

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    :goto_0
    return-object v1

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_1X;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f05001c

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/DM_NVI_ID_DIVERSITY_1X;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f05001d

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f05001e

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0x3fa

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestNvCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 32
    return-void
.end method
