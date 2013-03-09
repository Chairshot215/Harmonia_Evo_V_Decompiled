.class public Lcom/htc/android/epst/wimax/WiMaxController;
.super Ljava/lang/Object;
.source "WiMaxController.java"


# static fields
.field private static mDC_START:Z

.field private static mInstance:Lcom/htc/android/epst/wimax/WiMaxController;


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxController;->mInstance:Lcom/htc/android/epst/wimax/WiMaxController;

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/epst/wimax/WiMaxController;->mDC_START:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "WiMaxController"

    iput-object v0, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    .line 9
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/wimax/WiMaxController;->DBG:Z

    return-void
.end method

.method private bEnableWiMax()Z
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x1

    .line 38
    .local v0, bResult:Z
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SEQUANSD_PID:I

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, nPID:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nPID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    const/4 v0, 0x0

    .line 43
    :cond_1
    return v0
.end method

.method public static getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxController;->mInstance:Lcom/htc/android/epst/wimax/WiMaxController;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/htc/android/epst/wimax/WiMaxController;

    invoke-direct {v0}, Lcom/htc/android/epst/wimax/WiMaxController;-><init>()V

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxController;->mInstance:Lcom/htc/android/epst/wimax/WiMaxController;

    .line 16
    :cond_0
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxController;->mInstance:Lcom/htc/android/epst/wimax/WiMaxController;

    return-object v0
.end method

.method private isExecuteWiMaxProperty()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->count()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 166
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getWiMaxRecord(I)Lcom/htc/android/epst/wimax/WiMaxRecord;

    move-result-object v2

    .line 167
    .local v2, record:Lcom/htc/android/epst/wimax/WiMaxRecord;
    iget-boolean v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->DBG:Z

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isExecuteWiMaxProperty IN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget v4, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    sget v5, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_PROPERTY:I

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 172
    iget-boolean v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->DBG:Z

    if-eqz v4, :cond_1

    .line 173
    iget-object v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExecuteWiMaxProperty>setWimaxPro.successful.WiMaxID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WiMax value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget v4, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    sget v5, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_HTP:I

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/epst/wimax/WiMaxController;->setTHPValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    iget-boolean v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->DBG:Z

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExecuteWiMaxProperty>setTHPValue.successful.WiMaxID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WiMax value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 184
    iget-boolean v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->DBG:Z

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExecuteWiMaxProperty>setWimaxPro.fail.WiMaxID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WiMax value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v2           #record:Lcom/htc/android/epst/wimax/WiMaxRecord;
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->clear()V

    .line 191
    if-nez v1, :cond_5

    :goto_2
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isValidWiMaxID(Ljava/lang/String;Lcom/htc/android/epst/wimax/WiMaxRecord;)Z
    .locals 3
    .parameter "iWiMaxID"
    .parameter "iRecord"

    .prologue
    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY_COUNT:I

    if-ge v0, v2, :cond_2

    .line 142
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 143
    if-eqz p2, :cond_0

    .line 144
    sget v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_PROPERTY:I

    iput v2, p2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    .line 158
    :cond_0
    :goto_1
    return v1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COUNT:I

    if-ge v0, v2, :cond_4

    .line 151
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_3

    .line 152
    if-eqz p2, :cond_0

    .line 153
    sget v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_HTP:I

    iput v2, p2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    goto :goto_1

    .line 150
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getDCStart()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/htc/android/epst/wimax/WiMaxController;->mDC_START:Z

    return v0
.end method

