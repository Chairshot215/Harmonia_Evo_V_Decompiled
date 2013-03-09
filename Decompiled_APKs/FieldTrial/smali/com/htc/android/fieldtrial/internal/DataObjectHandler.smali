.class public Lcom/htc/android/fieldtrial/internal/DataObjectHandler;
.super Landroid/os/Handler;
.source "DataObjectHandler.java"


# static fields
.field private static DBG:Z = false

.field private static final D_NO_RESPONSE_STRING:Ljava/lang/String; = "no response string"

.field private static final D_NO_RESULT_OBJECT:Ljava/lang/String; = "no result object"

.field private static final EVENT_RIL_GPS_RESET:I = 0x71

.field private static final EVENT_RIL_GPS_START:I = 0x6f

.field private static final EVENT_RIL_GPS_STOP:I = 0x70

.field private static final FILENAME:Ljava/lang/String; = "AtDbg.txt"

.field private static final GPS_CMD_ACTIVATE:Ljava/lang/String; = "C84B0D64000701E9030000"

.field private static final GPS_CMD_DE_ACTIVATE:Ljava/lang/String; = "C84B0D64000801E9030000"

.field private static final GPS_CMD_DE_REG_PD:Ljava/lang/String; = "C84B0D64000101E903000001"

.field private static final GPS_CMD_DIAG_END_TASK:Ljava/lang/String; = "C84B0D0C00"

.field private static final GPS_CMD_DIAG_START_TASK:Ljava/lang/String; = "C84B0D0800"

.field private static final GPS_CMD_GPS_END:Ljava/lang/String; = "C84B0D64000B0100000000E0030000"

.field private static final GPS_CMD_GPS_START:Ljava/lang/String; = "C84B0D64000A01020200000000000001320000000100000032000000E90300000000000000000000000000000100000000000000"

.field private static final GPS_CMD_INIT:Ljava/lang/String; = "C84B0D6400000108000000"

.field private static final GPS_CMD_REG_PD:Ljava/lang/String; = "C84B0D64000101E903000000"

.field private static final GPS_CMD_RELEASE:Ljava/lang/String; = "C84B0D64000901E9030000"

.field private static final GPS_DM_SET_PARAM:Ljava/lang/String; = "C84B0D64000C01E903000004200007000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000"

