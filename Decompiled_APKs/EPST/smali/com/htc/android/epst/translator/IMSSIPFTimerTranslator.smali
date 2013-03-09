.class public Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "IMSSIPFTimerTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator$Verifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMSSIPFTimerTranslator"


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 22
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 33
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 25
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

    .line 26
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator$Verifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator$Verifier;-><init>(Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v1, ""

    .line 60
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x1f8b

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_F_TIMER_I;

    .line 62
    .local v0, nvData:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_F_TIMER_I;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_F_TIMER_I;->getData()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 70
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f8b

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 72
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0x1f8b

    .line 76
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 78
    .local v0, itemId:I
    iget-object v3, p0, Lcom/htc/android/epst/translator/IMSSIPFTimerTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_F_TIMER_I;

    .line 80
    .local v1, nvData:Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_F_TIMER_I;
    invoke-virtual {v1, v2}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_F_TIMER_I;->setData(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v5, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 83
    return-void
.end method
