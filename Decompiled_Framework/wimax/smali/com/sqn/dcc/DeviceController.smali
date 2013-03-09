.class public Lcom/sqn/dcc/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sqn/dcc/DeviceController$1;,
        Lcom/sqn/dcc/DeviceController$dcNtfProcessor;,
        Lcom/sqn/dcc/DeviceController$dcSocketReader;,
        Lcom/sqn/dcc/DeviceController$dcSocketConnect;,
        Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;,
        Lcom/sqn/dcc/DeviceController$dcSocketReconnect;,
        Lcom/sqn/dcc/DeviceController$dcThread;,
        Lcom/sqn/dcc/DeviceController$dcpHeader;,
        Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;,
        Lcom/sqn/dcc/DeviceController$InternalNtf;
    }
.end annotation


# static fields
.field private static _singleton:Lcom/sqn/dcc/DeviceController;


# instance fields
.field _cfg:Lcom/sqn/dcc/DccInitConfig;

.field _clientHandle:I

.field _clients:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sqn/dcc/DccClient;",
            ">;"
        }
    .end annotation
.end field

.field private _connect:Z

.field volatile _dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

.field volatile _dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

.field volatile _dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

.field private _dcStopped:Z

.field _dccConnected:Z

.field _discoverMessageMsReceived:Z

.field _discoverMessageReceived:Z

.field _out:Lcom/sqn/dcc/DccStdOut;

