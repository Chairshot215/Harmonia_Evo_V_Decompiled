.class public Lcom/futuredial/bluetooth/BtQueryManufacturer;
.super Ljava/lang/Object;
.source "BtQueryManufacturer.java"


# static fields
.field public static BDCOM_PBAP_UUID_STR:Ljava/lang/String;

.field public static DMI_UUID_STR:Ljava/lang/String;

.field public static DUN_UUID_STR:Ljava/lang/String;

.field public static NOK_UUID_STR:Ljava/lang/String;

.field public static PBAP_PCE_UUID_STR:Ljava/lang/String;

.field public static PBAP_PSE_UUID_STR:Ljava/lang/String;


# instance fields
.field private final BLUETOOTH_TIMEOUT:I

.field private final TAG:Ljava/lang/String;

.field public bHasDMIUUID:Z

.field public bHasNokiaUUID:Z

.field public bthelper:Lcom/futuredial/bluetooth/btcommhelper;

.field private m_handler:Landroid/os/Handler;

.field private remoteDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "00001103-0000-1000-8000-00805F9B34FB"

    sput-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->DUN_UUID_STR:Ljava/lang/String;

    .line 25
    const-string v0, "0000112F-0000-1000-8000-00805F9B34FB"

    sput-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->PBAP_PSE_UUID_STR:Ljava/lang/String;

    .line 26
    const-string v0, "0000112E-0000-1000-8000-00805F9B34FB"

    sput-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->PBAP_PCE_UUID_STR:Ljava/lang/String;

    .line 27
    const-string v0, "00001130-0000-1000-8000-00805F9B34FB"

    sput-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BDCOM_PBAP_UUID_STR:Ljava/lang/String;

    .line 29
    const-string v0, "00005005-0000-1000-8000-0002EE000001"

    sput-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->NOK_UUID_STR:Ljava/lang/String;

    .line 30
    const-string v0, "00006675-7475-7265-6469-616C62756D70"

    sput-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->DMI_UUID_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/futuredial/bluetooth/btcommhelper;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/btcommhelper;-><init>()V

    iput-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    .line 17
    const-string v0, "BtQuery"

    iput-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->TAG:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 20
    const/16 v0, 0x2710

    iput v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BLUETOOTH_TIMEOUT:I

    .line 22
    iput-object v2, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    .line 32
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasNokiaUUID:Z

    .line 33
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasDMIUUID:Z

    .line 37
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasNokiaUUID:Z

    .line 38
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasDMIUUID:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 3
    .parameter "btDevice"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/futuredial/bluetooth/btcommhelper;

    invoke-direct {v0}, Lcom/futuredial/bluetooth/btcommhelper;-><init>()V

    iput-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    .line 17
    const-string v0, "BtQuery"

    iput-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->TAG:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 20
    const/16 v0, 0x2710

    iput v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BLUETOOTH_TIMEOUT:I

    .line 22
    iput-object v2, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    .line 32
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasNokiaUUID:Z

    .line 33
    iput-boolean v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasDMIUUID:Z

    .line 42
    iput-object p1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 43
    iget-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/bluetooth/BtQueryManufacturer$1;

    invoke-direct {v1, p0}, Lcom/futuredial/bluetooth/BtQueryManufacturer$1;-><init>(Lcom/futuredial/bluetooth/BtQueryManufacturer;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 55
    const-string v0, "BtQuery"

    const-string v1, "Enter SetBTRemote4."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p2, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    .line 57
    iget-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    iget-object v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p2}, Lcom/futuredial/bluetooth/btcommhelper;->setRemoteBTDevice(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public HasDMIFuturedialService(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 101
    const-string v6, "BtQuery"

    const-string v7, "try Futuredial uuid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->DMI_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    iput-boolean v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasDMIUUID:Z

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 109
    .local v0, bRet:Z
    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->PBAP_PSE_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BDCOM_PBAP_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    :cond_2
    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->PBAP_PSE_UUID_STR:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 113
    .local v5, pbapid:Ljava/util/UUID;
    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BDCOM_PBAP_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BDCOM_PBAP_UUID_STR:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 116
    :cond_3
    new-instance v1, Lcom/futuredial/bluetooth/btcommhelper;

    iget-object v6, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    invoke-direct {v1, v6, v7}, Lcom/futuredial/bluetooth/btcommhelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 118
    .local v1, bluesocket:Lcom/futuredial/bluetooth/btcommhelper;
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    .line 119
    invoke-virtual {v1}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    :goto_1
    const-wide/16 v6, 0x1388

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :goto_2
    sget-object v6, Lcom/futuredial/bluetooth/BtQueryManufacturer;->DMI_UUID_STR:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 130
    .local v2, dmiid:Ljava/util/UUID;
    new-instance v1, Lcom/futuredial/bluetooth/btcommhelper;

    .end local v1           #bluesocket:Lcom/futuredial/bluetooth/btcommhelper;
    iget-object v6, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    invoke-direct {v1, v6, v7}, Lcom/futuredial/bluetooth/btcommhelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 132
    .restart local v1       #bluesocket:Lcom/futuredial/bluetooth/btcommhelper;
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    move-result v6

    if-nez v6, :cond_4

    .line 133
    const/4 v0, 0x1

    .line 134
    :cond_4
    invoke-virtual {v1}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    :goto_3
    iput-boolean v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasDMIUUID:Z

    goto :goto_0

    .line 125
    .end local v2           #dmiid:Ljava/util/UUID;
    :catch_0
    move-exception v4

    .line 126
    .local v4, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v4           #e1:Ljava/lang/InterruptedException;
    .restart local v2       #dmiid:Ljava/util/UUID;
    :catch_1
    move-exception v3

    .line 136
    .local v3, e:Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_3

    .line 120
    .end local v2           #dmiid:Ljava/util/UUID;
    .end local v3           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public HasNokiaService(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 80
    const-string v4, "BtQuery"

    const-string v5, "try nokia uuid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v4, Lcom/futuredial/bluetooth/BtQueryManufacturer;->NOK_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iput-boolean v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasNokiaUUID:Z

    .line 97
    :goto_0
    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, bRet:Z
    sget-object v4, Lcom/futuredial/bluetooth/BtQueryManufacturer;->NOK_UUID_STR:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 88
    .local v3, nokiid:Ljava/util/UUID;
    new-instance v1, Lcom/futuredial/bluetooth/btcommhelper;

    iget-object v4, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/futuredial/bluetooth/btcommhelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 90
    .local v1, bluesocket:Lcom/futuredial/bluetooth/btcommhelper;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    move-result v4

    if-nez v4, :cond_1

    .line 91
    const/4 v0, 0x1

    .line 92
    :cond_1
    invoke-virtual {v1}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    iput-boolean v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasNokiaUUID:Z

    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/Throwable;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public QueryInfo()Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 293
    const-string v11, ""

    .line 295
    .local v11, strRet:Ljava/lang/String;
    const-string v13, ""

    .line 296
    .local v13, strTemp:Ljava/lang/String;
    new-instance v1, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v1}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 297
    .local v1, Respone:Lcom/futuredial/bluetooth/ByteArrayData;
    sget-object v15, Lcom/futuredial/bluetooth/BtQueryManufacturer;->DUN_UUID_STR:Ljava/lang/String;

    invoke-static {v15}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 299
    .local v4, id:Ljava/util/UUID;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/futuredial/bluetooth/btcommhelper;->setRemoteBTDevice(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v15, v4}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    move-result v15

    if-eqz v15, :cond_2

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/bluetooth/BtQueryManufacturer;->QueryNokiaInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v12, v11

    .line 386
    .end local v11           #strRet:Ljava/lang/String;
    .local v12, strRet:Ljava/lang/String;
    :goto_0
    return-object v12

    .line 304
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 306
    .local v3, e1:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/bluetooth/BtQueryManufacturer;->QueryNokiaInfo()Ljava/lang/String;

    move-result-object v11

    .line 308
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, strMsg:Ljava/lang/String;
    if-nez v10, :cond_0

    const-string v10, ""

    .line 310
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "ExceptionForUI"

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    new-instance v15, Lcom/futuredial/bluetooth/ExceptionForUI;

    invoke-direct {v15}, Lcom/futuredial/bluetooth/ExceptionForUI;-><init>()V

    throw v15

    :cond_1
    move-object v12, v11

    .line 311
    .end local v11           #strRet:Ljava/lang/String;
    .restart local v12       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v3           #e1:Ljava/lang/Throwable;
    .end local v10           #strMsg:Ljava/lang/String;
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :cond_2
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Send1"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const-string v16, "AT\r"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x7d0

    invoke-virtual/range {v15 .. v17}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const-string v16, "AT\r"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x3e8

    invoke-virtual/range {v15 .. v17}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v16, 0x7d0

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const-string v16, "ATE0V1\r"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x1388

    invoke-virtual/range {v15 .. v17}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v15

    if-nez v15, :cond_3

    .line 322
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Recv1"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 324
    iget-object v15, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v15, :cond_3

    .line 325
    new-instance v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    .end local v13           #strTemp:Ljava/lang/String;
    .local v14, strTemp:Ljava/lang/String;
    :try_start_2
    const-string v15, "BtQuery"

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v13, v14

    .line 334
    .end local v14           #strTemp:Ljava/lang/String;
    .restart local v13       #strTemp:Ljava/lang/String;
    :cond_3
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Send2"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const-string v16, "AT+GMM\r"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x1388

    invoke-virtual/range {v15 .. v17}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v15

    if-nez v15, :cond_4

    .line 337
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Recv2"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_3 .. :try_end_3} :catch_3

    .line 339
    const-wide/16 v15, 0x3e8

    :try_start_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_4 .. :try_end_4} :catch_3

    .line 344
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    const/16 v16, 0x7d0

    move/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    .line 345
    iget-object v15, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-eqz v15, :cond_4

    .line 346
    new-instance v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_5 .. :try_end_5} :catch_3

    .line 347
    .end local v13           #strTemp:Ljava/lang/String;
    .restart local v14       #strTemp:Ljava/lang/String;
    :try_start_6
    const-string v15, "BtQuery"

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v13, v14

    .line 356
    .end local v14           #strTemp:Ljava/lang/String;
    .restart local v13       #strTemp:Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v15}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 362
    iget-object v15, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    if-nez v15, :cond_5

    move-object v12, v11

    .end local v11           #strRet:Ljava/lang/String;
    .restart local v12       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 329
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 331
    .local v3, e1:Lcom/futuredial/bluetooth/BluetoothException;
    :goto_2
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    move-object v12, v11

    .line 332
    .end local v11           #strRet:Ljava/lang/String;
    .restart local v12       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 340
    .end local v3           #e1:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 342
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 350
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v3

    .line 352
    .restart local v3       #e1:Lcom/futuredial/bluetooth/BluetoothException;
    :goto_3
    invoke-virtual {v3}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    move-object v12, v11

    .line 353
    .end local v11           #strRet:Ljava/lang/String;
    .restart local v12       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 357
    .end local v3           #e1:Lcom/futuredial/bluetooth/BluetoothException;
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v12, v11

    .line 359
    .end local v11           #strRet:Ljava/lang/String;
    .restart local v12       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 363
    .end local v2           #e:Ljava/lang/Exception;
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/lang/String;

    .end local v13           #strTemp:Ljava/lang/String;
    iget-object v15, v1, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>([B)V

    .line 364
    .restart local v13       #strTemp:Ljava/lang/String;
    const-string v15, "BtQuery"

    invoke-static {v15, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v15, "\r\nOK\r\n"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_6

    .line 366
    const-string v15, "\r\nOK\r\n"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 369
    :cond_6
    const-string v15, "\r*\n*(?:\\+GMM:)? ?(.+?)\r+\n+"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 370
    .local v8, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v8, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 372
    .local v6, matcher:Ljava/util/regex/Matcher;
    const-string v15, ".+\"MODEL=(.+?)\""

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 373
    .local v9, patternMoto:Ljava/util/regex/Pattern;
    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 374
    .local v7, matcherMoto:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 375
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v5

    .line 376
    .local v5, matchResult:Ljava/util/regex/MatchResult;
    const/4 v15, 0x1

    invoke-interface {v5, v15}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 382
    .end local v5           #matchResult:Ljava/util/regex/MatchResult;
    :cond_7
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 384
    const-string v15, "BlackBerry"

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    const-string v11, "BlackBerry"

    :cond_8
    move-object v12, v11

    .line 386
    .end local v11           #strRet:Ljava/lang/String;
    .restart local v12       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 377
    .end local v12           #strRet:Ljava/lang/String;
    .restart local v11       #strRet:Ljava/lang/String;
    :cond_9
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 378
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v5

    .line 379
    .restart local v5       #matchResult:Ljava/util/regex/MatchResult;
    const/4 v15, 0x1

    invoke-interface {v5, v15}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 350
    .end local v5           #matchResult:Ljava/util/regex/MatchResult;
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    .end local v7           #matcherMoto:Ljava/util/regex/Matcher;
    .end local v8           #pattern:Ljava/util/regex/Pattern;
    .end local v9           #patternMoto:Ljava/util/regex/Pattern;
    .end local v13           #strTemp:Ljava/lang/String;
    .restart local v14       #strTemp:Ljava/lang/String;
    :catch_5
    move-exception v3

    move-object v13, v14

    .end local v14           #strTemp:Ljava/lang/String;
    .restart local v13       #strTemp:Ljava/lang/String;
    goto :goto_3

    .line 329
    .end local v13           #strTemp:Ljava/lang/String;
    .restart local v14       #strTemp:Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v13, v14

    .end local v14           #strTemp:Ljava/lang/String;
    .restart local v13       #strTemp:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public QueryNokiaInfo()Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 144
    const-string v16, ""

    .line 145
    .local v16, strRet:Ljava/lang/String;
    new-instance v3, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v3}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 156
    .local v3, arrData:Lcom/futuredial/bluetooth/ByteArrayData;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bHasNokiaUUID:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v17, v16

    .line 289
    .end local v16           #strRet:Ljava/lang/String;
    .local v17, strRet:Ljava/lang/String;
    :goto_0
    return-object v17

    .line 158
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v2}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 159
    .local v2, Respone:Lcom/futuredial/bluetooth/ByteArrayData;
    new-instance v5, Lcom/futuredial/bluetooth/btcommhelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 160
    .local v5, btNokiaHelper:Lcom/futuredial/bluetooth/btcommhelper;
    sget-object v18, Lcom/futuredial/bluetooth/BtQueryManufacturer;->NOK_UUID_STR:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    .line 161
    .local v11, id:Ljava/util/UUID;
    new-instance v18, Lcom/futuredial/bluetooth/BtQueryManufacturer$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/bluetooth/BtQueryManufacturer$3;-><init>(Lcom/futuredial/bluetooth/BtQueryManufacturer;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 178
    new-instance v12, Lcom/futuredial/bluetooth/DetectNokiaObex;

    invoke-direct {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;-><init>()V

    .line 182
    .local v12, nokiaobex:Lcom/futuredial/bluetooth/DetectNokiaObex;
    :try_start_0
    invoke-virtual {v5, v11}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v17, v16

    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 184
    .local v9, e1:Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v17, v16

    .line 185
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v9           #e1:Ljava/lang/Throwable;
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->getConnectPCSuiteStream()[B

    move-result-object v7

    .line 189
    .local v7, data:[B
    if-eqz v7, :cond_2

    array-length v0, v7

    move/from16 v18, v0

    if-nez v18, :cond_3

    :cond_2
    move-object/from16 v17, v16

    .line 191
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    .line 197
    .local v13, res:I
    const/16 v18, 0x2710

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v5, v7, v0}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v13

    .line 198
    if-eqz v13, :cond_4

    move-object/from16 v17, v16

    .line 200
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_4
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 203
    if-eqz v13, :cond_5

    move-object/from16 v17, v16

    .line 205
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :catch_1
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v17, v16

    .line 210
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v8           #e:Ljava/lang/Exception;
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_5
    iget-object v0, v2, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/futuredial/bluetooth/DetectNokiaObex;->setConnectResponseStream([B)Z

    move-result v15

    .line 213
    .local v15, state:Z
    if-nez v15, :cond_6

    move-object/from16 v17, v16

    .line 215
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->initGetCapabilityObject()Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v17, v16

    .line 219
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 222
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    .line 225
    .local v14, result:[B
    :cond_8
    :goto_1
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->getGetObjectStream()[B

    move-result-object v6

    .line 226
    .local v6, d:[B
    if-eqz v6, :cond_9

    array-length v0, v6

    move/from16 v18, v0

    if-nez v18, :cond_a

    :cond_9
    move-object/from16 v17, v16

    .line 228
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 234
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_a
    const/16 v18, 0x2710

    :try_start_2
    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v13

    .line 235
    if-eqz v13, :cond_b

    move-object/from16 v17, v16

    .line 237
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 239
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_b
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v3, v0}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v13

    .line 240
    if-eqz v13, :cond_c

    move-object/from16 v17, v16

    .line 242
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 245
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :catch_2
    move-exception v8

    .restart local v8       #e:Ljava/lang/Exception;
    move-object/from16 v17, v16

    .line 247
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 249
    .end local v8           #e:Ljava/lang/Exception;
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_c
    iget-object v0, v3, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/futuredial/bluetooth/DetectNokiaObex;->setGetObjectResponseStream([B)Z

    move-result v10

    .line 250
    .local v10, flag:Z
    if-nez v10, :cond_d

    move-object/from16 v17, v16

    .line 252
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 256
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :cond_d
    :try_start_3
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->IsObexFinished()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 258
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->getResult()[B

    move-result-object v14

    .line 259
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->getDisconnectStream()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v4

    .line 262
    .local v4, b:[B
    const/16 v18, 0x2710

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v5, v4, v0}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v13

    .line 263
    const-wide/16 v18, 0xbb8

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 279
    :goto_2
    invoke-virtual {v12, v14}, Lcom/futuredial/bluetooth/DetectNokiaObex;->setCapabilityObject([B)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 280
    invoke-virtual {v12}, Lcom/futuredial/bluetooth/DetectNokiaObex;->GetPhoneModel()Ljava/lang/String;

    move-result-object v16

    .line 283
    :cond_e
    :try_start_5
    invoke-virtual {v5}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_5
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    move-object/from16 v17, v16

    .line 289
    .end local v16           #strRet:Ljava/lang/String;
    .restart local v17       #strRet:Ljava/lang/String;
    goto/16 :goto_0

    .line 284
    .end local v17           #strRet:Ljava/lang/String;
    .restart local v16       #strRet:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 286
    .local v8, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v8}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    goto :goto_3

    .line 273
    .end local v4           #b:[B
    .end local v8           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :catch_4
    move-exception v18

    goto :goto_1

    .line 266
    .restart local v4       #b:[B
    :catch_5
    move-exception v18

    goto :goto_2
.end method

.method public SetBTRemote(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 2
    .parameter "remotedevice"
    .parameter "context"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 62
    iget-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    new-instance v1, Lcom/futuredial/bluetooth/BtQueryManufacturer$2;

    invoke-direct {v1, p0}, Lcom/futuredial/bluetooth/BtQueryManufacturer$2;-><init>(Lcom/futuredial/bluetooth/BtQueryManufacturer;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V

    .line 74
    const-string v0, "BtQuery"

    const-string v1, "Enter SetBTRemote4."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p2, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->m_handler:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->bthelper:Lcom/futuredial/bluetooth/btcommhelper;

    iget-object v1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p2}, Lcom/futuredial/bluetooth/btcommhelper;->setRemoteBTDevice(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    .line 77
    return-void
.end method
