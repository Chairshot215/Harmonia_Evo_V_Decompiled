.class public abstract Lcom/futuredial/ReadThread;
.super Lcom/futuredial/BaseThread;
.source "ReadThread.java"

# interfaces
.implements Lcom/futuredial/HANDLEMSG;


# static fields
.field public static bResumeTimeout:Z


# instance fields
.field protected final BLUETOOTH_TIMEOUT:I

.field private final TAG:Ljava/lang/String;

.field public bPopResume:Z

.field public bResumeCancel:Z

.field protected btDevice:Landroid/bluetooth/BluetoothDevice;

.field protected btHelper:Lcom/futuredial/bluetooth/btcommhelper;

.field protected commuPolicy:Ljava/lang/String;

.field protected final iResumeCount:I

.field protected iResumeTime:I

.field private final iRetryTime:I

.field protected parsingPolicy:Ljava/lang/String;

.field protected retryTimes:I

.field public strSPhoneInfo:Ljava/lang/String;

.field protected uuid:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/ReadThread;->bResumeTimeout:Z

    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 4
    .parameter "tParam"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Lcom/futuredial/BaseThread;-><init>()V

    .line 19
    const-string v0, "ReadThread"

    iput-object v0, p0, Lcom/futuredial/ReadThread;->TAG:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/futuredial/ReadThread;->iRetryTime:I

    .line 21
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/futuredial/ReadThread;->BLUETOOTH_TIMEOUT:I

    .line 24
    iput-object v2, p0, Lcom/futuredial/ReadThread;->uuid:[Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/futuredial/ReadThread;->commuPolicy:Ljava/lang/String;

    .line 26
    iput v3, p0, Lcom/futuredial/ReadThread;->retryTimes:I

    .line 28
    iput v3, p0, Lcom/futuredial/ReadThread;->iResumeTime:I

    .line 29
    iput v1, p0, Lcom/futuredial/ReadThread;->iResumeCount:I

    .line 31
    iput-boolean v3, p0, Lcom/futuredial/ReadThread;->bPopResume:Z

    .line 34
    iput-boolean v3, p0, Lcom/futuredial/ReadThread;->bResumeCancel:Z

    .line 36
    const-string v0, "Unkown XXX"

    iput-object v0, p0, Lcom/futuredial/ReadThread;->strSPhoneInfo:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ReadThread;->parsingPolicy:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->btDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 45
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->context:Landroid/content/Context;

    .line 46
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->uuid:[Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->uuid:[Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/futuredial/bluetooth/btcommhelper;

    iget-object v1, p0, Lcom/futuredial/ReadThread;->btDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p1, Lcom/futuredial/publicobj/TaskParameter;->uiHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/futuredial/bluetooth/btcommhelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    .line 48
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuPolicy:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->commuPolicy:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/futuredial/publicobj/TaskParameter;->retryTimes:I

    iput v0, p0, Lcom/futuredial/ReadThread;->retryTimes:I

    .line 50
    iget v0, p1, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    iput v0, p0, Lcom/futuredial/ReadThread;->contentType:I

    .line 51
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->uiHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    .line 53
    sget-object v0, Lcom/futuredial/ReadThread;->readHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v0, p0}, Lcom/futuredial/BaseThread$MyThreadHandler;->SetInterface(Lcom/futuredial/HANDLEMSG;)V

    .line 57
    sput-boolean v3, Lcom/futuredial/ReadThread;->bResumeTimeout:Z

    .line 58
    iput-boolean v3, p0, Lcom/futuredial/ReadThread;->bResumeCancel:Z

    .line 60
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->strSPhoneInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->strSPhoneInfo:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->pPara:Lcom/futuredial/publicobj/TaskParameter$ParserParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ParserParameters;->parserPolicy:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/ReadThread;->parsingPolicy:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public Close()V
    .locals 6

    .prologue
    .line 209
    const-string v1, "ReadThread"

    const-string v2, "Begin Close Bluetooth."

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v1}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    sget v1, Lcom/futuredial/ReadThread;->CancelFlag:I

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x196

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :cond_1
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v0}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    goto :goto_0
.end method

.method public Close(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "b"

    .prologue
    .line 223
    const-string v1, "ReadThread"

    const-string v2, "Begin Close Bluetooth."

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v1}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_0
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    sget v1, Lcom/futuredial/ReadThread;->CancelFlag:I

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x196

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    :cond_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v0}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    goto :goto_0
.end method

.method protected DoComm()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public declared-synchronized GetExitDotask()Z
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/futuredial/ReadThread;->CancelFlag:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/ReadThread;->bExitThread:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OpenPort()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, Ret:I
    iget-object v2, p0, Lcom/futuredial/ReadThread;->uuid:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 119
    .local v1, id:Ljava/util/UUID;
    iget-object v2, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v2, v1}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    move-result v0

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/futuredial/ReadThread;->ASSERT(II)V

    .line 121
    if-eqz v0, :cond_0

    .line 123
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x199

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x196

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return v0
.end method

.method public OpenPort(Ljava/util/UUID;)I
    .locals 6
    .parameter "uID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, Ret:I
    iget-object v1, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v1, p1}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    move-result v0

    .line 134
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/futuredial/ReadThread;->ASSERT(II)V

    .line 135
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Lcom/futuredial/CommonException;

    invoke-direct {v1}, Lcom/futuredial/CommonException;-><init>()V

    throw v1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x199

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x196

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return v0
.end method