.field private static final GPS_RESET_MSG_SET:[Ljava/lang/String; = null

.field private static final GPS_START_MSG_SET:[Ljava/lang/String; = null

.field private static final GPS_STOP_MSG_SET:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DataObjectHandler"

.field private static final PATH:Ljava/lang/String; = "/data/data/com.android.phone/files/"


# instance fields
.field private gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

.field private mLogOut:Ljava/io/FileOutputStream;

.field writeTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    sput-boolean v0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "C84B0D0800"

    aput-object v1, v0, v2

    const-string v1, "C84B0D6400000108000000"

    aput-object v1, v0, v3

    const-string v1, "C84B0D64000101E903000000"

    aput-object v1, v0, v4

    const-string v1, "C84B0D64000701E9030000"

    aput-object v1, v0, v5

    const-string v1, "C84B0D64000A01020200000000000001320000000100000032000000E90300000000000000000000000000000100000000000000"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_START_MSG_SET:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "C84B0D64000B0100000000E0030000"

    aput-object v1, v0, v2

    const-string v1, "C84B0D64000801E9030000"

    aput-object v1, v0, v3

    const-string v1, "C84B0D64000101E903000001"

    aput-object v1, v0, v4

    const-string v1, "C84B0D64000901E9030000"

    aput-object v1, v0, v5

    const-string v1, "C84B0D0C00"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_STOP_MSG_SET:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "C84B0D0800"

    aput-object v1, v0, v2

    const-string v1, "C84B0D6400000108000000"

    aput-object v1, v0, v3

    const-string v1, "C84B0D64000101E903000000"

    aput-object v1, v0, v4

    const-string v1, "C84B0D64000701E9030000"

    aput-object v1, v0, v5

    const-string v1, "C84B0D64000C01E903000004200007000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "C84B0D64000A01020200000000000001320000000100000032000000E90300000000000000000000000000000100000000000000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_RESET_MSG_SET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->writeTitle:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    return-void
.end method


# virtual methods
.method close()V
    .locals 3

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->mLogOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/io/IOException;
    sget-boolean v1, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "DataObjectHandler"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 63
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    move-result-object v0

    .line 64
    .local v0, process:Lcom/htc/android/fieldtrial/internal/DataObject;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 65
    :cond_0
    const-string v3, "DataObjectHandler"

    const-string v4, "msg.obj == null ||((AsyncResult) msg.obj).result == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 69
    .local v6, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v6}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->isReceivedObjLegal(Landroid/os/AsyncResult;)Z

    move-result v1

    .line 70
    .local v1, rpsObjectResult:Z
    const/4 v2, 0x0

    .line 71
    .local v2, command:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 72
    iget-object v3, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 77
    :sswitch_0
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_4

    .line 78
    const-string v3, "DataObjectHandler"

    const-string v4, "received msl result"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4
    invoke-virtual {v0, v1, v2}, Lcom/htc/android/fieldtrial/internal/DataObject;->receiveMSL(ZLjava/lang/String;)V

    goto :goto_0

    .line 83
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/htc/android/fieldtrial/internal/Record;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/fieldtrial/internal/DataObject;->receivedReadCmd(ZLjava/lang/String;IILcom/htc/android/fieldtrial/internal/Record;)V

    goto :goto_0

    .line 88
    :sswitch_2
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "DataObjectHandler"

    const-string v4, "GPS start process"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :sswitch_3
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "DataObjectHandler"

    const-string v4, "GPS stop process"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :sswitch_4
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "DataObjectHandler"

    const-string v4, "GPS reset process"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6f -> :sswitch_2
        0x70 -> :sswitch_3
        0x71 -> :sswitch_4
        0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method isPhoneInService()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 272
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 274
    .local v2, radioOff:Z
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v2, v4

    .line 280
    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v4

    :cond_1
    move v2, v3

    .line 274
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "DataObjectHandler"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    move v4, v3

    .line 280
    goto :goto_1
.end method

.method isReceivedObjLegal(Landroid/os/AsyncResult;)Z
    .locals 4
    .parameter "ar"

    .prologue
    .line 246
    const/4 v1, 0x1

    .line 247
    .local v1, status:Z
    const/4 v0, 0x0

    .line 249
    .local v0, errMsg:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no result object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    .line 254
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no response string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v1, 0x0

    .line 259
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 260
    const/4 v1, 0x0

    .line 262
    :cond_2
    if-eqz v0, :cond_3

    .line 263
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_3

    .line 264
    const-string v2, "DataObjectHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    return v1
.end method

.method resetGPS()V
    .locals 3

    .prologue
    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_RESET_MSG_SET:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 297
    const/16 v1, 0x71

    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_RESET_MSG_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, p0, v1, v2}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method sendCmd(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 7
    .parameter "handler"
    .parameter "identifier"
    .parameter "command"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 103
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gbSupportDMAgent:Z

    if-ne v2, v5, :cond_1

    .line 106
    iget-object v2, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    if-nez v2, :cond_2

    .line 107
    const-string v2, "DataObjectHandler"

    const-string v3, "gDMAgent is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    if-nez v2, :cond_3

    .line 110
    const-string v2, "DataObjectHandler"

    const-string v3, "DMAgent hasn\'t connected yet!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 116
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 118
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-virtual {v2, p3}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 119
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "DataObjectHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_4
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    const-string v2, "C8F8000000"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 123
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/htc/android/fieldtrial/internal/DataObject;->receiveCommandUI(ZLjava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    sget-boolean v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "DataObjectHandler"

    const-string v3, "sendMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendReadCmd(Lcom/htc/android/fieldtrial/internal/Record;Ljava/lang/String;II)V
    .locals 7
    .parameter "record"
    .parameter "command"
    .parameter "identifier"
    .parameter "appends"

    .prologue
    const/4 v6, 0x0

    .line 143
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "DataObjectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReadCmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObject;->gbSupportDMAgent:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 146
    iget-object v3, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    if-nez v3, :cond_2

    .line 147
    const-string v3, "DataObjectHandler"

    const-string v4, "gDMAgent is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObject;->gbConnected:Z

    if-nez v3, :cond_3

    .line 150
    const-string v3, "DataObjectHandler"

    const-string v4, "DMAgent hasn\'t connected yet!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 156
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 158
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    invoke-virtual {v3, p2}, Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 160
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "DataObjectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    iput p4, v2, Landroid/os/Message;->arg1:I

    .line 163
    monitor-enter p1

    .line 165
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "DataObjectHandler"

    const-string v4, "sendMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    sget-boolean v3, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->DBG:Z

    if-eqz v3, :cond_6

    .line 169
    const-string v3, "DataObjectHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " process start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    :try_start_1
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setDMAgent(Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;)V
    .locals 0
    .parameter "iDMAgent"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->gDMAgent:Lcom/htc/android/fieldtrial/dmagent/DMAgentConnector;

    .line 312
    return-void
.end method

.method startGPS()V
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_START_MSG_SET:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 285
    const/16 v1, 0x6f

    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_START_MSG_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, p0, v1, v2}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method stopGPS()V
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_STOP_MSG_SET:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 291
    const/16 v1, 0x70

    sget-object v2, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->GPS_STOP_MSG_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, p0, v1, v2}, Lcom/htc/android/fieldtrial/internal/DataObjectHandler;->sendCmd(Landroid/os/Handler;ILjava/lang/String;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method