.field _responseBuffer:[B

.field _responseId:I

.field _responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

.field _serverIp:Ljava/lang/String;

.field _serverPort:I

.field _services:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field _socket:Ljava/net/Socket;

.field _socketIn:Ljava/io/InputStream;

.field _socketOut:Ljava/io/OutputStream;

.field _targetConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sqn/dcc/DeviceController;->_singleton:Lcom/sqn/dcc/DeviceController;

    return-void
.end method

.method public constructor <init>(Lcom/sqn/dcc/DccInitConfig;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_connect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_dcStopped:Z

    const/16 v0, 0x42

    iput v0, p0, Lcom/sqn/dcc/DeviceController;->_clientHandle:I

    iput-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_discoverMessageReceived:Z

    iput-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_discoverMessageMsReceived:Z

    iput-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_targetConnected:Z

    iput-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_dccConnected:Z

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_responseBuffer:[B

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sqn/dcc/DeviceController;->_responseId:I

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_serverIp:Ljava/lang/String;

    iput v1, p0, Lcom/sqn/dcc/DeviceController;->_serverPort:I

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socketOut:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/sqn/dcc/DeviceController;->checkDeviceInfoOverridden()V

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v0, v0, Lcom/sqn/dcc/DccInitConfig;->consoleOutput:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget-object v0, v0, Lcom/sqn/dcc/DccInitConfig;->serverIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_serverIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_cfg:Lcom/sqn/dcc/DccInitConfig;

    iget v0, v0, Lcom/sqn/dcc/DccInitConfig;->serverPort:I

    iput v0, p0, Lcom/sqn/dcc/DeviceController;->_serverPort:I

    sput-object p0, Lcom/sqn/dcc/DeviceController;->_singleton:Lcom/sqn/dcc/DeviceController;

    new-instance v0, Lcom/sqn/dcc/DeviceController$InternalNtf;

    invoke-direct {v0, p0}, Lcom/sqn/dcc/DeviceController$InternalNtf;-><init>(Lcom/sqn/dcc/DeviceController;)V

    invoke-static {v0}, Lcom/sqn/dcc/Internal;->InternalInitialize(Lcom/sqn/dcc/InternalClient;)V

    new-instance v0, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;

    iget-object v1, p1, Lcom/sqn/dcc/DccInitConfig;->device:Lcom/sqn/dcc/DeviceInfoClient;

    invoke-direct {v0, p0, v1}, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceInfoClient;)V

    invoke-static {v0}, Lcom/sqn/dcc/DeviceInfo;->DeviceInfoInitialize(Lcom/sqn/dcc/DeviceInfoClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->dbg:Lcom/sqn/dcc/DbgClient;

    invoke-static {v0}, Lcom/sqn/dcc/Dbg;->DbgInitialize(Lcom/sqn/dcc/DbgClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->evt:Lcom/sqn/dcc/EvtClient;

    invoke-static {v0}, Lcom/sqn/dcc/Evt;->EvtInitialize(Lcom/sqn/dcc/EvtClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->ho:Lcom/sqn/dcc/HoClient;

    invoke-static {v0}, Lcom/sqn/dcc/Ho;->HoInitialize(Lcom/sqn/dcc/HoClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->macSs:Lcom/sqn/dcc/MacSsClient;

    invoke-static {v0}, Lcom/sqn/dcc/MacSs;->MacSsInitialize(Lcom/sqn/dcc/MacSsClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->mgt:Lcom/sqn/dcc/MgtClient;

    invoke-static {v0}, Lcom/sqn/dcc/Mgt;->MgtInitialize(Lcom/sqn/dcc/MgtClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->mgtSs:Lcom/sqn/dcc/MgtSsClient;

    invoke-static {v0}, Lcom/sqn/dcc/MgtSs;->MgtSsInitialize(Lcom/sqn/dcc/MgtSsClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->nds:Lcom/sqn/dcc/NdssClient;

    invoke-static {v0}, Lcom/sqn/dcc/Ndss;->NdssInitialize(Lcom/sqn/dcc/NdssClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->sniff:Lcom/sqn/dcc/SniffClient;

    invoke-static {v0}, Lcom/sqn/dcc/Sniff;->SniffInitialize(Lcom/sqn/dcc/SniffClient;)V

    iget-object v0, p1, Lcom/sqn/dcc/DccInitConfig;->omadm:Lcom/sqn/dcc/OmadmClient;

    invoke-static {v0}, Lcom/sqn/dcc/Omadm;->OmadmInitialize(Lcom/sqn/dcc/OmadmClient;)V

    invoke-static {v2}, Lcom/sqn/dcc/PacketGenerator;->PacketGeneratorInitialize(Lcom/sqn/dcc/PacketGeneratorClient;)V

    invoke-static {v2}, Lcom/sqn/dcc/PacketAnalyzer;->PacketAnalyzerInitialize(Lcom/sqn/dcc/PacketAnalyzerClient;)V

    invoke-static {v2}, Lcom/sqn/dcc/Upg;->UpgInitialize(Lcom/sqn/dcc/UpgClient;)V

    invoke-static {v2}, Lcom/sqn/dcc/FwdFilter;->FwdFilterInitialize(Lcom/sqn/dcc/FwdFilterClient;)V

    invoke-static {v2}, Lcom/sqn/dcc/UpgCtrl;->UpgCtrlInitialize(Lcom/sqn/dcc/UpgCtrlClient;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sqn/dcc/DeviceController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_connect:Z

    return v0
.end method

.method static byteArrayToHexString([B)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v4, "(null)"

    :goto_0
    return-object v4

    :cond_0
    array-length v5, p0

    if-gtz v5, :cond_1

    const-string v4, "(empty)"

    goto :goto_0

    :cond_1
    const/16 v5, 0x10

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "2"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "3"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "4"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "5"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "6"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "7"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9"

    aput-object v6, v3, v5

    const/16 v5, 0xa

    const-string v6, "A"

    aput-object v6, v3, v5

    const/16 v5, 0xb

    const-string v6, "B"

    aput-object v6, v3, v5

    const/16 v5, 0xc

    const-string v6, "C"

    aput-object v6, v3, v5

    const/16 v5, 0xd

    const-string v6, "D"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    const-string v6, "E"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    const-string v6, "F"

    aput-object v6, v3, v5

    new-instance v2, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_2

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    int-to-byte v0, v5

    ushr-int/lit8 v5, v0, 0x4

    int-to-byte v0, v5

    and-int/lit8 v5, v0, 0xf

    int-to-byte v0, v5

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    int-to-byte v0, v5

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized invoke(ILjava/lang/String;[BZ)[B
    .locals 2

    const-class v1, Lcom/sqn/dcc/DeviceController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sqn/dcc/DeviceController;->_singleton:Lcom/sqn/dcc/DeviceController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sqn/dcc/DeviceController;->_singleton:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sqn/dcc/DeviceController;->processTxCommand(ILjava/lang/String;[BZ)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerClient(Lcom/sqn/dcc/DccClient;)V
    .locals 1

    sget-object v0, Lcom/sqn/dcc/DeviceController;->_singleton:Lcom/sqn/dcc/DeviceController;

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/DeviceController;->addDccClient(Lcom/sqn/dcc/DccClient;)V

    return-void
.end method


# virtual methods
.method addDccClient(Lcom/sqn/dcc/DccClient;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/sqn/dcc/DccClient;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method attemptToReconnect()V
    .locals 1

    iget-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_dcStopped:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;

    invoke-direct {v0, p0, p0}, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketReconnect;->start()V

    :cond_0
    return-void
.end method

.method checkDeviceInfoOverridden()V
    .locals 13

    const-class v11, Lcom/sqn/dcc/DeviceController$DeviceInfoNtf;

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    const-class v11, Lcom/sqn/dcc/DeviceInfoClient;

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v0, v10

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DeviceInfoClient"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    move-object v1, v7

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_0

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "DeviceController.DeviceInfoNtf class does not override all callbacks of DeviceInfoClient class"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "DeviceController.DeviceInfoNtf class does not override all callbacks of DeviceInfoClient class"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    return-void
.end method

.method cleanServices()V
    .locals 10

    const/4 v9, -0x1

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v8, "<DC> cleanServices"

    invoke-virtual {v7, v8}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/sqn/dcc/OutValue;

    const-string v7, ""

    invoke-direct {v3, v7}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/sqn/dcc/ServiceType;

    invoke-direct {v5}, Lcom/sqn/dcc/ServiceType;-><init>()V

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DccClient;

    invoke-virtual {v7}, Lcom/sqn/dcc/DccClient;->getServicesQty()I

    move-result v7

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DccClient;

    invoke-virtual {v7, v1, v3, v2, v5}, Lcom/sqn/dcc/DccClient;->getServiceFromIndex(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ServiceType;)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sqn/dcc/DccClient;

    iget-object v8, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sqn/dcc/DccClient;->resolveService(Ljava/lang/String;I)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method connect()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v3, "<DC> Try to establish a connection to DC server."

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/sqn/dcc/DeviceController;->_serverIp:Ljava/lang/String;

    iget v4, p0, Lcom/sqn/dcc/DeviceController;->_serverPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_socketIn:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-direct {v2, p0, p0}, Lcom/sqn/dcc/DeviceController$dcSocketReader;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    iput-object v2, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-virtual {v2}, Lcom/sqn/dcc/DeviceController$dcSocketReader;->start()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DC> Connected to DC server."

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<DC CONNECT> Unknown Host error \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sqn/dcc/DeviceController;->_serverIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': msg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_3
    iput-object v5, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<DC CONNECT> IO error: msg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_4
    iput-object v5, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method public createDc()Z
    .locals 2

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "<DC> create DC."

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_dcStopped:Z

    new-instance v0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-direct {v0, p0, p0}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->start()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method dumpServices()V
    .locals 5

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v3, "+------------+---------------"

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v3, "+     ID     +     SERVICE   "

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v3, "+------------+---------------"

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "| "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " |  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method initServices(Ljava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/DccClient;

    invoke-virtual {v2, p1, p2}, Lcom/sqn/dcc/DccClient;->resolveService(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<DCP INIT DEBUG> Unknown service: name\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processNtf(I[B)I
    .locals 1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcNtfProcessorThread:Lcom/sqn/dcc/DeviceController$dcNtfProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sqn/dcc/DeviceController$dcNtfProcessor;->push(I[B)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method processRxCommand(Lcom/sqn/dcc/DeviceController$dcpHeader;[B)V
    .locals 4

    const/4 v3, -0x1

    iget v0, p1, Lcom/sqn/dcc/DeviceController$dcpHeader;->_status:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<DCP> Bad return status 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/DeviceController$dcpHeader;->_status:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_responseBuffer:[B

    iput v3, p0, Lcom/sqn/dcc/DeviceController;->_responseId:I

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_2

    const-string v0, "wimax"

    const-string v1, "processRxCommand: _socket == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sqn/dcc/DeviceController;->processServiceDiscoverMsg(Lcom/sqn/dcc/DeviceController$dcpHeader;[B)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    iget v1, p0, Lcom/sqn/dcc/DeviceController;->_responseId:I

    if-ne v0, v1, :cond_4

    iput-object p2, p0, Lcom/sqn/dcc/DeviceController;->_responseBuffer:[B

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    invoke-virtual {p0, v0, p2}, Lcom/sqn/dcc/DeviceController;->processNtf(I[B)I

    goto :goto_0
.end method

.method processServiceDiscoverMsg(Lcom/sqn/dcc/DeviceController$dcpHeader;[B)V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v6, "<DC> processServiceDiscoverMsg"

    invoke-virtual {v5, v6}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_services:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {p0}, Lcom/sqn/dcc/DeviceController;->cleanServices()V

    iget v5, p1, Lcom/sqn/dcc/DeviceController$dcpHeader;->_handle:I

    iput v5, p0, Lcom/sqn/dcc/DeviceController;->_clientHandle:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    aget-byte v6, p2, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    add-int/lit8 v1, v1, 0x4

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<DC> serviceQty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    const-string v3, ""

    add-int/lit8 v5, v1, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v2, v5, v6

    add-int/lit8 v1, v1, 0x4

    :goto_1
    aget-byte v5, p2, v1

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p2, v1

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/sqn/dcc/DeviceController;->initServices(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/sqn/dcc/DeviceController;->_dccConnected:Z

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/sqn/dcc/DeviceController;->pushNtfToServer()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v6, "<DCP INIT> Can\'t enable notifications on the server"

    invoke-virtual {v5, v6}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_4
    iput-boolean v8, p0, Lcom/sqn/dcc/DeviceController;->_discoverMessageReceived:Z

    :goto_2
    return-void

    :cond_5
    iput-boolean v8, p0, Lcom/sqn/dcc/DeviceController;->_discoverMessageMsReceived:Z

    iput-boolean v8, p0, Lcom/sqn/dcc/DeviceController;->_targetConnected:Z

    goto :goto_2
.end method

.method processTxCommand(ILjava/lang/String;[BZ)[B
    .locals 11

    const/16 v10, 0x10

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<DCP SEND> Unknown command name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_0
    move-object v1, v9

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_targetConnected:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_dccConnected:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, v9

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/sqn/dcc/DeviceController;->_responseId:I

    new-instance v0, Lcom/sqn/dcc/DeviceController$dcpHeader;

    array-length v2, p3

    iget v4, p0, Lcom/sqn/dcc/DeviceController;->_clientHandle:I

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sqn/dcc/DeviceController$dcpHeader;-><init>(Lcom/sqn/dcc/DeviceController;IIII)V

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcpHeader;->marshall()[B

    move-result-object v8

    array-length v1, v8

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v7, v1, [B

    invoke-static {v8, v5, v7, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    invoke-static {p3, v5, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    invoke-virtual {p0, v7}, Lcom/sqn/dcc/DeviceController;->writeCommand([B)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "wimax"

    const-string v2, "writeCommand fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_responseWaitSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<DCP SEND> Service \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' was canceled by timout."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v1, v9

    goto/16 :goto_0

    :catch_0
    move-exception v6

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DCP SEND> Thread waiting was interrupted"

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_6
    move-object v1, v9

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_responseBuffer:[B

    goto/16 :goto_0

    :cond_8
    move-object v1, v9

    goto/16 :goto_0
.end method

.method pushNtfToServer()I
    .locals 13

    new-instance v3, Lcom/sqn/dcc/OutValue;

    const-string v10, ""

    invoke-direct {v3, v10}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/sqn/dcc/OutValue;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lcom/sqn/dcc/ServiceType;

    invoke-direct {v8}, Lcom/sqn/dcc/ServiceType;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iget-object v10, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v10, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sqn/dcc/DccClient;

    invoke-virtual {v10}, Lcom/sqn/dcc/DccClient;->getServicesQty()I

    move-result v10

    if-ge v1, v10, :cond_0

    iget-object v10, p0, Lcom/sqn/dcc/DeviceController;->_clients:Ljava/util/Hashtable;

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sqn/dcc/DccClient;

    invoke-virtual {v10, v1, v3, v2, v8}, Lcom/sqn/dcc/DccClient;->getServiceFromIndex(ILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/ServiceType;)I

    move-result v9

    if-nez v9, :cond_1

    iget v10, v8, Lcom/sqn/dcc/ServiceType;->value:I

    if-nez v10, :cond_1

    new-instance v4, Lcom/sqn/dcc/NtfName;

    invoke-direct {v4}, Lcom/sqn/dcc/NtfName;-><init>()V

    iget-object v10, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iput-object v10, v4, Lcom/sqn/dcc/NtfName;->serviceName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v10, :cond_1

    iget-object v11, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<DCP DEBUG> Ntf push: name="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, v3, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " id="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v5, v10, [Lcom/sqn/dcc/NtfName;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sqn/dcc/NtfName;

    invoke-static {v5}, Lcom/sqn/dcc/Internal;->RequestNtf([Lcom/sqn/dcc/NtfName;)I

    move-result v10

    :goto_1
    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method riseSocketReadError()V
    .locals 0

    invoke-virtual {p0}, Lcom/sqn/dcc/DeviceController;->attemptToReconnect()V

    return-void
.end method

.method public startDc()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketReaderThread:Lcom/sqn/dcc/DeviceController$dcSocketReader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "<DC> Start DC."

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    iput-boolean v2, p0, Lcom/sqn/dcc/DeviceController;->_connect:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_dcStopped:Z

    new-instance v0, Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-direct {v0, p0, p0}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    iput-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController;->_dcSocketConnectThread:Lcom/sqn/dcc/DeviceController$dcSocketConnect;

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketConnect;->start()V

    :cond_1
    return v2
.end method

.method public startDcConnect()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_connect:Z

    return v0
.end method

.method public stopDc()V
    .locals 3

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v2, "<DC> Stop DC."

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sqn/dcc/DeviceController;->_dcStopped:Z

    new-instance v0, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;

    invoke-direct {v0, p0, p0}, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;-><init>(Lcom/sqn/dcc/DeviceController;Lcom/sqn/dcc/DeviceController;)V

    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->start()V

    :try_start_0
    invoke-virtual {v0}, Lcom/sqn/dcc/DeviceController$dcSocketDisconnect;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopDcConnect()Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sqn/dcc/DeviceController;->_connect:Z

    const/4 v0, 0x1

    return v0
.end method

.method writeCommand([B)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/sqn/dcc/DeviceController;->_socketOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<DC> Write IO error: msg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sqn/dcc/DccStdOut;->printlnError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sqn/dcc/DeviceController;->attemptToReconnect()V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "wimax"

    const-string v3, "writeCommand Exception"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method
