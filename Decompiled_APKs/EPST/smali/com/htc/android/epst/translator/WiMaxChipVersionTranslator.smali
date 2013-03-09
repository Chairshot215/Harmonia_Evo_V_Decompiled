.class public Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;
.super Ljava/lang/Object;
.source "WiMaxChipVersionTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxChipVersionTranslator"

.field private static MSG_READ_WIMAX_INFO:I


# instance fields
.field private DBG:Z

.field private mHandler:Landroid/os/Handler;

.field private mItem:I

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

.field private mValue:Ljava/lang/String;

.field private readWiMaxInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->MSG_READ_WIMAX_INFO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mValue:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->DBG:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mItem:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->readWiMaxInterval:I

    .line 43
    new-instance v0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator$1;-><init>(Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;)V

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->MSG_READ_WIMAX_INFO:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mItem:I

    return v0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 117
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 120
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 121
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->sendReadRequest(I)V

    .line 122
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 125
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 126
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 127
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 5
    .parameter "itemId"

    .prologue
    .line 83
    iget v1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mItem:I

    if-nez v1, :cond_0

    .line 84
    iput p1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mItem:I

    .line 87
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GENERIC_COMMAND:I

    aget-object v2, v2, v3

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GENERIC_CHIP_VERSION:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, nValue:Ljava/lang/String;
    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/wimax/WiMaxController;->getDCStart()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    const-string v1, "0"

    iput-object v1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mValue:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->MSG_READ_WIMAX_INFO:I

    iget v3, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->readWiMaxInterval:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WiMaxChipVersionTranslator"

    const-string v2, "sendEmptyMessageDelayed DataObject.MSG_READ_WIMAX_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WiMaxChipVersionTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReadRequest handover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->retrieveItemAndUpdate(II)V

    .line 109
    return-void

    .line 100
    :cond_3
    if-nez v0, :cond_4

    .line 101
    const-string v0, "0"

    .line 103
    :cond_4
    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxChipVersionTranslator;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 0
    .parameter "modifiedValue"

    .prologue
    .line 113
    return-void
.end method
