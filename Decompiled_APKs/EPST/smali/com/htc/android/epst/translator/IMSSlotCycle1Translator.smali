.class public Lcom/htc/android/epst/translator/IMSSlotCycle1Translator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "IMSSlotCycle1Translator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/IMSSlotCycle1Translator$Verifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMSSlotCycle1Translator"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 23
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/IMSSlotCycle1Translator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 34
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 26
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 27
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/htc/android/epst/translator/IMSSlotCycle1Translator$Verifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/IMSSlotCycle1Translator$Verifier;-><init>(Lcom/htc/android/epst/translator/IMSSlotCycle1Translator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/IMSSlotCycle1Translator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x1f89

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;

    .line 63
    .local v0, nvData:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->getData1()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "IMSSlotCycle1Translator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingValue.val:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f89

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 74
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    const/16 v6, 0x1f89

    .line 78
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 80
    .local v0, itemId:I
    iget-object v3, p0, Lcom/htc/android/epst/translator/IMSSlotCycle1Translator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;

    .line 82
    .local v1, nvData:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;
    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->setData1(Ljava/lang/String;)V

    .line 83
    sget-boolean v3, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "IMSSlotCycle1Translator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWriteRequest.val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v6, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 86
    return-void
.end method
