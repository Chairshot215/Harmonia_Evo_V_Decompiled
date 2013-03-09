.class public Lcom/htc/android/epst/translator/DirTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "DirTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/DirTranslator$DirVerifier;
    }
.end annotation


# static fields
.field public static final MDN_LENGTH:I = 0xa


# instance fields
.field protected mController:Lcom/htc/android/epst/nvitem/NvItemController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 20
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/DirTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 31
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

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 24
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/android/epst/translator/DirTranslator$DirVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/DirTranslator$DirVerifier;-><init>(Lcom/htc/android/epst/translator/DirTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    const-string v1, ""

    .line 51
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/DirTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0xb2

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;

    .line 53
    .local v0, dir:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->getDircetory()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    return-object v1
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0xb2

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 62
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 6
    .parameter "modifiedValue"

    .prologue
    const/16 v5, 0xb2

    .line 66
    iget-object v3, p0, Lcom/htc/android/epst/translator/DirTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v3, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;

    .line 69
    .local v0, dir:Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, val:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v1

    .line 72
    .local v1, itemId:I
    invoke-virtual {v0, v2}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->setDirectory(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v5, v1, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 75
    return-void
.end method
