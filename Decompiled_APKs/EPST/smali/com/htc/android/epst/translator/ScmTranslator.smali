.class public Lcom/htc/android/epst/translator/ScmTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "ScmTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;

    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->getScm()Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, value:Ljava/lang/String;
    const-string v1, "0"

    .line 19
    .local v1, nNum:Ljava/lang/String;
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ScmTranslator"

    const-string v4, "ScmTranslator.getSettingValue.Integer.parseInt is fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 28
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 30
    return-void
.end method
