.class public Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;
.super Ljava/lang/Object;
.source "WiMaxIdleModeTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$STVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxIdleModeTranslator"

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

    sput v0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->MSG_READ_WIMAX_INFO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mValue:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->DBG:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mItem:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->readWiMaxInterval:I

    .line 43
    new-instance v0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$1;-><init>(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)V

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->MSG_READ_WIMAX_INFO:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mItem:I

    return v0
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 62
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$STVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator$STVerifier;-><init>(Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 150
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 153
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 154
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->sendReadRequest(I)V

    .line 155
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 158
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 159
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 160
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 165
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 7
    .parameter "itemId"

    .prologue
    .line 107
    iget v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mItem:I

    if-nez v3, :cond_0

    .line 108
    iput p1, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mItem:I

    .line 110
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v3

    sget-object v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_CONFIG:I

    aget-object v4, v4, v5

    sget v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->IDLE_AUTO_SWITCH_PERIOD:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, nValue:Ljava/lang/String;
    if-nez v2, :cond_3

    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/epst/wimax/WiMaxController;->getDCStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    const-string v3, "0"

    iput-object v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mValue:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->MSG_READ_WIMAX_INFO:I

    iget v5, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->readWiMaxInterval:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    iget-boolean v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMaxIdleModeTranslator"

    const-string v4, "sendEmptyMessageDelayed DataObject.MSG_READ_WIMAX_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "WiMaxIdleModeTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReadRequest idle period:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->retrieveItemAndUpdate(II)V

    .line 129
    return-void

    .line 118
    :cond_3
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v1, v3, 0x3e8

    .line 119
    .local v1, nIntValue:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1           #nIntValue:I
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WiMaxIdleModeTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v3, "0"

    iput-object v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, nValue:Ljava/lang/String;
    const-string v3, "WiMaxIdleModeTranslator"

    invoke-static {v2, v6, v3}, Lcom/htc/android/epst/Utility;->parseIntSafely(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 135
    .local v1, nIntValue:I
    mul-int/lit16 v1, v1, 0x3e8

    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v3

    sget-object v4, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2}, Lcom/htc/android/epst/wimax/WiMaxController;->setTHPValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 138
    .local v0, bResult:Z
    if-nez v0, :cond_0

    .line 139
    const-string v3, "WiMaxIdleModeTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WimaxNative:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMaxIdleModeTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWriteRequest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->retrieveItemAndUpdate(II)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxIdleModeTranslator;->refreshGroupSettings()V

    .line 146
    return-void
.end method
