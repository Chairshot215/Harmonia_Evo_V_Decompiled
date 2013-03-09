.class public Lcom/android/settings/PSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PSReceiver.java"


# static fields
.field public static CurrentStatus:I = 0x0

.field private static final DeviceVersion:I = 0x1

.field private static Dis:Ljava/io/DataInputStream; = null

.field public static final DisabledIPT:Ljava/lang/String; = "com.htc.disable.ipt"

.field private static Dos:Ljava/io/DataOutputStream; = null

.field private static final HANDSHAKEOK:I = -0x7ffe0000

.field public static IPTConnPass:Z = false

.field public static final IPTDisabled_Intent:Ljava/lang/String; = "com.htc.ipt.disabled"

.field public static final IPTEnabled_Intent:Ljava/lang/String; = "com.htc.ipt.enabled"

.field public static final ISEnabled_Intent:Ljava/lang/String; = "com.htc.is.enabled"

.field private static final NATCOMPLETE:I = 0x20000

.field public static Notshow_notice:Z = false

.field public static PSEnabled:Z = false

.field private static final SERVICE_PORT_NUMBER:I = 0x1770

.field public static final StartISFail_Intent:Ljava/lang/String; = "com.htc.android.startIS.Fail"

.field public static final StartPS_Intent:Ljava/lang/String; = "com.htc.android.start_IPT"

.field private static final Status_HandShakeOK:I = 0x6

.field private static final Status_NATCOMPLETE:I = 0x5

.field private static final Status_NDISSetup:I = 0x4

.field public static final StopPS_Intent:Ljava/lang/String; = "com.htc.android.stop_IPT"

.field private static final Tag:Ljava/lang/String; = "PSReceiver"

.field public static USBPlugged:Z = false

.field public static final USB_Intent:Ljava/lang/String; = "android.hardware.usb.action.USB_CONNECT2PC"

.field private static close:Z = false

.field public static filePath:Ljava/lang/String; = null

.field public static filePathCMCC:Ljava/lang/String; = null

.field public static filePathPico:Ljava/lang/String; = null

.field public static hasTethered:Z = false

.field private static mClient:Ljava/net/Socket; = null

.field private static mServer:Ljava/net/ServerSocket; = null

.field private static final mSyncLock:Ljava/lang/Object; = null

.field private static final soTimeOut:I = 0xea60

.field public static usbCableConnect:Ljava/lang/String;

.field public static usbCableConnectCMCC:Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private DNS:Ljava/lang/String;

.field ed:Landroid/content/SharedPreferences$Editor;

.field private gateway:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field private mService1:Lcom/htc/net/usbnet/IUsbnetController;

.field mThread1:Ljava/lang/Thread;

.field private mask:Ljava/lang/String;

.field public reTryConn:I

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "usb_cable_connect"

    sput-object v0, Lcom/android/settings/PSReceiver;->usbCableConnect:Ljava/lang/String;

    .line 46
    const-string v0, "online"

    sput-object v0, Lcom/android/settings/PSReceiver;->usbCableConnectCMCC:Ljava/lang/String;

    .line 47
    const-string v0, "/sys/devices/platform/android_usb/"

    sput-object v0, Lcom/android/settings/PSReceiver;->filePath:Ljava/lang/String;

    .line 48
    const-string v0, "/sys/class/power_supply/usb/"

    sput-object v0, Lcom/android/settings/PSReceiver;->filePathCMCC:Ljava/lang/String;

    .line 49
    const-string v0, "/sys/devices/platform/android_usb/"

    sput-object v0, Lcom/android/settings/PSReceiver;->filePathPico:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    .line 54
    sput-boolean v1, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    .line 55
    sput-boolean v1, Lcom/android/settings/PSReceiver;->close:Z

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    .line 80
    sput-boolean v1, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    .line 81
    sput-boolean v1, Lcom/android/settings/PSReceiver;->Notshow_notice:Z

    .line 82
    sput-boolean v1, Lcom/android/settings/PSReceiver;->hasTethered:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/PSReceiver;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    .line 66
    iput-object v1, p0, Lcom/android/settings/PSReceiver;->ip:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/android/settings/PSReceiver;->mask:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/settings/PSReceiver;->gateway:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/settings/PSReceiver;->DNS:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;

    .line 78
    iput-object v1, p0, Lcom/android/settings/PSReceiver;->mThread1:Ljava/lang/Thread;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    return-void
