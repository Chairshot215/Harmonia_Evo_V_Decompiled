.class public Lcom/htc/android/epst/translator/RtnMDNTranslator;
.super Lcom/htc/android/epst/translator/DirTranslator;
.source "RtnMDNTranslator.java"


# instance fields
.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/translator/DirTranslator;-><init>()V

    .line 12
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f040010

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/RtnMDNTranslator;->separator:Ljava/lang/String;

    return-void
.end method

.method private formattedMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mdn"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 26
    move-object v0, p1

    .line 27
    .local v0, ret:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/RtnMDNTranslator;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/RtnMDNTranslator;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    return-object v0
.end method

.method private originalMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "formattedMdn"

    .prologue
    .line 34
    move-object v0, p1

    .line 35
    .local v0, ret:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/htc/android/epst/translator/RtnMDNTranslator;->separator:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16
    const-string v1, ""

    .line 17
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/RtnMDNTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0xb2

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;

    .line 19
    .local v0, dir:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->getDircetory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/android/epst/translator/RtnMDNTranslator;->formattedMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_0
    return-object v1
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0xb2

    .line 43
    iget-object v3, p0, Lcom/htc/android/epst/translator/RtnMDNTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;

    .line 46
    .local v0, dir:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/android/epst/translator/RtnMDNTranslator;->originalMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v1

    .line 49
    .local v1, itemId:I
    invoke-virtual {v0, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->setDirectory(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 52
    return-void
.end method
