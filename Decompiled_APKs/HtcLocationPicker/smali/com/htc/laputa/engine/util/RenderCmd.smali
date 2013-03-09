.class public Lcom/htc/laputa/engine/util/RenderCmd;
.super Ljava/lang/Object;
.source "RenderCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/laputa/engine/util/RenderCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/laputa/engine/util/RenderCmd;->mMainThreadHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderCmd()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 39
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    throw v1

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/laputa/engine/util/RenderCmd;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderCmd;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public LaputaMapCapture(IIDDDI)[B
    .locals 16
    .parameter "width"
    .parameter "height"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "zoomlevel"

    .prologue
    .line 1233
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1234
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_1

    .line 1236
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v11

    .line 1237
    .local v11, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    const/4 v12, 0x0

    .line 1286
    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v12

    .line 1242
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "/sdcard/navigator/Data/htc/capture.jpg"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v1, filename:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, filecontent:[B
    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 1246
    invoke-interface/range {v0 .. v10}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaMapCapture(Ljava/lang/String;IIDDDI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1250
    .local v15, imageFile:Ljava/io/File;
    const/4 v13, 0x0

    .line 1253
    .local v13, fileinputstream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1255
    .end local v13           #fileinputstream:Ljava/io/FileInputStream;
    .local v14, fileinputstream:Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v12, v2, [B

    .line 1257
    invoke-virtual {v14, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    array-length v3, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v2, v3, :cond_2

    .line 1259
    const/4 v12, 0x0

    :cond_2
    move-object v13, v14

    .line 1272
    .end local v14           #fileinputstream:Ljava/io/FileInputStream;
    .restart local v13       #fileinputstream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v13, :cond_0

    .line 1275
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1276
    :catch_0
    move-exception v11

    .line 1278
    .local v11, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1283
    .end local v1           #filename:Ljava/lang/String;
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #filecontent:[B
    .end local v13           #fileinputstream:Ljava/io/FileInputStream;
    .end local v15           #imageFile:Ljava/io/File;
    :catch_1
    move-exception v11

    .line 1285
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1286
    const/4 v12, 0x0

    goto :goto_0

    .line 1262
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v12       #filecontent:[B
    .restart local v13       #fileinputstream:Ljava/io/FileInputStream;
    .restart local v15       #imageFile:Ljava/io/File;
    :catch_2
    move-exception v11

    .line 1264
    .local v11, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1265
    const/4 v12, 0x0

    .line 1270
    goto :goto_1

    .line 1266
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v11

    .line 1268
    .local v11, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1269
    const/4 v12, 0x0

    goto :goto_1

    .line 1266
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #fileinputstream:Ljava/io/FileInputStream;
    .restart local v14       #fileinputstream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v11

    move-object v13, v14

    .end local v14           #fileinputstream:Ljava/io/FileInputStream;
    .restart local v13       #fileinputstream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1262
    .end local v13           #fileinputstream:Ljava/io/FileInputStream;
    .restart local v14       #fileinputstream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    move-object v13, v14

    .end local v14           #fileinputstream:Ljava/io/FileInputStream;
    .restart local v13       #fileinputstream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public LaputaRender(ILandroid/os/Bundle;Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;)I
    .locals 6
    .parameter "renderCmd"
    .parameter "param"
    .parameter "renderCallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1326
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1327
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1329
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1330
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v3

    .line 1334
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1338
    :pswitch_0
    sget-object v4, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    const-string v5, "START_RENDERING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v3, -0x1

    .line 1341
    .local v3, taskId:I
    :try_start_0
    new-instance v4, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    new-instance v5, Lcom/htc/laputa/engine/util/RenderCmd$1;

    invoke-direct {v5, p0, p3}, Lcom/htc/laputa/engine/util/RenderCmd$1;-><init>(Lcom/htc/laputa/engine/util/RenderCmd;Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;)V

    invoke-virtual {v4, p2, v5}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I
    :try_end_0
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v2

    .line 1355
    .local v2, e1:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v2}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_0

    .line 1361
    .end local v2           #e1:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    .end local v3           #taskId:I
    :pswitch_1
    sget-object v4, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    const-string v5, "STOP_RENDERING"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string v4, "taskId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1364
    .restart local v3       #taskId:I
    :try_start_1
    new-instance v4, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/htc/laputa/engine/util/Service$Adapter;->cancel(I)V
    :try_end_1
    .catch Lcom/htc/laputa/engine/util/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1369
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1365
    :catch_1
    move-exception v1

    .line 1367
    .local v1, e:Lcom/htc/laputa/engine/util/ServiceConnectionException;
    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/ServiceConnectionException;->printStackTrace()V

    goto :goto_1

    .line 1334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public LaputaSettingsGetApplyPOIFilter()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 601
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 602
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 605
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 610
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetApplyPOIFilter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 611
    :catch_0
    move-exception v1

    .line 613
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetAvoidFerries()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 123
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 126
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetAvoidFerries()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetAvoidMotorways()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 49
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 52
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 57
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetAvoidMotorways()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetAvoidTollRoads()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 86
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 89
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 94
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetAvoidTollRoads()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetBoolean(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 973
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 974
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 976
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 977
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 982
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 983
    :catch_0
    move-exception v1

    .line 985
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetCompass()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1084
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1085
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1087
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1088
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 1093
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetCompass()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v1

    .line 1096
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnableFootprintWarning()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 528
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 531
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 536
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnableFootprintWarning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 539
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnableLaneInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 214
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 217
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 221
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnableLaneInfo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnableLanguageList()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 676
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 677
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 679
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 680
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 685
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnableLanguageList()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 688
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnablePOIWarning()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 564
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 565
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 567
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 568
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 573
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnablePOIWarning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnableSafetyCamera()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 343
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 346
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 351
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnableSafetyCamera()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnableSpeedWarning()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 491
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 493
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 494
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 499
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnableSpeedWarning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 500
    :catch_0
    move-exception v1

    .line 502
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetEnableVoiceGuidance()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 751
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 752
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 754
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 755
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 760
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetEnableVoiceGuidance()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 763
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetFPS()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 936
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 937
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 939
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 940
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 945
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetFPS()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 946
    :catch_0
    move-exception v1

    .line 948
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetFollowGPS()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1158
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1159
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1161
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1162
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 1167
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetFollowGPS()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v1

    .line 1170
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetGuidanceMode()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 416
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 417
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 420
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 425
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetGuidanceMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetInt(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 1010
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1011
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1013
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1014
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 1019
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v1

    .line 1022
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetInternet()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1195
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1196
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1198
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1199
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 1204
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetInternet()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v1

    .line 1207
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetLaneInfoContent()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 196
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 199
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 203
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetLaneInfoContent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetLanguageListByIndex(I)Ljava/lang/String;
    .locals 5
    .parameter "iIndex"

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 658
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 660
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 661
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 666
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetLanguageListByIndex(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 667
    :catch_0
    move-exception v1

    .line 669
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetMapScale()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1121
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1122
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1124
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1125
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 1130
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetMapScale()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v1

    .line 1133
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetNavigationLicenseContent()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 825
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 826
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 828
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 829
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 834
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetNavigationLicenseContent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 835
    :catch_0
    move-exception v1

    .line 837
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetNavigationMode()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 379
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 380
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 383
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 388
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetNavigationMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetNightDayColors()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 863
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 865
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 866
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 871
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetNightDayColors()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 872
    :catch_0
    move-exception v1

    .line 874
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetNumLanguageList()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 638
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 639
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 641
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 642
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 647
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetNumLanguageList()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 648
    :catch_0
    move-exception v1

    .line 650
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetNumVoiceGuidanceList()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 713
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 714
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 716
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 717
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 722
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetNumVoiceGuidanceList()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 723
    :catch_0
    move-exception v1

    .line 725
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetSafetyCameraContent()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 324
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 327
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 332
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetSafetyCameraContent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetStreetInfo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 899
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 900
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 902
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 903
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 908
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetStreetInfo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 909
    :catch_0
    move-exception v1

    .line 911
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 1047
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1048
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1050
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1051
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const-string v2, ""

    .line 1060
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 1056
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v1

    .line 1059
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1060
    const-string v2, ""

    goto :goto_0
.end method

.method public LaputaSettingsGetTrafficContent()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 250
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 253
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 258
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetTrafficContent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetTrafficInterval()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 286
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 287
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 290
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 295
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetTrafficInterval()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 298
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetUseMetric()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 454
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 457
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 462
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetUseMetric()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    .line 465
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetVoiceGuidanceByIndex(I)Ljava/lang/String;
    .locals 5
    .parameter "iIndex"

    .prologue
    const/4 v2, 0x0

    .line 732
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 733
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 735
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 736
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 741
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetVoiceGuidanceByIndex(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 742
    :catch_0
    move-exception v1

    .line 744
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsGetVolume()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 788
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 789
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 791
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 792
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 797
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsGetVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 798
    :catch_0
    move-exception v1

    .line 800
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetApplyPOIFilter(Z)V
    .locals 4
    .parameter "bApplyPOIFilter"

    .prologue
    .line 620
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 621
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 623
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 624
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 629
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetApplyPOIFilter(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    .line 632
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetAvoidFerries(Z)V
    .locals 4
    .parameter "bAvoidFerries"

    .prologue
    .line 141
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 142
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetAvoidFerries(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetAvoidMotorways(Z)V
    .locals 4
    .parameter "bAvoidMotorways"

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 68
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 71
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetAvoidMotorways(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetAvoidTollRoads(Z)V
    .locals 4
    .parameter "bAvoidTollRoads"

    .prologue
    .line 104
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 105
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 108
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetAvoidTollRoads(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetBoolean(Ljava/lang/String;Z)V
    .locals 4
    .parameter "key"
    .parameter "bValue"

    .prologue
    .line 992
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 993
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 995
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 996
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1001
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1002
    :catch_0
    move-exception v1

    .line 1004
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetCompass(Z)V
    .locals 4
    .parameter "bEnableCompass"

    .prologue
    .line 1103
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1104
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1106
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1107
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1112
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetCompass(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v1

    .line 1115
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetDpi(II)V
    .locals 4
    .parameter "xDpi"
    .parameter "yDpi"

    .prologue
    .line 844
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 845
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 847
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 848
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 853
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetDpi(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    :catch_0
    move-exception v1

    .line 856
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnableFootprintWarning(Z)V
    .locals 4
    .parameter "bEnableFootprintWarning"

    .prologue
    .line 546
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 547
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 549
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 550
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 555
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnableFootprintWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 558
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnableLaneInfo(Z)V
    .locals 4
    .parameter "bEnableLaneInfo"

    .prologue
    .line 231
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 232
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 235
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 240
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnableLaneInfo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnableLanguageList(I)V
    .locals 4
    .parameter "iEnableLanguageListIndex"

    .prologue
    .line 695
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 696
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 698
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 699
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 704
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnableLanguageList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v1

    .line 707
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnablePOIWarning(Z)V
    .locals 4
    .parameter "bEnablePOIWarning"

    .prologue
    .line 583
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 584
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 586
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 587
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 592
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnablePOIWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v1

    .line 595
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnableSafetyCamera(Z)V
    .locals 4
    .parameter "bEnableSafetyCamera"

    .prologue
    .line 361
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 362
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 365
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 370
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnableSafetyCamera(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 373
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnableSpeedWarning(Z)V
    .locals 4
    .parameter "bEnableSpeedWarning"

    .prologue
    .line 509
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 510
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 513
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 518
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnableSpeedWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetEnableVoiceGuidance(I)V
    .locals 4
    .parameter "iEnableVoiceGuidanceIndex"

    .prologue
    .line 770
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 771
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 773
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 774
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 779
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetEnableVoiceGuidance(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 782
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetFPS(Z)V
    .locals 4
    .parameter "bEnableFPS"

    .prologue
    .line 955
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 956
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 958
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 959
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 964
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetFPS(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v1

    .line 967
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetFollowGPS(Z)V
    .locals 4
    .parameter "bEnableFollowGPS"

    .prologue
    .line 1177
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1178
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1180
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1181
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1191
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1186
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetFollowGPS(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v1

    .line 1189
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetGuidanceMode(I)V
    .locals 4
    .parameter "iGuidanceMode"

    .prologue
    .line 435
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 436
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 438
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 444
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetGuidanceMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 447
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetInt(Ljava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "iValue"

    .prologue
    .line 1029
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1030
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1032
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1033
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1038
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v1

    .line 1041
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetInternet(Z)V
    .locals 4
    .parameter "bEnableInternet"

    .prologue
    .line 1214
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1215
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1217
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1218
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1223
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetInternet(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1224
    :catch_0
    move-exception v1

    .line 1226
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetMapScale(Z)V
    .locals 4
    .parameter "bEnableMapScale"

    .prologue
    .line 1140
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1141
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1143
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1144
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1149
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetMapScale(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v1

    .line 1152
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetNavigationMode(I)V
    .locals 4
    .parameter "iNavigationMode"

    .prologue
    .line 398
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 399
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 402
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 407
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetNavigationMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 410
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetNightDayColors(Z)V
    .locals 4
    .parameter "bNightColors"

    .prologue
    .line 881
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 882
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 884
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 885
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 890
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetNightDayColors(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v1

    .line 893
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetStreetInfo(Z)V
    .locals 4
    .parameter "bEnableStreetInfo"

    .prologue
    .line 918
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 919
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 921
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 922
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 927
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetStreetInfo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v1

    .line 930
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "strValue"

    .prologue
    .line 1066
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 1067
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 1069
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 1070
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1075
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v1

    .line 1078
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetTrafficContent(Z)V
    .locals 4
    .parameter "bEnableTraffic"

    .prologue
    .line 268
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 269
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 271
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 277
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetTrafficContent(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 280
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetTrafficPreference(II)V
    .locals 4
    .parameter "nInterval"
    .parameter "nRadius"

    .prologue
    .line 305
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 306
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 309
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 314
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetTrafficPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetUseMetric(Z)V
    .locals 4
    .parameter "bUseMetric"

    .prologue
    .line 472
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 473
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 476
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 481
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetUseMetric(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    .line 484
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LaputaSettingsSetVolume(I)V
    .locals 4
    .parameter "iVolume"

    .prologue
    .line 807
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getDataService()Lcom/htc/laputa/engine/aidl/IDataService;

    move-result-object v0

    .line 808
    .local v0, dataService:Lcom/htc/laputa/engine/aidl/IDataService;
    if-nez v0, :cond_0

    .line 810
    invoke-static {}, Lcom/htc/laputa/engine/util/Service;->getServiceNotReadyException()Lcom/htc/laputa/engine/util/ServiceConnectionException;

    move-result-object v1

    .line 811
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/laputa/engine/util/RenderCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 816
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/htc/laputa/engine/aidl/IDataService;->LaputaSettingsSetVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    :catch_0
    move-exception v1

    .line 819
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
