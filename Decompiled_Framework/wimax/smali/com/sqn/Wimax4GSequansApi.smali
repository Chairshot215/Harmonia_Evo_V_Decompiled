.class public Lcom/sqn/Wimax4GSequansApi;
.super Ljava/lang/Object;
.source "Wimax4GSequansApi.java"

# interfaces
.implements Lcom/htc/net/wimax/Wimax4GApi;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_DEBUG:I = 0x4

.field private static final LOG_ERROR:I = 0x2

.field private static final LOG_FATAL:I = 0x1

.field private static final LOG_WARNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Wimax4GSequansApi"

.field private static dmTree:Lcom/sqn/omadm/DmTree;

.field private static dmTreeModified:Z

.field private static logLevel:I


# instance fields
.field private dcInstance:Lcom/sqn/dcc/DeviceController;

.field private mObserver:Lcom/htc/net/wimax/WimaxEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/sqn/Wimax4GSequansApi;->logLevel:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sqn/Wimax4GSequansApi;->dmTreeModified:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object v2, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    iput-object p1, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    new-instance v0, Lcom/sqn/WimaxDccStdOut;

    invoke-direct {v0, p1}, Lcom/sqn/WimaxDccStdOut;-><init>(Lcom/htc/net/wimax/WimaxEventObserver;)V

    new-instance v1, Lcom/sqn/dcc/DccInitConfig;

    invoke-direct {v1}, Lcom/sqn/dcc/DccInitConfig;-><init>()V

    iput-object v0, v1, Lcom/sqn/dcc/DccInitConfig;->consoleOutput:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "127.0.0.1"

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->serverIp:Ljava/lang/String;

    const/16 v2, 0x1e5b

    iput v2, v1, Lcom/sqn/dcc/DccInitConfig;->serverPort:I

    new-instance v2, Lcom/sqn/WimaxDeviceInfoClient;

    iget-object v3, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-direct {v2, v0, v3}, Lcom/sqn/WimaxDeviceInfoClient;-><init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->device:Lcom/sqn/dcc/DeviceInfoClient;

    new-instance v2, Lcom/sqn/WimaxDbgClient;

    iget-object v3, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-direct {v2, v0, v3}, Lcom/sqn/WimaxDbgClient;-><init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->dbg:Lcom/sqn/dcc/DbgClient;

    new-instance v2, Lcom/sqn/WimaxHoClient;

    iget-object v3, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-direct {v2, v0, v3}, Lcom/sqn/WimaxHoClient;-><init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->ho:Lcom/sqn/dcc/HoClient;

    new-instance v2, Lcom/sqn/WimaxMgtSsClient;

    iget-object v3, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-direct {v2, v0, v3}, Lcom/sqn/WimaxMgtSsClient;-><init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->mgtSs:Lcom/sqn/dcc/MgtSsClient;

    new-instance v2, Lcom/sqn/WimaxNdssClient;

    iget-object v3, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-direct {v2, v0, v3}, Lcom/sqn/WimaxNdssClient;-><init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->nds:Lcom/sqn/dcc/NdssClient;

    new-instance v2, Lcom/sqn/WimaxDccUsing;

    iget-object v3, p0, Lcom/sqn/Wimax4GSequansApi;->mObserver:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-direct {v2, v0, v3}, Lcom/sqn/WimaxDccUsing;-><init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V

    iput-object v2, v1, Lcom/sqn/dcc/DccInitConfig;->use:Lcom/sqn/dcc/DccUsing;

    new-instance v2, Lcom/sqn/dcc/DeviceController;

    invoke-direct {v2, v1}, Lcom/sqn/dcc/DeviceController;-><init>(Lcom/sqn/dcc/DccInitConfig;)V

    iput-object v2, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    iget-object v2, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v2}, Lcom/sqn/dcc/DeviceController;->createDc()Z

    return-void
.end method