.method public OpenPort(Ljava/util/UUID;Z)I
    .locals 6
    .parameter "uID"
    .parameter "bSendMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lcom/futuredial/bluetooth/ExceptionForUI;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, Ret:I
    iget-object v1, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v1, p1}, Lcom/futuredial/bluetooth/btcommhelper;->Open(Ljava/util/UUID;)I

    move-result v0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/futuredial/ReadThread;->ASSERT(II)V

    .line 150
    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lcom/futuredial/CommonException;

    invoke-direct {v1}, Lcom/futuredial/CommonException;-><init>()V

    throw v1

    .line 154
    :cond_0
    if-eqz p2, :cond_1

    .line 156
    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x199

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x196

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    :cond_1
    return v0
.end method

.method public Quit()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ReadThread;->bExitThread:Ljava/lang/Boolean;

    .line 109
    invoke-super {p0}, Lcom/futuredial/BaseThread;->Quit()V

    .line 110
    return-void
.end method

.method protected abstract SetIsCompleted()V
.end method

.method protected doTask()V
    .locals 10

    .prologue
    const/16 v9, 0x69

    const/16 v8, 0x67

    const/16 v7, 0x65

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    const/4 v1, 0x1

    .line 245
    .local v1, iCurTime:I
    :cond_0
    iput v5, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    .line 246
    iput-boolean v5, p0, Lcom/futuredial/ReadThread;->bPopResume:Z

    .line 247
    iget-boolean v2, p0, Lcom/futuredial/ReadThread;->bResumeCancel:Z

    if-eqz v2, :cond_2

    .line 291
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/futuredial/ReadThread;->Close()V

    .line 293
    iget v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-nez v2, :cond_7

    .line 295
    const-string v2, "ReadThread"

    const-string v3, "Read Thread Success!!"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/futuredial/ReadThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v2, v7, v5, v5}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    .line 303
    :goto_1
    return-void

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/ReadThread;->DoComm()V

    .line 253
    sget v2, Lcom/futuredial/ReadThread;->CancelFlag:I

    if-nez v2, :cond_3

    .line 255
    const/4 v2, 0x4

    iput v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    goto :goto_0

    .line 258
    :cond_3
    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    iget v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-eqz v2, :cond_4

    .line 260
    sput-boolean v6, Lcom/futuredial/ReadThread;->bResumeTimeout:Z

    .line 261
    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x194

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 264
    :cond_4
    iget v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-ne v2, v8, :cond_5

    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    iput-boolean v6, p0, Lcom/futuredial/ReadThread;->bPopResume:Z

    .line 268
    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x193

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    :goto_2
    iget-boolean v2, p0, Lcom/futuredial/ReadThread;->bPopResume:Z

    if-eqz v2, :cond_6

    .line 282
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 270
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    iget v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-ne v2, v9, :cond_1

    .line 272
    iput-boolean v6, p0, Lcom/futuredial/ReadThread;->bPopResume:Z

    .line 273
    iget-object v2, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x19b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 289
    :cond_6
    iget v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-eq v2, v8, :cond_0

    iget v2, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-eq v2, v9, :cond_0

    goto :goto_0

    .line 300
    :cond_7
    const-string v2, "ReadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read Thread fail!! Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v2, Lcom/futuredial/ReadThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    iget v3, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    invoke-virtual {v2, v7, v6, v3}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    goto/16 :goto_1
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :pswitch_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ReadThread;->bExitThread:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
    .end packed-switch
.end method

.method public recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I
    .locals 5
    .parameter "buffer"
    .parameter "nTimeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    const-string v2, "Enter recv()"

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x0

    .line 191
    .local v1, res:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v2, p1, p2}, Lcom/futuredial/bluetooth/btcommhelper;->recv(Lcom/futuredial/bluetooth/ByteArrayData;I)I

    move-result v1

    .line 192
    if-eqz v1, :cond_0

    .line 194
    const-string v2, "ReadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***Received failure. Return Code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ReadThread"

    const-string v3, "ERROR: Cause:"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "Exit recv()"

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 205
    return v1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ReadThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 77
    iput v5, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/ReadThread;->doTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/futuredial/ReadThread;->Close()V

    .line 88
    sget-object v1, Lcom/futuredial/ReadThread;->readHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v1}, Lcom/futuredial/BaseThread$MyThreadHandler;->Quit()V

    .line 89
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/ReadThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 90
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    iput v4, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v1, "ReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Thread fail!! Error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/futuredial/ReadThread;->ParserHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    const/16 v2, 0x65

    iget v3, p0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/futuredial/BaseThread$MyThreadHandler;->SendMessage(III)Z

    goto :goto_0
.end method

.method public send([BI)I
    .locals 5
    .parameter "buffer"
    .parameter "nTimeOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    const-string v2, "Enter send()"

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    .line 168
    .local v1, res:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/ReadThread;->btHelper:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v2, p1, p2}, Lcom/futuredial/bluetooth/btcommhelper;->Send([BI)I

    move-result v1

    .line 169
    if-eqz v1, :cond_0

    .line 171
    const-string v2, "ReadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***Sent failure. Return Code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ReadThread"

    const-string v3, "ERROR: Cause:"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    new-instance v2, Lcom/futuredial/CommonException;

    invoke-direct {v2}, Lcom/futuredial/CommonException;-><init>()V

    throw v2

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "Exit send()"

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 182
    return v1
.end method

.method protected sendPBARMsg(I)V
    .locals 4
    .parameter "percent"

    .prologue
    .line 65
    sget v0, Lcom/futuredial/ReadThread;->CancelFlag:I

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/ReadThread;->uiHandler:Landroid/os/Handler;

    const/16 v2, 0x196

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    :cond_0
    return-void
.end method
