.class public Lcom/htc/android/epst/translator/SlotModeTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "SlotModeTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SlotModeTranslator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v3

    check-cast v3, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;

    invoke-virtual {v3}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SCM;->getScm()Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 21
    .local v1, iValue:I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    :goto_0
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 27
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04005c

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    :goto_1
    return-object v2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SlotModeTranslator"

    const-string v4, "iValue = Integer.parseInt(value, 16) ERROR!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04005d

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 38
    return-void
.end method
