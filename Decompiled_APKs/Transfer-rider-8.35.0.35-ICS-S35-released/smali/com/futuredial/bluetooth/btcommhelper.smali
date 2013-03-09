.class public Lcom/futuredial/bluetooth/btcommhelper;
.super Ljava/lang/Object;
.source "btcommhelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;
    }
.end annotation


# static fields
.field public static final BTNAME:Ljava/lang/String; = "FuturedialDMI"

.field public static final DMIBTUUID:Ljava/util/UUID;


# instance fields
.field private bSendEnd:Z

.field private callback:Lcom/futuredial/bluetooth/ICommCallback;

.field private currentTime:J

.field private halt:Z

.field protected input:Ljava/io/InputStream;

.field private m_handler:Landroid/os/Handler;

.field protected output:Ljava/io/OutputStream;

.field private remoteBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field protected socket:Landroid/bluetooth/BluetoothSocket;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "00006675-7475-7265-6469-616C62756D70"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/futuredial/bluetooth/btcommhelper;->DMIBTUUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    .line 25
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    .line 26
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 28
    iput v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->timeout:I

    .line 29
    iput-boolean v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->halt:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->bSendEnd:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J

    .line 32
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 3
    .parameter "rbtdevice"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    .line 25
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    .line 26
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 28
    iput v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->timeout:I

    .line 29
    iput-boolean v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->halt:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->bSendEnd:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J

    .line 32
    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/futuredial/bluetooth/btcommhelper;->remoteBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 44
    iput-object p2, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private declared-synchronized SetSendEnd(Z)V
    .locals 1
    .parameter "isSendEnd"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/futuredial/bluetooth/btcommhelper;->bSendEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/futuredial/bluetooth/btcommhelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->halt:Z

    return v0
.end method

