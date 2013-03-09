.class public Lcom/htc/android/epst/translator/PacketDialStringTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "PacketDialStringTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PacketDialStringTranslator"


# instance fields
.field private mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 19
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x12a

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;

    iput-object v0, p0, Lcom/htc/android/epst/translator/PacketDialStringTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 23
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/epst/translator/PacketDialStringTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->getDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x12a

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 37
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 44
    .local v1, numDigits:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, hex:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v3, p0, Lcom/htc/android/epst/translator/PacketDialStringTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;

    invoke-virtual {v3, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->setNumDigits(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/htc/android/epst/translator/PacketDialStringTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;

    invoke-virtual {v3, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->setDigits(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    const/16 v5, 0x12a

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 52
    return-void
.end method