.method public getTHPValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "iHPTID"
    .parameter "iSection"

    .prologue
    const/4 v4, 0x1

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, nResult:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/android/epst/wimax/WiMaxController;->bEnableWiMax()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getTHPValue.WiMAX is not enabled now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 254
    .end local v0           #nResult:Ljava/lang/String;
    .local v1, nResult:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 221
    .end local v1           #nResult:Ljava/lang/String;
    .restart local v0       #nResult:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_HANDOVER:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 222
    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->SHOWHANDOVER_HANDOVER_THRESHOLD:I

    if-ne p2, v2, :cond_1

    .line 223
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getHOThreshold()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 254
    .end local v0           #nResult:Ljava/lang/String;
    .restart local v1       #nResult:Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v1           #nResult:Ljava/lang/String;
    .restart local v0       #nResult:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implement.section:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    :cond_2
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SHOW_CONFIG:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 229
    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->IDLE_AUTO_SWITCH_PERIOD:I

    if-ne p2, v2, :cond_3

    .line 230
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getPSMSConfig()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_3
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implement.section:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    :cond_4
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_HELP_SETHANDOVER:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 237
    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->NONE:I

    if-ne p2, v2, :cond_5

    .line 238
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->showHelpSetHandover()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_5
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implement.section:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_6
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GENERIC_COMMAND:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_8

    .line 245
    sget v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GENERIC_CHIP_VERSION:I

    if-ne p2, v2, :cond_7

    .line 246
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->GetWimaxChipVersion()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 248
    :cond_7
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implement.section:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 252
    :cond_8
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTHPValue>No this wimax type.please check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getWiMaxValueByID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "iWiMaxID"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, nWiMaxValue:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/epst/wimax/WiMaxRecord;

    invoke-direct {v2}, Lcom/htc/android/epst/wimax/WiMaxRecord;-><init>()V

    .line 87
    .local v2, record:Lcom/htc/android/epst/wimax/WiMaxRecord;
    invoke-direct {p0, p1, v2}, Lcom/htc/android/epst/wimax/WiMaxController;->isValidWiMaxID(Ljava/lang/String;Lcom/htc/android/epst/wimax/WiMaxRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    .line 105
    .end local v0           #nWiMaxValue:Ljava/lang/String;
    .local v1, nWiMaxValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 91
    .end local v1           #nWiMaxValue:Ljava/lang/String;
    .restart local v0       #nWiMaxValue:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getValueByWiMaxID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    iget v3, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    sget v4, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_PROPERTY:I

    if-ne v3, v4, :cond_2

    .line 96
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v3, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWiMaxValueByID(01)>get iWiMaxID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object v1, v0

    .line 105
    .end local v0           #nWiMaxValue:Ljava/lang/String;
    .restart local v1       #nWiMaxValue:Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v1           #nWiMaxValue:Ljava/lang/String;
    .restart local v0       #nWiMaxValue:Ljava/lang/String;
    :cond_2
    iget v3, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    sget v4, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_HTP:I

    if-ne v3, v4, :cond_3

    .line 100
    iget-object v3, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getWiMaxValueByID(01)>No support wimax HTP at this function"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :cond_3
    iget-object v3, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWiMaxValueByID(01)>No this WiMax Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " please check."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getWiMaxValueByID(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "iWiMaxID"
    .parameter "iSection"
    .parameter "bCli"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, nWiMaxValue:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/epst/wimax/WiMaxRecord;

    invoke-direct {v2}, Lcom/htc/android/epst/wimax/WiMaxRecord;-><init>()V

    .line 55
    .local v2, record:Lcom/htc/android/epst/wimax/WiMaxRecord;
    invoke-direct {p0, p1, v2}, Lcom/htc/android/epst/wimax/WiMaxController;->isValidWiMaxID(Ljava/lang/String;Lcom/htc/android/epst/wimax/WiMaxRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    .line 77
    .end local v0           #nWiMaxValue:Ljava/lang/String;
    .local v1, nWiMaxValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 59
    .end local v1           #nWiMaxValue:Ljava/lang/String;
    .restart local v0       #nWiMaxValue:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getValueByWiMaxID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    iget v3, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    sget v4, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_PROPERTY:I

    if-ne v3, v4, :cond_2

    .line 63
    invoke-static {p1}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v3, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWiMaxValueByID(02)>get iWiMaxID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object v1, v0

    .line 77
    .end local v0           #nWiMaxValue:Ljava/lang/String;
    .restart local v1       #nWiMaxValue:Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v1           #nWiMaxValue:Ljava/lang/String;
    .restart local v0       #nWiMaxValue:Ljava/lang/String;
    :cond_2
    iget v3, v2, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxType:I

    sget v4, Lcom/htc/android/epst/wimax/WiMaxRecord;->WIMAX_HTP:I

    if-ne v3, v4, :cond_4

    .line 68
    if-eqz p3, :cond_3

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/epst/wimax/WiMaxController;->getTHPValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_3
    iget-object v3, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWiMaxValueByID(02)>get wimax WIMAX_HTP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    :cond_4
    iget-object v3, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWiMaxValueByID(02)>No support this mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isCommit()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/android/epst/wimax/WiMaxController;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isExecuteWiMaxProperty>isEmpty()==true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/htc/android/epst/wimax/WiMaxController;->isExecuteWiMaxProperty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/android/epst/wimax/WiMaxController;->bEnableWiMax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/epst/wimax/WiMaxController;->mDC_START:Z

    goto :goto_0
.end method

.method public setTHPValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "iHPTID"
    .parameter "iValue"

    .prologue
    const/4 v4, 0x1

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, bResult:Z
    invoke-direct {p0}, Lcom/htc/android/epst/wimax/WiMaxController;->bEnableWiMax()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setTHPValue.WiMAX is not enabled now"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 210
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 203
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_SETHANDOVER:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 204
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->setHOThreshold(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 210
    .restart local v1       #bResult:I
    goto :goto_0

    .line 205
    .end local v1           #bResult:I
    :cond_1
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_COMMAND:[Ljava/lang/String;

    sget v3, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->CLI_CHANGE_ID_DELAY:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 206
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxInfoEPST;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/android/epst/wimax/WiMaxInfoEPST;->setPSMSConfig(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTHPValue>No this wimax type.please check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startDc()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/epst/wimax/WiMaxController;->bEnableWiMax()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/epst/wimax/WiMaxController;->mDC_START:Z

    goto :goto_0
.end method

.method public storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "iWiMaxID"
    .parameter "iWiMaxValue"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, nWiMaxID:Ljava/lang/String;
    new-instance v1, Lcom/htc/android/epst/wimax/WiMaxRecord;

    invoke-direct {v1}, Lcom/htc/android/epst/wimax/WiMaxRecord;-><init>()V

    .line 113
    .local v1, record:Lcom/htc/android/epst/wimax/WiMaxRecord;
    invoke-direct {p0, p1, v1}, Lcom/htc/android/epst/wimax/WiMaxController;->isValidWiMaxID(Ljava/lang/String;Lcom/htc/android/epst/wimax/WiMaxRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const/4 v2, 0x0

    .line 120
    :goto_0
    return v2

    .line 117
    :cond_0
    iput-object p1, v1, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    .line 118
    iput-object p2, v1, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->storeModifiedWiMaxID(Lcom/htc/android/epst/wimax/WiMaxRecord;)V

    .line 120
    const/4 v2, 0x1

    goto :goto_0
.end method