.method static synthetic access$100(Lcom/futuredial/bluetooth/btcommhelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->bSendEnd:Z

    return v0
.end method

.method static synthetic access$200(Lcom/futuredial/bluetooth/btcommhelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/futuredial/bluetooth/btcommhelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->timeout:I

    return v0
.end method

.method private declared-synchronized setCurTime(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setTimeOut(I)V
    .locals 1
    .parameter "tOut"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/futuredial/bluetooth/btcommhelper;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public Open(Ljava/util/UUID;)I
    .locals 7
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/bluetooth/BluetoothException;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    const/16 v3, 0x67

    const/4 v2, 0x0

    .line 69
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->notify_user()V

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 74
    iget-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->remoteBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 75
    iget-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 76
    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->close_notify()V

    .line 77
    iget-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    .line 78
    iget-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    .line 79
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/futuredial/bluetooth/btcommhelper;->halt:Z

    .line 80
    new-instance v4, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;

    invoke-direct {v4, p0}, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;-><init>(Lcom/futuredial/bluetooth/btcommhelper;)V

    invoke-virtual {v4}, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->close_notify()V

    .line 122
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Exit OpenPort"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    :goto_0
    return v2

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->close_notify()V

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    const-string v2, "DMI_BT_COMM"

    const-string v4, "close socket"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    :cond_0
    :goto_1
    :try_start_3
    const-string v2, "----connection error----"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "Connection refused"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "socket failed to connect"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    :cond_1
    const-string v2, "Bluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth Error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v2, Lcom/futuredial/bluetooth/ExceptionForUI;

    invoke-direct {v2}, Lcom/futuredial/bluetooth/ExceptionForUI;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->close_notify()V

    throw v2

    .line 91
    .restart local v0       #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, e1:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    const-string v2, "Service discovery failed"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    const-string v2, "Bluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :goto_2
    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->close_notify()V

    move v2, v3

    goto/16 :goto_0

    .line 109
    :cond_3
    :try_start_5
    const-string v2, "Software caused connection abort"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    const-string v2, "Bluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x6e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 115
    :cond_4
    const-string v2, "Bluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x67

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public Send([BI)I
    .locals 5
    .parameter "buffer"
    .parameter "nTimeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/bluetooth/BluetoothException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 173
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    const/16 v1, 0x68

    .line 189
    :goto_0
    return v1

    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/futuredial/bluetooth/btcommhelper;->setTimeOut(I)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J

    .line 176
    iget-wide v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J

    invoke-direct {p0, v2, v3}, Lcom/futuredial/bluetooth/btcommhelper;->setCurTime(J)V

    .line 177
    invoke-direct {p0, v1}, Lcom/futuredial/bluetooth/btcommhelper;->SetSendEnd(Z)V

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 180
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 182
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/futuredial/bluetooth/btcommhelper;->SetSendEnd(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Bluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    invoke-direct {p0, v4}, Lcom/futuredial/bluetooth/btcommhelper;->SetSendEnd(Z)V

    .line 187
    new-instance v1, Lcom/futuredial/bluetooth/BluetoothException;

    const-string v2, "Send exception!"

    invoke-direct {v1, v2}, Lcom/futuredial/bluetooth/BluetoothException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/bluetooth/BluetoothException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->halt:Z

    .line 129
    invoke-virtual {p0}, Lcom/futuredial/bluetooth/btcommhelper;->close_notify()V

    .line 130
    const-string v2, "FDbluetooth"

    const-string v3, "close bluetooth called!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->socket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 143
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    :cond_2
    :goto_2
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v1           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public close_notify()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public notify_user()V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    .locals 16
    .parameter "bufferdata"
    .parameter "nTimeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/bluetooth/BluetoothException;
        }
    .end annotation

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/bluetooth/btcommhelper;->output:Ljava/io/OutputStream;

    if-nez v12, :cond_0

    const/16 v12, 0x68

    .line 262
    :goto_0
    return v12

    .line 195
    :cond_0
    const-wide/16 v6, 0x0

    .local v6, ltime:J
    const-wide/16 v4, 0x0

    .line 196
    .local v4, lendtime:J
    const/4 v9, 0x0

    .line 197
    .local v9, readlen:I
    const/4 v12, 0x0

    new-array v11, v12, [B

    .line 198
    .local v11, value:[B
    const/16 v12, 0x140a

    new-array v1, v12, [B

    .line 201
    .local v1, buf:[B
    const-wide/16 v12, 0xa

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 209
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 210
    .local v8, nLen:I
    if-nez v8, :cond_3

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v4

    .line 213
    sub-long v12, v4, v6

    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    .line 216
    const-wide/16 v12, 0x32

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    :goto_2
    sub-long v12, v4, v6

    move/from16 v0, p2

    int-to-long v14, v0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_1

    .line 262
    :cond_2
    const/16 v12, 0x64

    goto :goto_0

    .line 202
    .end local v8           #nLen:I
    :catch_0
    move-exception v3

    .line 203
    .local v3, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 217
    .end local v3           #e1:Ljava/lang/InterruptedException;
    .restart local v8       #nLen:I
    :catch_1
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 227
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v8           #nLen:I
    :catch_2
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    const-string v12, "Bluetooth"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bluetooth Error = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x6c

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    const/16 v12, 0x65

    goto :goto_0

    .line 225
    .end local v2           #e:Ljava/io/IOException;
    .restart local v8       #nLen:I
    :cond_3
    :try_start_4
    const-string v12, "DMI_BT_COMM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "len = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/bluetooth/btcommhelper;->input:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v9

    .line 233
    if-lez v9, :cond_5

    .line 234
    array-length v12, v11

    new-array v10, v12, [B

    .line 235
    .local v10, temp:[B
    array-length v12, v11

    if-lez v12, :cond_4

    .line 237
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v11

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_4
    array-length v12, v11

    add-int/2addr v12, v9

    new-array v11, v12, [B

    .line 241
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v10

    invoke-static {v10, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v1, v12, v11, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/futuredial/bluetooth/btcommhelper;->callback:Lcom/futuredial/bluetooth/ICommCallback;

    invoke-interface {v12, v11}, Lcom/futuredial/bluetooth/ICommCallback;->checkDataOver([B)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 245
    array-length v12, v11

    new-array v12, v12, [B

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 246
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v14, 0x0

    array-length v15, v11

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 252
    .end local v10           #temp:[B
    :cond_5
    const-wide/16 v12, 0x32

    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 258
    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto/16 :goto_2

    .line 253
    :catch_3
    move-exception v2

    .line 254
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public setCommLister(Lcom/futuredial/bluetooth/ICommCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/futuredial/bluetooth/btcommhelper;->callback:Lcom/futuredial/bluetooth/ICommCallback;

    .line 36
    return-void
.end method

.method public setRemoteBTDevice(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 0
    .parameter "rbtdevice"
    .parameter "handler"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/futuredial/bluetooth/btcommhelper;->remoteBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 51
    iput-object p2, p0, Lcom/futuredial/bluetooth/btcommhelper;->m_handler:Landroid/os/Handler;

    .line 52
    return-void
.end method