.end method

.method private CloseConn()V
    .locals 4

    .prologue
    .line 316
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PSReceiver"

    const-string v2, "Close all socket related, force to jump out handshaking process, inform PCSC to switch to other status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Before closed Called, PSEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    sget-boolean v1, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I

    .line 320
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.ipt.disabled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    sget-boolean v1, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 323
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PSReceiver"

    const-string v2, "UsbMiscControl_IPT(0), Send: com.htc.ipt.disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    .line 327
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    .line 328
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ps_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 330
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSReceiver;->close:Z

    .line 331
    const/4 v1, 0x4

    sput v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    .line 333
    sget-object v1, Lcom/android/settings/PSReceiver;->Dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_3

    .line 334
    sget-object v1, Lcom/android/settings/PSReceiver;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 335
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/PSReceiver;->Dis:Ljava/io/DataInputStream;

    .line 336
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PSReceiver"

    const-string v2, "Dis.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3
    sget-object v1, Lcom/android/settings/PSReceiver;->Dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_4

    .line 339
    sget-object v1, Lcom/android/settings/PSReceiver;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 340
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/PSReceiver;->Dos:Ljava/io/DataOutputStream;

    .line 341
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "PSReceiver"

    const-string v2, "Dos.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4
    sget-object v1, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_5

    .line 344
    sget-object v1, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 345
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    .line 346
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "PSReceiver"

    const-string v2, "mClient.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_5
    sget-object v1, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    if-eqz v1, :cond_6

    .line 349
    sget-object v1, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 350
    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    .line 351
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "PSReceiver"

    const-string v2, "mServer.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "PSReceiver"

    const-string v2, "Connection Closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_7
    :goto_1
    return-void

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/PSReceiver;->FailIPTNotification(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private InitSocket()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 264
    :try_start_0
    sget-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    if-nez v2, :cond_5

    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x1770

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    .line 267
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PSReceiver"

    const-string v3, "Server established"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    sget-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 270
    sget-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    sput-object v2, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    .line 271
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PSReceiver"

    const-string v3, "Client accepted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    sget-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 275
    new-instance v2, Ljava/io/DataInputStream;

    sget-object v3, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v2, Lcom/android/settings/PSReceiver;->Dis:Ljava/io/DataInputStream;

    .line 278
    new-instance v2, Ljava/io/DataOutputStream;

    sget-object v3, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lcom/android/settings/PSReceiver;->Dos:Ljava/io/DataOutputStream;

    .line 279
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "PSReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB connection established, Server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DIS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/PSReceiver;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DOS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/PSReceiver;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    .line 301
    :cond_4
    :goto_1
    return-void

    .line 265
    :cond_5
    sget-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/ServerSocket;

    const/16 v3, 0x1770

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v2, Lcom/android/settings/PSReceiver;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "PSReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InitSocket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_6
    sget-boolean v2, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    if-nez v2, :cond_7

    .line 286
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "PSReceiver"

    const-string v3, "InitSocket exception, but USB was unplugged, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    :cond_7
    iget v2, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    if-gt v2, v6, :cond_8

    sget-boolean v2, Lcom/android/settings/PSReceiver;->close:Z

    if-eq v2, v5, :cond_8

    iget v2, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->InitSocket()V

    goto :goto_1

    .line 291
    :cond_8
    sget-boolean v2, Lcom/android/settings/PSReceiver;->PSEnabled:Z

    if-ne v2, v5, :cond_9

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.PSActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 293
    .local v1, mintent:Landroid/content/Intent;
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    const-string v2, "ps_dialog_code"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    .end local v1           #mintent:Landroid/content/Intent;
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->CloseConn()V

    goto/16 :goto_1
.end method

.method private Reconn()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 363
    iget-object v4, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    const-string v5, "internet_ps"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 364
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 365
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "notshow_notice"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    iget-boolean v4, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "PSReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write ShowNotice for Reconn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notshow_notice"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    const/4 v4, 0x5

    :try_start_0
    sput v4, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    .line 371
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    .line 372
    const-string v4, "ipt_connectpass"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->InitSocket()V

    .line 374
    iget-boolean v4, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "PSReceiver"

    const-string v5, "Reconn socket successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.PSActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 377
    .local v2, mintent:Landroid/content/Intent;
    const/high16 v4, 0x1800

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    const-string v4, "ps_dialog_code"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v4, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v2           #mintent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v4, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "PSReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reconn socket fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private RecvNATComplete(Ljava/io/DataInputStream;)Z
    .locals 6
    .parameter "dis"

    .prologue
    const/4 v2, 0x0

    .line 451
    if-eqz p1, :cond_5

    sget-object v3, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_5

    .line 452
    iget-boolean v3, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PSReceiver"

    const-string v4, "RecvNATComplete Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 457
    .local v1, i:I
    const/high16 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 458
    iget-boolean v3, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "PSReceiver"

    const-string v4, "RecvNATComplete pass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    const/4 v3, 0x6

    sput v3, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    .line 460
    const/4 v2, 0x1

    .line 474
    .end local v1           #i:I
    :cond_2
    :goto_0
    return v2

    .line 463
    .restart local v1       #i:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "PSReceiver"

    const-string v4, "RecvNATComplete fail: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_4
    const/4 v3, 0x5

    sput v3, Lcom/android/settings/PSReceiver;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecvNATComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "PSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataInputStream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SendHandShakeOK(Ljava/io/DataOutputStream;)Z
    .locals 6
    .parameter "dos"

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 501
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PSReceiver"

    const-string v3, "SendHandShakeOK Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_3

    .line 505
    const/high16 v2, -0x7ffe

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 507
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "PSReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendHandShakeOK write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, -0x7ffe

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PSReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendHandShakeOK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_2
    sput v5, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    goto :goto_0

    .line 519
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "PSReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataOnputStream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/PSReceiver;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_4
    sput v5, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    goto :goto_0
.end method

.method private SetIPT0()V
    .locals 4

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set IPT0 fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private SetIPdata()Z
    .locals 4

    .prologue
    const/16 v3, 0x7e

    .line 480
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 481
    .local v0, rd:Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "192.168.99."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSReceiver;->ip:Ljava/lang/String;

    .line 482
    const-string v1, "255.255.255.0"

    iput-object v1, p0, Lcom/android/settings/PSReceiver;->mask:Ljava/lang/String;

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "192.168.99."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSReceiver;->DNS:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->DNS:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/PSReceiver;->gateway:Ljava/lang/String;

    .line 487
    const-string v1, "net.usb0.ps.ip"

    iget-object v2, p0, Lcom/android/settings/PSReceiver;->ip:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "net.usb0.ps.mask"

    iget-object v2, p0, Lcom/android/settings/PSReceiver;->mask:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "net.usb0.ps.gw"

    iget-object v2, p0, Lcom/android/settings/PSReceiver;->gateway:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v1, "net.usb0.ps.dns"

    iget-object v2, p0, Lcom/android/settings/PSReceiver;->DNS:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "net.usb0.ps.ip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "net.usb0.ps.mask"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Gateway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "net.usb0.ps.gw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PSReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DNS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "net.usb0.ps.dns"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private SetNDISData()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 388
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PSReceiver"

    const-string v2, "NDIS flow run..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    sput v4, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    .line 390
    sput-boolean v3, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    .line 391
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    sput-boolean v3, Lcom/android/settings/PSReceiver;->close:Z

    .line 393
    iput v3, p0, Lcom/android/settings/PSReceiver;->reTryConn:I

    .line 394
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/android/settings/PSReceiver;->close:Z

    if-nez v1, :cond_f

    .line 395
    sget v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    if-ne v1, v4, :cond_6

    .line 397
    :try_start_0
    sget-boolean v1, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    if-nez v1, :cond_4

    .line 398
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PSReceiver"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSReceiver;->close:Z

    .line 447
    :cond_3
    :goto_1
    return-void

    .line 402
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->SetIPdata()Z

    .line 403
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_9

    .line 404
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "PSReceiver"

    const-string v2, "UsbMiscControl_IPT(1) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_5
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :cond_6
    :goto_2
    sget v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    if-ne v1, v5, :cond_7

    .line 416
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->InitSocket()V

    .line 417
    sget-object v1, Lcom/android/settings/PSReceiver;->Dis:Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSReceiver;->RecvNATComplete(Ljava/io/DataInputStream;)Z

    .line 420
    :cond_7
    sget v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 421
    sget-object v1, Lcom/android/settings/PSReceiver;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSReceiver;->SendHandShakeOK(Ljava/io/DataOutputStream;)Z

    .line 423
    :try_start_1
    sget-boolean v1, Lcom/android/settings/PSReceiver;->USBPlugged:Z

    if-nez v1, :cond_b

    .line 424
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "PSReceiver"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_8
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSReceiver;->close:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    sput v5, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    goto :goto_0

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_2
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "PSReceiver"

    const-string v2, "UsbMiscControl_IPT(1) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_a
    const/4 v1, 0x4

    sput v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 410
    :catch_1
    move-exception v0

    .line 411
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    sput v4, Lcom/android/settings/PSReceiver;->CurrentStatus:I

    goto :goto_2

    .line 428
    .end local v0           #e:Ljava/lang/Exception;
    :cond_b
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_d

    .line 429
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "PSReceiver"

    const-string v2, "UsbMiscControl_IPT(2) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSReceiver;->IPTConnPass:Z

    .line 431
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.ipt.enabled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/PSReceiver;->SetIPTNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 436
    :cond_d
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "PSReceiver"

    const-string v2, "UsbMiscControl_IPT(2) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_e
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/PSReceiver;->CurrentStatus:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 446
    :cond_f
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PSReceiver"

    const-string v2, "NDIS flow end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/PSReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/PSReceiver;Lcom/htc/net/usbnet/IUsbnetController;)Lcom/htc/net/usbnet/IUsbnetController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/PSReceiver;->mService1:Lcom/htc/net/usbnet/IUsbnetController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/PSReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->CloseConn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/PSReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/PSReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->SetIPT0()V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/android/settings/PSReceiver;->close:Z

    return p0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/PSReceiver;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/PSReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/PSReceiver;->SetNDISData()V

    return-void
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 603
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 604
    .local v4, iface:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 605
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 610
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 604
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 603
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 610
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static isUsbConnected()Z
    .locals 2

    .prologue
    .line 614
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xda

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    .line 615
    :cond_0
    sget-object v0, Lcom/android/settings/PSReceiver;->usbCableConnectCMCC:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/PSReceiver;->filePathCMCC:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/PSReceiver;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 619
    :goto_0
    return v0

    .line 616
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_2

    .line 617
    sget-object v0, Lcom/android/settings/PSReceiver;->usbCableConnect:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/PSReceiver;->filePathPico:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/PSReceiver;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 619
    :cond_2
    sget-object v0, Lcom/android/settings/PSReceiver;->usbCableConnect:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/PSReceiver;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/PSReceiver;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fn"
    .parameter "filePath"

    .prologue
    .line 624
    const/4 v3, 0x0

    .line 625
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 627
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    if-eqz v4, :cond_0

    .line 629
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 632
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 633
    const-string v6, "PSReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 644
    if-eqz v0, :cond_1

    .line 645
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 651
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 652
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 658
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 636
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "PSReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v5, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 644
    if-eqz v0, :cond_4

    .line 645
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 651
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 652
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    move-object v3, v4

    .line 637
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 640
    :catch_0
    move-exception v2

    .line 641
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v6, "PSReceiver"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 644
    if-eqz v0, :cond_6

    .line 645
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 651
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 652
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 657
    :cond_7
    :goto_7
    const-string v6, "PSReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v5, ""

    goto :goto_2

    .line 643
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 644
    :goto_8
    if-eqz v0, :cond_8

    .line 645
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 651
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 652
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 643
    :cond_9
    :goto_a
    throw v6

    .line 647
    :catch_1
    move-exception v7

    goto :goto_9

    .line 654
    :catch_2
    move-exception v7

    goto :goto_a

    .line 647
    .restart local v2       #ex:Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 654
    :catch_4
    move-exception v6

    goto :goto_7

    .line 647
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .line 654
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .line 647
    .end local v5           #line:Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_3

    .line 654
    :catch_8
    move-exception v6

    goto :goto_4

    .line 643
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_8

    .line 640
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_5
.end method


# virtual methods
.method public FailIPTNotification(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 552
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 553
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f020100

    .line 554
    .local v1, id:I
    const v7, 0x7f0c04f4

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, title:Ljava/lang/String;
    const v7, 0x7f0c04f6

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, message:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 557
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 559
    .local v2, intent:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/Settings;

    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 560
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 561
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 562
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 563
    .local v0, FIPTNotification:Landroid/app/Notification;
    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 564
    const/4 v7, 0x2

    iput v7, v0, Landroid/app/Notification;->flags:I

    .line 565
    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 566
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/app/Notification;->when:J

    .line 567
    invoke-virtual {v0, p1, v6, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 568
    invoke-virtual {v4, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 572
    .end local v0           #FIPTNotification:Landroid/app/Notification;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public SetIPTNotification(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 528
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 529
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f0200ff

    .line 530
    .local v1, id:I
    const v7, 0x7f0c04f4

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, title:Ljava/lang/String;
    const v7, 0x7f0c04f5

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, message:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 533
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 535
    .local v2, intent:Landroid/content/Intent;
    const-class v7, Lcom/android/settings/Settings;

    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 536
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 539
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 540
    .local v0, IPTNotification:Landroid/app/Notification;
    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 541
    const/4 v7, 0x2

    iput v7, v0, Landroid/app/Notification;->flags:I

    .line 542
    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 543
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/app/Notification;->when:J

    .line 544
    invoke-virtual {v0, p1, v6, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 545
    invoke-virtual {v4, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 549
    .end local v0           #IPTNotification:Landroid/app/Notification;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/settings/PSReceiver;->mIntent:Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/settings/PSReceiver;->mContext:Landroid/content/Context;

    const-string v1, "internet_ps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PSReceiver;->sp:Landroid/content/SharedPreferences;

    .line 93
    new-instance v0, Lcom/android/settings/PSReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PSReceiver$1;-><init>(Lcom/android/settings/PSReceiver;)V

    iput-object v0, p0, Lcom/android/settings/PSReceiver;->mThread1:Ljava/lang/Thread;

    .line 247
    iget-object v0, p0, Lcom/android/settings/PSReceiver;->mThread1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    return-void
.end method

.method public setNetSharing(ZLandroid/content/Context;)I
    .locals 4
    .parameter "on"
    .parameter "mContext"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    const-string v3, "connectivity"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 577
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz p1, :cond_3

    .line 579
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PSReceiver"

    const-string v3, "setNetSharing--- connect success"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return v1

    .line 584
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PSReceiver"

    const-string v3, "setNetSharing---connect fail"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 585
    goto :goto_0

    .line 590
    :cond_3
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v3

    if-eqz v3, :cond_4

    .line 592
    iget-boolean v2, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PSReceiver"

    const-string v3, "setNetSharing---disconnect success"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/PSReceiver;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "PSReceiver"

    const-string v3, "setNetSharing---disconnect fail"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v2

    .line 597
    goto :goto_0
.end method