.method public static LOG(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/sqn/Wimax4GSequansApi;->logLevel:I

    if-lt v0, p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "Wimax4GSequansApi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Wimax4GSequansApi"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createBaseStationInfo(Lcom/sqn/dcc/ScanResultExtBand;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iget v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setBandId(I)V

    iget v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setFreqId(I)V

    iget-short v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setPreamble(J)V

    iget-wide v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v1, v3, v4}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setNapId(J)V

    iget-object v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->nspId:[J

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->nspId:[J

    aget-wide v3, v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setNspId(J)V

    :cond_0
    iget-object v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/sqn/dcc/StaticArray_char_128;->data:[C

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setNspName(Ljava/lang/String;)V

    :cond_1
    iget v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setRSSI(I)V

    iget v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->cinr:I

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setCINR(I)V

    iget v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setCINR1(I)V

    iget v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->cinrR3:I

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setCINR3(I)V

    iget-wide v3, p0, Lcom/sqn/dcc/ScanResultExtBand;->bsId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "000000000000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0xc

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setBSID(Ljava/lang/String;)V

    return-object v1
.end method

.method public static fecCodeToModulation(Lcom/sqn/dcc/swmOfdmaFecCode;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    iget v0, p0, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_QPSK:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_16QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_64QAM:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    const-string v1, "Wimax4GSequansApi"

    const-string v2, "generalGetSetOmadm: setValue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "false"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->UseOmaDmDataInFlash()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsYtlProject()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p2, p4}, Lcom/htc/net/wimax/WimaxNative;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    new-instance v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_5

    sget-object v1, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    invoke-virtual {v1, p3}, Lcom/sqn/omadm/DmTree;->getWimaxNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    invoke-virtual {v1, p3, p4}, Lcom/sqn/omadm/DmTree;->setWimaxNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/String;

    const-string v1, "##DMTREE_NOT_INITIAL##"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "Wimax4GSequansApi"

    const-string v2, "generalGetSetOmadmi: dmTree is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAverageAndDeviation(Ljava/lang/String;[Ljava/lang/String;)[F
    .locals 21

    new-instance v9, Ljava/util/StringTokenizer;

    const-string v18, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x20

    const/16 v19, 0x20

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    const-class v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const-string v18, "|"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v10, Ljava/util/StringTokenizer;

    const-string v18, "|"

    move-object/from16 v0, v18

    invoke-direct {v10, v8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_1

    add-int/lit8 v14, v13, 0x1

    aget-object v18, v12, v13

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v16

    move v13, v14

    goto :goto_1

    :cond_1
    move v15, v13

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_2
    move/from16 v17, v16

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v15, :cond_3

    aget-object v18, v12, v5

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v19, p2, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    aget-object v18, v12, v5

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v19, p2, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move v6, v5

    :cond_3
    const/4 v7, 0x2

    :goto_3
    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    :try_start_0
    aget-object v18, v12, v6

    aget-object v18, v18, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    add-float v2, v2, v18

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v18, "Wimax4GSequansApi"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getAverageAndDeviation: parseInt parsing error, ParseString="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v12, v6

    aget-object v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_4
    return-object v18

    :cond_5
    add-int/lit8 v18, v17, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v2, v2, v18

    const/4 v5, 0x2

    :goto_5
    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    :try_start_1
    aget-object v18, v12, v6

    aget-object v18, v18, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    sub-float v18, v18, v2

    aget-object v19, v12, v6

    aget-object v19, v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    sub-float v19, v19, v2

    mul-float v18, v18, v19

    add-float v11, v11, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catch_1
    move-exception v4

    const-string v18, "Wimax4GSequansApi"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getAverageAndDeviation: parseInt parsing error, ParseString="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v12, v6

    aget-object v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v18, v17, -0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v11, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v3, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v2, v18, v19

    const/16 v19, 0x1

    aput v3, v18, v19

    goto :goto_4
.end method

.method private getDlPermBase()I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/swmFcd;

    invoke-direct {v3}, Lcom/sqn/dcc/swmFcd;-><init>()V

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, " getDlPermBase: fcd == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-static {v2}, Lcom/sqn/dcc/MacSs;->GetFcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDlPermBase: MacSs.GetFcd error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sqn/dcc/swmFcd;

    iget-object v3, v3, Lcom/sqn/dcc/swmFcd;->phy:Lcom/sqn/dcc/swmFcdPhy;

    iget-object v3, v3, Lcom/sqn/dcc/swmFcdPhy;->v:Lcom/sqn/dcc/swmOfdmaFcd;

    iget-object v3, v3, Lcom/sqn/dcc/swmOfdmaFcd;->dlZone:[Lcom/sqn/dcc/swmOfdmaFcdDlZone;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-short v1, v3, Lcom/sqn/dcc/swmOfdmaFcdDlZone;->dlPermBase:S

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDlPermBase: dlPermBase = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUlPermBase()I
    .locals 6

    const/4 v2, -0x1

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/swmFcd;

    invoke-direct {v3}, Lcom/sqn/dcc/swmFcd;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, " getUlPermBase: fcd == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->GetFcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUlPermBase: MacSs.GetFcd error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sqn/dcc/swmFcd;

    iget-object v3, v3, Lcom/sqn/dcc/swmFcd;->phy:Lcom/sqn/dcc/swmFcdPhy;

    iget-object v3, v3, Lcom/sqn/dcc/swmFcdPhy;->v:Lcom/sqn/dcc/swmOfdmaFcd;

    iget-object v3, v3, Lcom/sqn/dcc/swmOfdmaFcd;->ulZone:[Lcom/sqn/dcc/swmOfdmaFcdUlZone;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-short v2, v3, Lcom/sqn/dcc/swmOfdmaFcdUlZone;->ulPermBase:S

    goto :goto_0
.end method

.method private parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x3a

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseCliResult: Matched = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static shortToFecCode(S)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_UNKNOW:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_CC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_CC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_CC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_CC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CC_2_3:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_BTC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_BTC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_BTC_3_5:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_BTC_4_5:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_BTC_5_8:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_BTC_4_5:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_CTC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_FEC_CODE_RVD14:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_CTC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_CTC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_CTC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CTC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_13
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CTC_2_3:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_14
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CTC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CTC_5_6:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_16
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_ZT_CC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_17
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_ZT_CC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_18
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_ZT_CC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_19
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_ZT_CC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1a
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_ZT_CC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1b
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_ZT_CC_2_3:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1c
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_ZT_CC_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1d
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_LDPC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1e
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_LDPC_2_3_A:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_1f
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_LDPC_3_4_A:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_20
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_LDPC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_21
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_LDPC_2_3_A:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_22
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_LDPC_3_4_A:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_23
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_LDPC_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_24
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_LDPC_2_3_A:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_25
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_LDPC_3_4_A:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_26
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_LDPC_2_3_B:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_27
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_LDPC_3_4_B:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_28
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_LDPC_2_3_B:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_29
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_LDPC_3_4_B:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto :goto_0

    :pswitch_2a
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_LDPC_2_3_B:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_2b
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_LDPC_3_4_B:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_2c
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_CCOI_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_2d
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_CCOI_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_2e
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_CCOI_1_2:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_2f
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_CCOI_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_30
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CCOI_2_3:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_31
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_CCOI_3_4:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_32
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QPSK_LDPC_5_6:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_33
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM16_LDPC_5_6:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_34
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_QAM64_LDPC_5_6:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_35
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;->SWM_OFDMA_FEC_CODE_QTY:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
    .end packed-switch
.end method

.method public static swmSsStateToFourGSupplicantState(Lcom/sqn/dcc/swmSsState;)Lcom/htc/net/FourG/FourGSupplicantState;
    .locals 1

    invoke-virtual {p0}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static wimaxStateMap(Lcom/sqn/dcc/swmSsState;)Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;
    .locals 1

    invoke-virtual {p0}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->DL_SYNCHRONIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->UL_ACQUISITION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->HANDOVER_RANGING:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->CAPABILITIES_NEGOTIATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->AUTHORIZATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->REGISTRATION:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->OPERATIONAL:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->IDLE:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->SLEEP:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->ABORT:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public addFrequency(III)Z
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChannelToScanner frequency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFrequency: cliCommand= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFrequency: cliCommand= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public changeToCorpNapid(I)Z
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-instance v2, Lcom/sqn/dcc/OutArray;

    invoke-direct {v2}, Lcom/sqn/dcc/OutArray;-><init>()V

    if-nez v2, :cond_0

    const-string v8, "Wimax4GSequansApi"

    const-string v10, "OutArray<ProvisionedBand> band == null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    :goto_0
    return v8

    :cond_0
    invoke-static {v2}, Lcom/sqn/dcc/Ndss;->GetBandList(Lcom/sqn/dcc/OutArray;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v8, "Wimax4GSequansApi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ndss.GetBandList(band) error status = 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v8, v2, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v8, [Lcom/sqn/dcc/ProvisionedBand;

    array-length v3, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v3, [J

    const-string v8, "Wimax4GSequansApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeToCorpNapid(int napid) bandNum="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    int-to-long v11, v5

    aput-wide v11, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "Wimax4GSequansApi"

    const-string v10, "[Exception]changeToCorpNapid(int napid) bandNum=band._array.length error\n"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto :goto_0

    :cond_2
    new-array v6, v10, [Lcom/sqn/dcc/ProvisionedNap;

    new-instance v8, Lcom/sqn/dcc/ProvisionedNap;

    invoke-direct {v8}, Lcom/sqn/dcc/ProvisionedNap;-><init>()V

    aput-object v8, v6, v9

    aget-object v8, v6, v9

    int-to-long v11, p1

    iput-wide v11, v8, Lcom/sqn/dcc/ProvisionedNap;->napId:J

    aget-object v8, v6, v9

    iput-short v10, v8, Lcom/sqn/dcc/ProvisionedNap;->priority:S

    aget-object v8, v6, v9

    iput-object v0, v8, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    const/4 v1, -0x1

    new-instance v7, Lcom/sqn/dcc/OutValue;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v7, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v7, :cond_3

    const-string v8, "Wimax4GSequansApi"

    const-string v10, "setNetworkConfiguration: status == null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto/16 :goto_0

    :cond_3
    invoke-static {v6, v7}, Lcom/sqn/dcc/Ndss;->SetProvisionedNaps([Lcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v8, "Wimax4GSequansApi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNetworkConfiguration: Ndss.SetProvisionedNaps error status = 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "Wimax4GSequansApi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNetworkConfiguration: Ndss.SetProvisionedNaps failed: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    goto/16 :goto_0

    :cond_5
    const-string v8, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeToCorpNapid to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " done."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    goto/16 :goto_0
.end method

.method public clearChannelList()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "clearChannelList: status==null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->ClearChannelList(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearChannelList: Ndss.ClearChannelList error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "Wimax4GSequansApi"

    const-string v3, "clearChannelList: Ndss.ClearChannelList(status)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public cli(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    const-string v4, "Wimax4GSequansApi"

    const-string v5, "cli: cliStatus == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_1

    const-string v4, "Wimax4GSequansApi"

    const-string v5, "cli: cliResult == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p1, v2, v1}, Lcom/sqn/dcc/Dbg;->Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cli: error status = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public connectNetwork(Lcom/htc/net/wimax/Wimax4GConfiguration;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public connectToBaseStation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v8, -0x1

    invoke-virtual {p1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getNspId()J

    move-result-wide v11

    long-to-int v0, v11

    invoke-virtual {p1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getBandId()I

    move-result v9

    int-to-long v1, v9

    invoke-virtual {p1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getFreqId()I

    move-result v9

    int-to-long v3, v9

    invoke-virtual {p1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getPreamble()J

    move-result-wide v11

    long-to-int v9, v11

    int-to-short v5, v9

    invoke-virtual {p1}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->getNapId()J

    move-result-wide v11

    long-to-int v6, v11

    new-instance v7, Lcom/sqn/dcc/OutValue;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v7, :cond_0

    const-string v9, "ndssConnectToNetworkExt: ndssStatus == null!!"

    invoke-static {v13, v9}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    move v9, v10

    :goto_0
    return v9

    :cond_0
    invoke-static/range {v0 .. v7}, Lcom/sqn/dcc/Ndss;->ConnectToNetworkExt(IJJSILcom/sqn/dcc/OutValue;)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ndssConnectToNetworkExt: api failed: error status = 0x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    move v9, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ndssConnectToNetworkExt: error status = 0x"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    move v9, v10

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public createQosServiceFlowControl()Lcom/htc/net/wimax/Wimax4GManager$WimaxQosServiceFlowControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public echoTest()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v2, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sqn/dcc/Dbg;->Echo(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable: Dbg.Echo api failed: error status = 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable: Dbg.Echo error status = 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public enableLogLevel(I)V
    .locals 0

    sput p1, Lcom/sqn/Wimax4GSequansApi;->logLevel:I

    return-void
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecoration(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDiuc()I
    .locals 10

    const/4 v7, -0x1

    const/4 v0, -0x1

    new-instance v3, Lcom/sqn/dcc/OutValue;

    new-instance v6, Lcom/sqn/dcc/DlBurstStats;

    invoke-direct {v6}, Lcom/sqn/dcc/DlBurstStats;-><init>()V

    invoke-direct {v3, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v3, :cond_0

    const-string v6, "Wimax4GSequansApi"

    const-string v8, " getDiuc: dlBurstStats == null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    :goto_0
    return v5

    :cond_0
    invoke-static {v3}, Lcom/sqn/dcc/MacSs;->GetDlBurstStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "Wimax4GSequansApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDiuc: MacSs.GetDlBurstStats(ulBurstStats) error status = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v6, Lcom/sqn/dcc/swmDcd;

    invoke-direct {v6}, Lcom/sqn/dcc/swmDcd;-><init>()V

    invoke-direct {v1, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const-string v6, "Wimax4GSequansApi"

    const-string v8, " getDiuc: dcd == null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->GetDcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v6, "Wimax4GSequansApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDiuc: MacSs.GetDcd(ucd) error status = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/swmDcd;

    iget-short v2, v6, Lcom/sqn/dcc/swmDcd;->bpQty:S

    invoke-virtual {v3}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/DlBurstStats;

    iget-object v4, v6, Lcom/sqn/dcc/DlBurstStats;->lastFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/swmDcd;

    iget-object v6, v6, Lcom/sqn/dcc/swmDcd;->bp:[Lcom/sqn/dcc/swmDlBp;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/sqn/dcc/swmDlBp;->phy:Lcom/sqn/dcc/swmDlBpPhy;

    iget-object v6, v6, Lcom/sqn/dcc/swmDlBpPhy;->v:Lcom/sqn/dcc/swmOfdmaDlBp;

    iget-object v6, v6, Lcom/sqn/dcc/swmOfdmaDlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    iget v6, v6, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    iget v8, v4, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    if-ne v6, v8, :cond_4

    const-string v7, "Wimax4GSequansApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDiuc: DIUC="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/swmDcd;

    iget-object v6, v6, Lcom/sqn/dcc/swmDcd;->bp:[Lcom/sqn/dcc/swmDlBp;

    aget-object v6, v6, v5

    iget-short v6, v6, Lcom/sqn/dcc/swmDlBp;->iuc:S

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "Wimax4GSequansApi"

    const-string v8, "getDiuc: no match fecode."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto/16 :goto_0
.end method

.method public getEntryCriteriaCinr()I
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {v3}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    invoke-direct {v0, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {v1}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getEntrtyCriteriCinr:  new ConnectionConfig fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v0}, Lcom/sqn/dcc/Ndss;->GetNdsConfig(Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getEntryCriteriaCinr:  Ndss.GetNdsConfig fails"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqn/dcc/ConnectionConfig;

    if-nez v1, :cond_2

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getEntryCriteriaCinr:  connectionCfg == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    iget v2, v2, Lcom/sqn/dcc/AutodetectEntryCriteria;->minCinr:I

    div-int/lit8 v2, v2, 0x64

    goto :goto_0
.end method

.method public getEntryCriteriaRssi()I
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {v3}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    invoke-direct {v0, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {v1}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getEntrtyCriteriRssi:  new ConnectionConfig fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v0}, Lcom/sqn/dcc/Ndss;->GetNdsConfig(Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getEntryCriteriaRssi:  Ndss.GetNdsConfig fails"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqn/dcc/ConnectionConfig;

    if-nez v1, :cond_2

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getEntryCriteriaRssi:  connectionCfg == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    iget v2, v2, Lcom/sqn/dcc/AutodetectEntryCriteria;->minRssi:I

    div-int/lit8 v2, v2, 0x64

    goto :goto_0
.end method

.method public getInnerIdentity(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.wimax."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".USER-IDENTITY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/USER-IDENTITY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getInnerIdentity: not support OMA DM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getInnerMethodType(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getMethodType(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.wimax."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".METHOD-TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/METHOD-TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/String;

    const-string v3, "23"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v3, "21"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Ljava/lang/String;

    const-string v3, "13"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNetworkConfiguration()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v2, -0x1

    new-instance v16, Lcom/sqn/dcc/OutArray;

    invoke-direct/range {v16 .. v16}, Lcom/sqn/dcc/OutArray;-><init>()V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/sqn/dcc/Ndss;->GetProvisionedNsps(Lcom/sqn/dcc/OutArray;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v17, "Wimax4GSequansApi"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getDefaultConfiguration: Ndss.GetProvisionedNsps error status = 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    const/4 v7, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/sqn/dcc/OutArray;->get()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sqn/dcc/ProvisionedNsp;

    array-length v10, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v12, v3, v9

    iget-object v4, v12, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    array-length v11, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_3

    aget-wide v14, v4, v8

    new-instance v5, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-direct {v5}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>()V

    add-int/lit8 v17, v7, 0x32

    move/from16 v0, v17

    iput v0, v5, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v5, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    iget-short v0, v12, Lcom/sqn/dcc/ProvisionedNsp;->priority:S

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/htc/net/FourG/FourGConfiguration;->priority:I

    invoke-virtual {v5, v14, v15}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setNspId(J)V

    iget-boolean v0, v12, Lcom/sqn/dcc/ProvisionedNsp;->nameIncluded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    new-instance v13, Ljava/lang/String;

    iget-object v0, v12, Lcom/sqn/dcc/ProvisionedNsp;->nspName:Lcom/sqn/dcc/StaticArray_char_128;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sqn/dcc/StaticArray_char_128;->data:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([C)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->setNspName(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0
.end method

.method public getOuterIdentity(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPassword(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.wimax."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".PASSWORD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/PASSWORD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getPassword: not support OMA DM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPer()F
    .locals 6

    const/high16 v2, -0x4080

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/TrafficRate;

    invoke-direct {v3}, Lcom/sqn/dcc/TrafficRate;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "resetPer: measure==null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->GetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPer: MacSs.ResetTrafficRateMeasures error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/TrafficRate;

    iget-wide v2, v2, Lcom/sqn/dcc/TrafficRate;->perPercent:J

    long-to-float v2, v2

    goto :goto_0
.end method

.method public getRealm(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.wimax."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".REALM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/REALM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/String;

    const-string v3, "kt.co.kr"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v3, "wimaxhybrid.kddi-au.ne.jp"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Ljava/lang/String;

    const-string v3, "sprintpcs.com"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getScanResults()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, -0x1

    new-instance v6, Lcom/sqn/dcc/OutArray;

    invoke-direct {v6}, Lcom/sqn/dcc/OutArray;-><init>()V

    if-nez v6, :cond_1

    const-string v8, "Wimax4GSequansApi"

    const-string v9, "getScanResults: scanResult == null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {v6}, Lcom/sqn/dcc/Ndss;->GetScanResultsExtBand(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v8, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ndssGetScanResultsExt: error status = 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    move-object v4, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sqn/dcc/OutArray;->get()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sqn/dcc/ScanResultExtBand;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    invoke-static {v5}, Lcom/sqn/Wimax4GSequansApi;->createBaseStationInfo(Lcom/sqn/dcc/ScanResultExtBand;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSettingAuthMode()I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/swmSsBasicCapabilities;

    invoke-direct {v3}, Lcom/sqn/dcc/swmSsBasicCapabilities;-><init>()V

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "getSettingAuthMode: basicCaps==null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-static {v2}, Lcom/sqn/dcc/Mgt;->GetConfBasicCaps(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingAuthMode: Mgt.GetConfBasicCaps error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sqn/dcc/swmSsBasicCapabilities;

    iget-object v3, v3, Lcom/sqn/dcc/swmSsBasicCapabilities;->securityParams:Lcom/sqn/dcc/swmSecurityNegociationParameters;

    iget-short v1, v3, Lcom/sqn/dcc/swmSecurityNegociationParameters;->version:S

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingAuthMode: authMode= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingChannelList()[I
    .locals 15

    const/4 v5, 0x0

    new-instance v1, Lcom/sqn/dcc/OutArray;

    invoke-direct {v1}, Lcom/sqn/dcc/OutArray;-><init>()V

    if-nez v1, :cond_0

    const-string v10, "Wimax4GSequansApi"

    const-string v11, "getSettingChannelList: channel == null!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->GetBandList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v10, "Wimax4GSequansApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSettingChannelList: Ndss.GetChannelList error status = 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v10, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v10, [Lcom/sqn/dcc/ProvisionedBand;

    array-length v2, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_2

    iget-object v10, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v10, [Lcom/sqn/dcc/ProvisionedBand;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/sqn/dcc/ProvisionedBand;->freqQty:I

    add-int/2addr v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v10, "Wimax4GSequansApi"

    const-string v11, "[Exception]getSettingChannelList: band._array.length\n"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-array v5, v4, [I

    const-string v3, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v2, :cond_4

    const/4 v9, 0x0

    :goto_4
    iget-object v10, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v10, [Lcom/sqn/dcc/ProvisionedBand;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/sqn/dcc/ProvisionedBand;->freqQty:I

    if-ge v9, v10, :cond_3

    add-int v11, v8, v9

    iget-object v10, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v10, [Lcom/sqn/dcc/ProvisionedBand;

    aget-object v10, v10, v7

    iget-wide v12, v10, Lcom/sqn/dcc/ProvisionedBand;->freqStart:J

    long-to-int v12, v12

    iget-object v10, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v10, [Lcom/sqn/dcc/ProvisionedBand;

    aget-object v10, v10, v7

    iget-wide v13, v10, Lcom/sqn/dcc/ProvisionedBand;->freqStep:J

    long-to-int v10, v13

    mul-int/2addr v10, v9

    add-int/2addr v10, v12

    aput v10, v5, v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v8, v9

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    iget-object v10, v1, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v10, [Lcom/sqn/dcc/ProvisionedBand;

    aget-object v10, v10, v7

    iget v10, v10, Lcom/sqn/dcc/ProvisionedBand;->freqQty:I

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const-string v10, "Wimax4GSequansApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSettingChannelList: bandNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "channelNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " channelListString = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getSettingIdleModeTimer()I
    .locals 7

    const/4 v3, -0x1

    const-string v4, "PSMS::showConfig"

    invoke-virtual {p0, v4}, Lcom/sqn/Wimax4GSequansApi;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "Wimax4GSequansApi"

    const-string v5, "getSettingIdleTimer: cliResult==null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const-string v4, "Idle auto switch Period (ms)"

    invoke-direct {p0, v1, v4}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSettingIdleModeTimer: SettingIdleModeTimer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSettingIdleModeTimer: parseInt parsing error, ParseString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingTxPower()F
    .locals 6

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/PowerControlInfo;

    invoke-direct {v3}, Lcom/sqn/dcc/PowerControlInfo;-><init>()V

    invoke-direct {v2, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-static {v2}, Lcom/sqn/dcc/MacSs;->GetPowerControlInfo(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTxPower: MacSs.GetPowerControl error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x4080

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sqn/dcc/PowerControlInfo;

    iget v3, v3, Lcom/sqn/dcc/PowerControlInfo;->maxTxPower:I

    div-int/lit8 v3, v3, 0x64

    int-to-float v1, v3

    goto :goto_0
.end method

.method public getUiuc()I
    .locals 10

    const/4 v7, -0x1

    const/4 v0, -0x1

    new-instance v4, Lcom/sqn/dcc/OutValue;

    new-instance v6, Lcom/sqn/dcc/UlBurstStats;

    invoke-direct {v6}, Lcom/sqn/dcc/UlBurstStats;-><init>()V

    invoke-direct {v4, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v4, :cond_0

    const-string v6, "Wimax4GSequansApi"

    const-string v8, " getUiuc: ulBurstStats == null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    :goto_0
    return v1

    :cond_0
    invoke-static {v4}, Lcom/sqn/dcc/MacSs;->GetUlBurstStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "Wimax4GSequansApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUiuc: MacSs.GetUlBurstStats(ulBurstStats) error status = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v6, Lcom/sqn/dcc/swmUcd;

    invoke-direct {v6}, Lcom/sqn/dcc/swmUcd;-><init>()V

    invoke-direct {v2, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_2

    const-string v6, "Wimax4GSequansApi"

    const-string v8, " getUiuc: ucd == null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/sqn/dcc/MacSs;->GetUcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v6, "Wimax4GSequansApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUiuc: MacSs.GetUcd(ucd) error status = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/swmUcd;

    iget-short v3, v6, Lcom/sqn/dcc/swmUcd;->bpQty:S

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/UlBurstStats;

    iget-object v5, v6, Lcom/sqn/dcc/UlBurstStats;->lastGrantHarqFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/swmUcd;

    iget-object v6, v6, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/sqn/dcc/swmUlBp;->phy:Lcom/sqn/dcc/swmUlBpPhy;

    iget-object v6, v6, Lcom/sqn/dcc/swmUlBpPhy;->v:Lcom/sqn/dcc/swmOfdmaUlBp;

    iget-object v6, v6, Lcom/sqn/dcc/swmOfdmaUlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    iget v6, v6, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    iget v8, v5, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    if-ne v6, v8, :cond_4

    const-string v7, "Wimax4GSequansApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUiuc: UIUC="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/swmUcd;

    iget-object v6, v6, Lcom/sqn/dcc/swmUcd;->bp:[Lcom/sqn/dcc/swmUlBp;

    aget-object v6, v6, v1

    iget-short v6, v6, Lcom/sqn/dcc/swmUlBp;->iuc:S

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "Wimax4GSequansApi"

    const-string v8, "getUiuc: no match fecode."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto/16 :goto_0
.end method

.method public isAvailable()Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutArray;

    invoke-direct {v1}, Lcom/sqn/dcc/OutArray;-><init>()V

    invoke-static {v1}, Lcom/sqn/dcc/Internal;->GetAvailableMs(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: Internal.GetAvailableMs api failed: error status = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable: Internal.GetAvailableMs api failed: error status = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sqn/Wimax4GSequansApi;->LOG(ILjava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reassociate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetAuthConfig()V
    .locals 0

    return-void
.end method

.method public resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v2, "Wimax4GSequansApi"

    const-string v4, "resetConnectionStatistics: status == null!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-static {v4, v5}, Lcom/sqn/dcc/DeviceInfo;->ResetAdapterStats(J)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetConnectionStatistics: DeviceInfo.ResetAdapterStats error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4, v5}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setTotalRxBytes(J)V

    invoke-virtual {p1, v4, v5}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setTotalRxPackets(J)V

    invoke-virtual {p1, v4, v5}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setTotalTxBytes(J)V

    invoke-virtual {p1, v4, v5}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setTotalTxPackets(J)V

    invoke-virtual {p1, v4, v5}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setTotalTxPacketRetransmissions(J)V

    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->ResetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetConnectionStatistics: MacSs.ResetTrafficMeasures api error = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetConnectionStatistics: MacSs.ResetTrafficMeasures error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setDownlinkThroughtput(I)V

    invoke-virtual {p1, v3}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setUplinkThroughtput(I)V

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public resetPacketErrorRate()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "resetPer: status==null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->ResetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPer: MacSs.ResetTrafficRateMeasures error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public revertToSprintNapid()Z
    .locals 25

    sget-object v21, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    if-nez v21, :cond_0

    const-string v21, "persist.wimax.0.MAC"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v21, ":"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mac="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v21, Lcom/sqn/omadm/DmTree;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/sqn/omadm/DmTree;-><init>(Ljava/lang/String;)V

    sput-object v21, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v10, 0x0

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_2

    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "./WiMAXSupp/Operator/sprint/NetworkParameters/CAPL/Entries/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/NAP-ID"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v21, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sqn/omadm/DmTree;->getWimaxNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    add-int/lit8 v10, v10, 0x1

    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getCaplEntriesNumber(): node_value="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v21, "Wimax4GSequansApi"

    const-string v22, "DmTree process failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    :goto_1
    return v21

    :catch_1
    move-exception v8

    const-string v21, "Wimax4GSequansApi"

    const-string v22, "Can not create DmTree."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v21, "Wimax4GSequansApi"

    const-string v22, "No value exist."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getCaplEntriesNumber(): total num="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v10

    move/from16 v0, v16

    new-array v14, v0, [Lcom/sqn/dcc/ProvisionedNap;

    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    const-string v19, ""

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "./WiMAXSupp/Operator/sprint/NetworkParameters/CAPL/Entries/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/NAP-ID"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v21, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sqn/omadm/DmTree;->getWimaxNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "./WiMAXSupp/Operator/sprint/NetworkParameters/CAPL/Entries/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Priority"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v21, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sqn/omadm/DmTree;->getWimaxNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    :goto_3
    if-eqz v5, :cond_4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "./WiMAXSupp/Operator/sprint/NetworkParameters/CAPL/Entries/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/ChPlanRefIds/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/RefId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v21, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sqn/omadm/DmTree;->getWimaxNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "revertToSprintNapid(): sUrl:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " value not exist."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const-string v21, "Wimax4GSequansApi"

    const-string v22, "revertToSprintNapid: Filled nap"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Lcom/sqn/dcc/ProvisionedNap;

    invoke-direct/range {v21 .. v21}, Lcom/sqn/dcc/ProvisionedNap;-><init>()V

    aput-object v21, v14, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    aget-object v21, v14, v9

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sqn/dcc/ProvisionedNap;->napId:J

    aget-object v21, v14, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-short v0, v1, Lcom/sqn/dcc/ProvisionedNap;->priority:S

    aget-object v21, v14, v9

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    aget-object v21, v14, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sqn/dcc/ProvisionedNap;->channelId:[J

    move-object/from16 v22, v0

    invoke-virtual {v7, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    aput-wide v23, v22, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_2
    move-exception v8

    :try_start_4
    const-string v21, "Wimax4GSequansApi"

    const-string v22, "[Exception] parse string to int/long error."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "napId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "].napId= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v14, v9

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sqn/dcc/ProvisionedNap;->napId:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " napId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "].priority= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v14, v9

    move-object/from16 v0, v23

    iget-short v0, v0, Lcom/sqn/dcc/ProvisionedNap;->priority:S

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " napId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] #ch= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v3, -0x1

    new-instance v20, Lcom/sqn/dcc/OutValue;

    new-instance v21, Ljava/lang/Integer;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct/range {v20 .. v21}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v20, :cond_7

    const-string v21, "Wimax4GSequansApi"

    const-string v22, "setNetworkConfiguration: status == null!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lcom/sqn/dcc/Ndss;->SetProvisionedNaps([Lcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_8

    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setNetworkConfiguration: Ndss.SetProvisionedNaps error status = 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "Wimax4GSequansApi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setNetworkConfiguration: Ndss.SetProvisionedNaps failed: 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_9
    const-string v21, "Wimax4GSequansApi"

    const-string v22, "Finished"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v21, 0x1

    goto/16 :goto_1
.end method

.method public sendCommand(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/sqn/Wimax4GSequansApi;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setAuthMode(I)Z
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    const-string v0, "cbe::setcaps pkm-version=none"

    :goto_0
    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAuthMode: cliCommand= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const-string v0, "cbe::setcaps pkm-version=pkm-v1"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    const-string v0, "cbe::setcaps pkm-version=pkm-v2"

    goto :goto_0

    :cond_2
    const-string v1, "Wimax4GSequansApi"

    const-string v2, "setAuthMode: Auth Mode is undefined(not pkm-none or pkm-v2)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDecoration(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIdleModeTimer(I)Z
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psms:changeidleautodelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIdleModeTimer: cliCommand= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setInnerIdentity(ILjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.wimax."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".USER-IDENTITY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/USER-IDENTITY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v0, p2}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "Wimax4GSequansApi"

    const-string v5, "setInnerIdentity: not support OMA DM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInnerMethodType(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIpRetentionEnabled(Z)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIpRetentionEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v1, "SMS::setRetentionConfig enable=1"

    invoke-virtual {p0, v1}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "SMS::setRetentionConfig enable=0"

    invoke-virtual {p0, v1}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIpRetentionTimer(I)Z
    .locals 5

    const/4 v4, 0x0

    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIpRetentionTimer= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS::setRetentionConfig timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    return v4
.end method

.method public setMethodType(ILjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.wimax."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".METHOD-TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/METHOD-TYPE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v0, p2}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "Wimax4GSequansApi"

    const-string v5, "setMethodType: not support OMA DM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setNetworkConfiguration(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string v7, "Wimax4GSequansApi"

    const-string v9, "setNetworkConfiguration: config is null"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    :goto_0
    return v7

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    const-string v7, "Wimax4GSequansApi"

    const-string v9, "setNetworkConfiguration: config is empty"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto :goto_0

    :cond_1
    new-array v4, v5, [Lcom/sqn/dcc/ProvisionedNsp;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-virtual {v1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getNspName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/sqn/dcc/ProvisionedNsp;

    invoke-direct {v7}, Lcom/sqn/dcc/ProvisionedNsp;-><init>()V

    aput-object v7, v4, v2

    aget-object v7, v4, v2

    new-array v10, v9, [J

    iput-object v10, v7, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    aget-object v7, v4, v2

    iget-object v7, v7, Lcom/sqn/dcc/ProvisionedNsp;->nspId:[J

    invoke-virtual {v1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getNspId()J

    move-result-wide v10

    aput-wide v10, v7, v8

    aget-object v7, v4, v2

    iget v10, v1, Lcom/htc/net/FourG/FourGConfiguration;->priority:I

    int-to-short v10, v10

    iput-short v10, v7, Lcom/sqn/dcc/ProvisionedNsp;->priority:S

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    aget-object v7, v4, v2

    iput-boolean v9, v7, Lcom/sqn/dcc/ProvisionedNsp;->nameIncluded:Z

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    aget-object v10, v4, v2

    iget-object v10, v10, Lcom/sqn/dcc/ProvisionedNsp;->nspName:Lcom/sqn/dcc/StaticArray_char_128;

    iget-object v10, v10, Lcom/sqn/dcc/StaticArray_char_128;->data:[C

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v7, v8, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v7, v4, v2

    iput-boolean v8, v7, Lcom/sqn/dcc/ProvisionedNsp;->nameIncluded:Z

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    new-instance v6, Lcom/sqn/dcc/OutValue;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v6, v7}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v6, :cond_4

    const-string v7, "Wimax4GSequansApi"

    const-string v9, "setNetworkConfiguration: status == null!!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto :goto_0

    :cond_4
    invoke-static {v4, v6}, Lcom/sqn/dcc/Ndss;->SetProvisionedNsps([Lcom/sqn/dcc/ProvisionedNsp;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v7, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNetworkConfiguration: Ndss.SetProvisionedNsps error status = 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNetworkConfiguration: Ndss.SetProvisionedNsps failed: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto/16 :goto_0
.end method

.method public setOuterIdentity(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPassword(ILjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.wimax."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v0, p2}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "Wimax4GSequansApi"

    const-string v5, "setPassword: not support OMA DM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setRealm(ILjava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.wimax."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".REALM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "./WiMAXSupp/Operator/sprint/SubscriptionParameters/PrimarySubcription/EAP/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/REALM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v0, p2}, Lcom/sqn/Wimax4GSequansApi;->generalGetSetOmadm(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "Wimax4GSequansApi"

    const-string v5, "setRealm: not support OMA DM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTxPower(F)Z
    .locals 5

    const/high16 v2, 0x42c8

    mul-float v1, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTxPower "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Wimax4GSequansApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTxPower: cliCommand= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sqn/Wimax4GSequansApi;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public startAccessOmaDmConfig()V
    .locals 6

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->UseOmaDmDataInFlash()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    sput-object v3, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    const-string v3, "persist.wimax.0.MAC"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Lcom/sqn/omadm/DmTree;

    invoke-direct {v3, v2}, Lcom/sqn/omadm/DmTree;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "Can not create DmTree."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startService()Z
    .locals 2

    iget-object v0, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController;->startDcConnect()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "Wimax4GSequansApi"

    const-string v1, "Can\'t Start DC Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startWimax()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-static {v1}, Lcom/sqn/dcc/MgtSs;->SetSsStarted(Z)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWimax: error status = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public stopAccessOmaDmConfig()V
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->SupportOmadm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->UseOmaDmDataInFlash()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sqn/Wimax4GSequansApi;->dmTreeModified:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sqn/Wimax4GSequansApi;->dmTreeModified:Z

    sget-object v0, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    invoke-virtual {v0}, Lcom/sqn/omadm/DmTree;->Save()Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sqn/Wimax4GSequansApi;->dmTree:Lcom/sqn/omadm/DmTree;

    :cond_1
    return-void
.end method

.method public stopService()Z
    .locals 1

    iget-object v0, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/Wimax4GSequansApi;->dcInstance:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController;->stopDcConnect()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopWimax()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v1}, Lcom/sqn/dcc/MgtSs;->SetSsStarted(Z)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "Wimax4GSequansApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWimax: error status = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateAsnGatewayId(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "updateAsnGatewayId: gatewayId == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/DeviceInfo;->GetAsnGatewayId(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAsnGatewayId: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAsnGatewayId: asn gateway id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setASNGatewayId(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, -0x1

    new-instance v0, Lcom/sqn/dcc/OutValue;

    new-instance v5, Lcom/sqn/dcc/AdapterStatistics;

    invoke-direct {v5}, Lcom/sqn/dcc/AdapterStatistics;-><init>()V

    invoke-direct {v0, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sqn/dcc/OutValue;

    new-instance v5, Lcom/sqn/dcc/TrafficRate;

    invoke-direct {v5}, Lcom/sqn/dcc/TrafficRate;-><init>()V

    invoke-direct {v3, v5}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v3, :cond_0

    const-string v5, "Wimax4GSequansApi"

    const-string v6, "updateConnectionStatistics: trafficRate == null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    invoke-static {v3}, Lcom/sqn/dcc/MacSs;->GetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v5, "Wimax4GSequansApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectionStatistics: MacSs.GetTrafficRateMeasure error status = 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/TrafficRate;

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectionStatistics: packetErrorRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/sqn/dcc/TrafficRate;->perPercent:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectionStatistics: downlinkThroughtput="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/sqn/dcc/TrafficRate;->dlRateKbps100th:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectionStatistics: uplinkThroughtput="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/sqn/dcc/TrafficRate;->ulRateKbps100th:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, v2, Lcom/sqn/dcc/TrafficRate;->perPercent:J

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setPacketErrorRate(I)V

    iget-wide v4, v2, Lcom/sqn/dcc/TrafficRate;->dlRateKbps100th:J

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setDownlinkThroughtput(I)V

    iget-wide v4, v2, Lcom/sqn/dcc/TrafficRate;->ulRateKbps100th:J

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setUplinkThroughtput(I)V

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public updateDeviceInfo(Lcom/htc/net/FourG/DeviceInfo;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    invoke-direct {v1, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v8, "Wimax4GSequansApi"

    const-string v9, "updateDeviceInfo: boardName == null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/htc/net/FourG/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/DeviceInfo;->GetBoardName(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v8, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDeviceInfo: error status = 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/htc/net/FourG/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDeviceInfo: deviceName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Lcom/htc/net/FourG/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    new-instance v3, Lcom/sqn/dcc/OutValue;

    new-instance v8, Lcom/sqn/dcc/DeviceVersion;

    invoke-direct {v8}, Lcom/sqn/dcc/DeviceVersion;-><init>()V

    invoke-direct {v3, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/sqn/dcc/OutValue;

    new-instance v8, Lcom/sqn/dcc/DeviceVersion;

    invoke-direct {v8}, Lcom/sqn/dcc/DeviceVersion;-><init>()V

    invoke-direct {v5, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/sqn/dcc/OutValue;

    new-instance v8, Lcom/sqn/dcc/DeviceVersion;

    invoke-direct {v8}, Lcom/sqn/dcc/DeviceVersion;-><init>()V

    invoke-direct {v4, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    const-string v8, "Wimax4GSequansApi"

    const-string v9, "updateDeviceInfo: DeviceVersion == null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/htc/net/FourG/DeviceInfo;->setHwVersion(Ljava/lang/String;)V

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/htc/net/FourG/DeviceInfo;->setSwVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-static {v3, v5, v4}, Lcom/sqn/dcc/DeviceInfo;->GetMsVersion(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v8, "Wimax4GSequansApi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDeviceInfo: error status = 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/htc/net/FourG/DeviceInfo;->setHwVersion(Ljava/lang/String;)V

    const-string v8, ""

    invoke-virtual {p1, v8}, Lcom/htc/net/FourG/DeviceInfo;->setSwVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DeviceVersion;

    iget-short v7, v7, Lcom/sqn/dcc/DeviceVersion;->major:S

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DeviceVersion;

    iget-short v7, v7, Lcom/sqn/dcc/DeviceVersion;->minor:S

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DeviceVersion;

    iget-short v7, v7, Lcom/sqn/dcc/DeviceVersion;->patch:S

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DeviceVersion;

    iget-short v7, v7, Lcom/sqn/dcc/DeviceVersion;->flags:S

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DeviceVersion;

    iget-wide v9, v7, Lcom/sqn/dcc/DeviceVersion;->revision:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/htc/net/FourG/DeviceInfo;->setHwVersion(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DeviceVersion;

    iget-wide v9, v7, Lcom/sqn/dcc/DeviceVersion;->revision:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/htc/net/FourG/DeviceInfo;->setSwVersion(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public updateHandoverInfo(Lcom/htc/net/wimax/Wimax4GInfo;)Z
    .locals 14

    const/4 v11, 0x0

    const-string v10, "MOBS::Manager"

    invoke-virtual {p0, v10}, Lcom/sqn/Wimax4GSequansApi;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move v10, v11

    :goto_0
    return v10

    :cond_0
    const-string v10, "Handover attempt"

    invoke-direct {p0, v5, v10}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "Handover canceled"

    invoke-direct {p0, v5, v10}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v10, "Last (ms)"

    invoke-direct {p0, v5, v10}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "Wimax4GSequansApi"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateHandoverInfo: HoCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HoFailCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HoResyncCountString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HoSignalLatencyString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-object v10, v0

    invoke-virtual {v10, v7}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setHoCount(I)V

    move-object v0, p1

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-object v10, v0

    invoke-virtual {v10, v8}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setHoFailCount(I)V

    check-cast p1, Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {p1, v9}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setHoLatency(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v10, "Wimax4GSequansApi"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateHandoverInfo: parseInt parsing error, ParseString= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    goto/16 :goto_0
.end method

.method public updateLinkSpeed(Lcom/htc/net/wimax/Wimax4GInfo;)Z
    .locals 7

    const v5, 0xf4240

    const/4 v3, 0x0

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v4, "Wimax4GSequansApi"

    const-string v5, "updateLinkSpeed: dl == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    if-nez v2, :cond_1

    const-string v4, "Wimax4GSequansApi"

    const-string v5, "updateLinkSpeed: ul == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Lcom/sqn/dcc/MacSs;->GetLinkSpeed(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "Wimax4GSequansApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLinkSpeed: MacSs.GetLinkSpeed error status = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v5

    invoke-virtual {p1, v3}, Lcom/htc/net/wimax/Wimax4GInfo;->setDlLinkSpeed(I)V

    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v5

    invoke-virtual {p1, v3}, Lcom/htc/net/wimax/Wimax4GInfo;->setUlLinkSpeed(I)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public updateModulation(Lcom/htc/net/wimax/Wimax4GInfo;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v7, Lcom/sqn/dcc/DlBurstStats;

    invoke-direct {v7}, Lcom/sqn/dcc/DlBurstStats;-><init>()V

    invoke-direct {v2, v7}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/sqn/dcc/OutValue;

    new-instance v7, Lcom/sqn/dcc/UlBurstStats;

    invoke-direct {v7}, Lcom/sqn/dcc/UlBurstStats;-><init>()V

    invoke-direct {v4, v7}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    const-string v7, "Wimax4GSequansApi"

    const-string v8, "updateModulation: dlBurst == null!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    if-nez v4, :cond_1

    const-string v7, "Wimax4GSequansApi"

    const-string v8, "updateModulation: ulBurst == null!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/sqn/dcc/MacSs;->GetDlBurstStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v7, "Wimax4GSequansApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateModulation: MacSs.GetDlBurstStats error status = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/sqn/dcc/MacSs;->GetUlBurstStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v7, "Wimax4GSequansApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateModulation: MacSs.GetUlBurstStats error status = 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/DlBurstStats;

    iget-object v3, v6, Lcom/sqn/dcc/DlBurstStats;->lastFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sqn/dcc/UlBurstStats;

    iget-object v5, v6, Lcom/sqn/dcc/UlBurstStats;->lastGrantHarqFecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    const-string v6, "Wimax4GSequansApi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateModulation: DlFecCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Wimax4GSequansApi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateModulation: UlFecCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    invoke-static {v3}, Lcom/sqn/Wimax4GSequansApi;->fecCodeToModulation(Lcom/sqn/dcc/swmOfdmaFecCode;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V

    invoke-static {v5}, Lcom/sqn/Wimax4GSequansApi;->fecCodeToModulation(Lcom/sqn/dcc/swmOfdmaFecCode;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V

    move-object v6, v1

    check-cast v6, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iget v7, v5, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    invoke-static {v7}, Lcom/sqn/Wimax4GSequansApi;->shortToFecCode(S)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setFecDlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V

    move-object v6, v1

    check-cast v6, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iget v7, v3, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    invoke-static {v7}, Lcom/sqn/Wimax4GSequansApi;->shortToFecCode(S)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setFecUlModulation(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V

    move-object v6, v1

    check-cast v6, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {p0}, Lcom/sqn/Wimax4GSequansApi;->getUiuc()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    invoke-static {v7}, Lcom/sqn/Wimax4GSequansApi;->shortToFecCode(S)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setUiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V

    check-cast v1, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {p0}, Lcom/sqn/Wimax4GSequansApi;->getDiuc()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    invoke-static {v6}, Lcom/sqn/Wimax4GSequansApi;->shortToFecCode(S)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setDiuc(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo$eFOURG_FECCODE;)V

    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public updateRealm(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "Wimax4GSequansApi"

    const-string v4, "updateRealm: authRealm == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/sqn/dcc/DeviceInfo;->GetAuthenticationRealm(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Wimax4GSequansApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRealm: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "Wimax4GSequansApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRealm: realm="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setRealm(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateServingBsInfo(Lcom/htc/net/wimax/Wimax4GInfo;)Z
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v2

    check-cast v2, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

    const/4 v1, -0x1

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setConnected(Z)V

    new-instance v6, Lcom/sqn/dcc/OutValue;

    new-instance v15, Lcom/sqn/dcc/swmDcd;

    invoke-direct {v15}, Lcom/sqn/dcc/swmDcd;-><init>()V

    invoke-direct {v6, v15}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lcom/sqn/dcc/OutValue;

    new-instance v15, Lcom/sqn/dcc/swmUcd;

    invoke-direct {v15}, Lcom/sqn/dcc/swmUcd;-><init>()V

    invoke-direct {v12, v15}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lcom/sqn/dcc/OutValue;

    new-instance v15, Lcom/sqn/dcc/swmFcd;

    invoke-direct {v15}, Lcom/sqn/dcc/swmFcd;-><init>()V

    invoke-direct {v9, v15}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v6, :cond_0

    const-string v15, "Wimax4GSequansApi"

    const-string v16, "updateServingBsInfo: dcd == null!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    if-nez v12, :cond_1

    const-string v15, "Wimax4GSequansApi"

    const-string v16, "updateServingBsInfo: ucd == null!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    if-nez v9, :cond_2

    const-string v15, "Wimax4GSequansApi"

    const-string v16, "updateServingBsInfo: fcd == null!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/sqn/dcc/MacSs;->GetDcd(Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateServingBsInfo: MacSs.GetDcd error status = 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v12}, Lcom/sqn/dcc/MacSs;->GetUcd(Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateServingBsInfo: MacSs.GetUcd error status = 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v9}, Lcom/sqn/dcc/MacSs;->GetFcd(Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateServingBsInfo: MacSs.GetFcd error status = 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sqn/dcc/swmDcd;

    iget-wide v7, v15, Lcom/sqn/dcc/swmDcd;->frequency:J

    invoke-virtual {v12}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sqn/dcc/swmUcd;

    iget-wide v13, v15, Lcom/sqn/dcc/swmUcd;->frequency:J

    invoke-virtual {v6}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sqn/dcc/swmDcd;

    iget-object v15, v15, Lcom/sqn/dcc/swmDcd;->phy:Lcom/sqn/dcc/swmDcdPhy;

    iget-object v15, v15, Lcom/sqn/dcc/swmDcdPhy;->v:Lcom/sqn/dcc/swmOfdmaDcd;

    iget-wide v3, v15, Lcom/sqn/dcc/swmOfdmaDcd;->bsId:J

    invoke-virtual {v9}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sqn/dcc/swmFcd;

    iget-object v15, v15, Lcom/sqn/dcc/swmFcd;->phy:Lcom/sqn/dcc/swmFcdPhy;

    iget-object v15, v15, Lcom/sqn/dcc/swmFcdPhy;->v:Lcom/sqn/dcc/swmOfdmaFcd;

    iget-short v15, v15, Lcom/sqn/dcc/swmOfdmaFcd;->preambleIdx:S

    int-to-long v10, v15

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0xc

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v5}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setBSID(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setFrequencyDownlink(J)V

    invoke-virtual {v2, v13, v14}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setFrequencyUplink(J)V

    invoke-virtual {v2, v10, v11}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->setPreamble(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sqn/Wimax4GSequansApi;->updateAsnGatewayId(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)Z

    move-object v15, v2

    check-cast v15, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct/range {p0 .. p0}, Lcom/sqn/Wimax4GSequansApi;->getUlPermBase()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setUlPermBase(I)V

    check-cast v2, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct/range {p0 .. p0}, Lcom/sqn/Wimax4GSequansApi;->getDlPermBase()I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setDlPermBase(I)V

    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public updateSignal(Lcom/htc/net/wimax/Wimax4GInfo;)Z
    .locals 18

    const/4 v5, -0x1

    new-instance v11, Lcom/sqn/dcc/OutValue;

    new-instance v15, Lcom/sqn/dcc/PhyStatsDl;

    invoke-direct {v15}, Lcom/sqn/dcc/PhyStatsDl;-><init>()V

    invoke-direct {v11, v15}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v11, :cond_0

    const-string v15, "Wimax4GSequansApi"

    const-string v16, "updateSignal: phyStatDl == null!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    invoke-static {v11}, Lcom/sqn/dcc/MgtSs;->GetPhyStatsDl(Lcom/sqn/dcc/OutValue;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateSignal: error status = 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sqn/dcc/PhyStatsDl;

    iget v15, v15, Lcom/sqn/dcc/PhyStatsDl;->meanRssi:I

    div-int/lit8 v12, v15, 0x64

    invoke-virtual {v11}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sqn/dcc/PhyStatsDl;

    iget v15, v15, Lcom/sqn/dcc/PhyStatsDl;->meanCinr:I

    div-int/lit8 v6, v15, 0x64

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateSignal: rssi = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateSignal: cinr = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, -0x7b

    if-le v15, v12, :cond_2

    if-lez v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    const/high16 v16, -0x8000

    invoke-virtual/range {v15 .. v16}, Lcom/htc/net/FourG/FourGBaseStationInfo;->setRSSI(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    const/high16 v16, -0x8000

    invoke-virtual/range {v15 .. v16}, Lcom/htc/net/FourG/FourGBaseStationInfo;->setCINR(I)V

    :goto_1
    const-string v15, "showphysig"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sqn/Wimax4GSequansApi;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v15, "Wimax4GSequansApi"

    const-string v16, "cli Command error: showphysig"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/htc/net/FourG/FourGBaseStationInfo;->setRSSI(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/htc/net/FourG/FourGBaseStationInfo;->setCINR(I)V

    goto :goto_1

    :cond_3
    const-string v15, "Cinr    R1 Ch0 (dB)"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "Cinr    R1 Ch1 (dB)"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "Rssi       Ch0 (dBm)"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v15, "Rssi       Ch1 (dBm)"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/sqn/Wimax4GSequansApi;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    check-cast v15, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v15, v7}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setCinrCh0(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    check-cast v15, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v15, v8}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setCinrCh1(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    check-cast v15, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v15, v13}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setRssiCh0(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/net/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v15

    check-cast v15, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v15, v14}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;->setRssiCh1(F)V

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ch0 & ch1: cinr/rssi = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v15, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateSignal: parseFlaot error, Ch0(C/R)= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Ch1(C/R)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const-string v15, "Wimax4GSequansApi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateSignal Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public updateTxPower(Lcom/htc/net/wimax/Wimax4GInfo;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v0, -0x1

    new-instance v4, Lcom/sqn/dcc/OutValue;

    new-instance v6, Lcom/sqn/dcc/PowerControlInfo;

    invoke-direct {v6}, Lcom/sqn/dcc/PowerControlInfo;-><init>()V

    invoke-direct {v4, v6}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string v6, "Wimax4GSequansApi"

    const-string v7, "updateTxPower: info == null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    invoke-static {v4}, Lcom/sqn/dcc/MacSs;->GetPowerControlInfo(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "Wimax4GSequansApi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTxPower: MacSs.GetPowerControl error status = 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sqn/dcc/PowerControlInfo;

    iget-boolean v5, v5, Lcom/sqn/dcc/PowerControlInfo;->isOpenLoopEnabled:Z

    if-eqz v5, :cond_2

    sget-object v3, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->OPEN_LOOP_POWER_CONTROL_PASSIVE_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    :goto_1
    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sqn/dcc/PowerControlInfo;

    iget v5, v5, Lcom/sqn/dcc/PowerControlInfo;->currentTxPower:I

    div-int/lit8 v5, v5, 0x64

    int-to-float v1, v5

    invoke-virtual {v4}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sqn/dcc/PowerControlInfo;

    iget v5, v5, Lcom/sqn/dcc/PowerControlInfo;->maxTxPower:I

    div-int/lit8 v5, v5, 0x64

    int-to-float v2, v5

    const-string v5, "Wimax4GSequansApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTxPower: powerControlMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentTxPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxTxPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    check-cast v5, Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v5, v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setPowerControlMode(Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;)V

    move-object v5, p1

    check-cast v5, Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v5, v1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setTxPower(F)V

    check-cast p1, Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {p1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setTxPowerMaximum(F)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    sget-object v3, Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;->CLOSED_LOOP_POWER_CONTROL_MDOE:Lcom/htc/net/wimax/HTCWimax4GInfo$PowerControlMode;

    goto :goto_1
.end method
