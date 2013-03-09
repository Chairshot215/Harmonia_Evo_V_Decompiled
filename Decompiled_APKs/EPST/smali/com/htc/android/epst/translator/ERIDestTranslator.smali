.class public Lcom/htc/android/epst/translator/ERIDestTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "ERIDestTranslator.java"


# instance fields
.field gERIDest:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 16
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    const/16 v1, 0x1f52

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;

    iput-object v0, p0, Lcom/htc/android/epst/translator/ERIDestTranslator;->gERIDest:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/translator/ERIDestTranslator;->gERIDest:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;

    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->getERIDESTINATION()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 34
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f52

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 36
    return-void
.end method
