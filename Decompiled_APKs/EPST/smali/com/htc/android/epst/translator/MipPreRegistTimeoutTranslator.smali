.class public Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "MipPreRegistTimeoutTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator$MipPreRegistTimeoutVerifier;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MipPreRegistTimeoutTranslator"

    sput-object v0, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 21
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x1ce

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;

    iput-object v0, p0, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 25
    new-array v0, v3, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v2, v0, v1

    .line 27
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator$MipPreRegistTimeoutVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator$MipPreRegistTimeoutVerifier;-><init>(Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->getDsMipPreReRrqTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 64
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1ce

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 66
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/MipPreRegistTimeoutTranslator;->mRawData:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;

    invoke-virtual {v1, v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DS_MIP_PRE_RE_RRQ_TIME_I;->setDsMipPreReRrqTime(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v1

    const/16 v2, 0x27

    const/16 v3, 0x1ce

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 75
    return-void
.end method
