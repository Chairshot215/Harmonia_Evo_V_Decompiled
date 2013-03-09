.class public Lcom/futuredial/WriteThread;
.super Lcom/futuredial/BaseThread;
.source "WriteThread.java"

# interfaces
.implements Lcom/futuredial/HANDLEMSG;


# static fields
.field public static iTypeErrorCount:I

.field public static iWrittenCount:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bLastPacket:Ljava/lang/Boolean;

.field protected itemArray:Lcom/futuredial/publicobj/ItemArray;

.field public mismatch:Z

.field private pimManager:Lcom/futuredial/pim/CPimMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput v0, Lcom/futuredial/WriteThread;->iWrittenCount:I

    .line 20
    sput v0, Lcom/futuredial/WriteThread;->iTypeErrorCount:I

    return-void
.end method

.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 4
    .parameter "tParam"
    .parameter "itemArray"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lcom/futuredial/BaseThread;-><init>()V

    .line 17
    const-string v0, "WriteThread"

    iput-object v0, p0, Lcom/futuredial/WriteThread;->TAG:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    .line 24
    iput-boolean v3, p0, Lcom/futuredial/WriteThread;->mismatch:Z

    .line 26
    iput-object v1, p0, Lcom/futuredial/WriteThread;->pimManager:Lcom/futuredial/pim/CPimMgr;

    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/WriteThread;->bLastPacket:Ljava/lang/Boolean;

    .line 33
    iput-object p2, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    .line 34
    iget-object v0, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v0}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 35
    iget v0, p1, Lcom/futuredial/publicobj/TaskParameter;->contentType:I

    iput v0, p0, Lcom/futuredial/WriteThread;->contentType:I

    .line 36
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/futuredial/WriteThread;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/futuredial/pim/CPimMgr;

    iget-object v1, p0, Lcom/futuredial/WriteThread;->context:Landroid/content/Context;

    iget v2, p0, Lcom/futuredial/WriteThread;->contentType:I

    invoke-direct {v0, v1, v2}, Lcom/futuredial/pim/CPimMgr;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/futuredial/WriteThread;->pimManager:Lcom/futuredial/pim/CPimMgr;

    .line 38
    iget-object v0, p0, Lcom/futuredial/WriteThread;->pimManager:Lcom/futuredial/pim/CPimMgr;

    iget-object v1, p1, Lcom/futuredial/publicobj/TaskParameter;->strAccountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/futuredial/publicobj/TaskParameter;->strAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/CPimMgr;->SetAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/WriteThread;->bLastPacket:Ljava/lang/Boolean;

    .line 41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/WriteThread;->bExitThread:Ljava/lang/Boolean;

    .line 42
    iget-object v0, p1, Lcom/futuredial/publicobj/TaskParameter;->uiHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/futuredial/WriteThread;->uiHandler:Landroid/os/Handler;

    .line 43
    iput v3, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 45
    sget-object v0, Lcom/futuredial/WriteThread;->writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v0, p0}, Lcom/futuredial/BaseThread$MyThreadHandler;->SetInterface(Lcom/futuredial/HANDLEMSG;)V

    .line 50
    iput-boolean v3, p0, Lcom/futuredial/WriteThread;->mismatch:Z

    .line 51
    sput v3, Lcom/futuredial/WriteThread;->iWrittenCount:I

    .line 52
    sput v3, Lcom/futuredial/WriteThread;->iTypeErrorCount:I

    .line 53
    return-void
.end method

.method private declared-synchronized GetLastFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/futuredial/WriteThread;->bLastPacket:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized SetLastFlag(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "bFlag"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/futuredial/WriteThread;->bLastPacket:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public ClearWrittenData()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/futuredial/WriteThread;->pimManager:Lcom/futuredial/pim/CPimMgr;

    iget v1, p0, Lcom/futuredial/WriteThread;->contentType:I

    invoke-virtual {v0, v1}, Lcom/futuredial/pim/CPimMgr;->DeleteData(I)I

    .line 186
    return-void
.end method

.method public Quit()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v0}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 89
    const-string v0, "WriteThread"

    const-string v1, "ExitThread exit Quit."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/WriteThread;->bExitThread:Ljava/lang/Boolean;

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/WriteThread;->bLastPacket:Ljava/lang/Boolean;

    .line 103
    invoke-super {p0}, Lcom/futuredial/BaseThread;->Quit()V

    .line 104
    return-void
.end method

.method public SetCancelFlag(I)V
    .locals 1
    .parameter "nFlag"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/futuredial/BaseThread;->SetCancelFlag(I)V

    .line 60
    sget v0, Lcom/futuredial/WriteThread;->CancelFlag:I

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/WriteThread;->bPopupCancel:Z

    .line 65
    :cond_0
    return-void
.end method

.method public doWriteData()I
    .locals 11

    .prologue
    const/16 v10, 0x4e24

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, ret:I
    iget-object v5, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v5}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v0

    .line 148
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_7

    .line 150
    sget v5, Lcom/futuredial/WriteThread;->CancelFlag:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/futuredial/WriteThread;->bExitThread:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    :cond_0
    :goto_1
    return v4

    .line 152
    :cond_1
    iget-object v5, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v5, v1}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v2

    .line 153
    .local v2, objItem:Lcom/futuredial/publicobj/Item;
    const-string v5, "WriteThread"

    const-string v6, "begin to write..."

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcom/futuredial/WriteThread;->pimManager:Lcom/futuredial/pim/CPimMgr;

    iget v6, p0, Lcom/futuredial/WriteThread;->contentType:I

    invoke-virtual {v5, v6, v2, v4}, Lcom/futuredial/pim/CPimMgr;->addNewOnePim(ILcom/futuredial/publicobj/Item;Z)I

    move-result v3

    .line 155
    const/16 v5, 0x4e42

    if-ne v5, v3, :cond_2

    iget-boolean v5, p0, Lcom/futuredial/WriteThread;->mismatch:Z

    if-nez v5, :cond_2

    .line 157
    const-string v5, "WriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*****FOUND MISMATCH,ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-boolean v9, p0, Lcom/futuredial/WriteThread;->mismatch:Z

    .line 160
    :cond_2
    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lcom/futuredial/WriteThread;->ASSERT(II)V

    .line 162
    iget-object v5, p0, Lcom/futuredial/WriteThread;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-virtual {v5, v1}, Lcom/futuredial/publicobj/ItemArray;->RemoveItem(I)Z

    .line 164
    if-eq v3, v10, :cond_3

    if-eq v3, v9, :cond_3

    .line 166
    sget v5, Lcom/futuredial/WriteThread;->iWrittenCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/futuredial/WriteThread;->iWrittenCount:I

    .line 167
    iget-object v5, p0, Lcom/futuredial/WriteThread;->uiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/futuredial/WriteThread;->uiHandler:Landroid/os/Handler;

    const/16 v7, 0x19d

    sget v8, Lcom/futuredial/WriteThread;->iWrittenCount:I

    invoke-virtual {v6, v7, v8, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    :cond_3
    if-ne v3, v10, :cond_4

    .line 171
    sget v5, Lcom/futuredial/WriteThread;->iTypeErrorCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/futuredial/WriteThread;->iTypeErrorCount:I

    .line 174
    :cond_4
    const/16 v5, 0x4e33

    if-eq v3, v5, :cond_5

    if-ne v3, v9, :cond_6

    :cond_5
    move v4, v3

    .line 176
    goto :goto_1

    .line 148
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2           #objItem:Lcom/futuredial/publicobj/Item;
    :cond_7
    move v4, v3

    .line 180
    goto :goto_1
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :pswitch_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 130
    const-string v0, "WriteThread"

    const-string v1, "Parser over message recved."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/futuredial/WriteThread;->SetLastFlag(Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_0
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/WriteThread;->bExitThread:Ljava/lang/Boolean;

    .line 137
    const-string v0, "WriteThread"

    const-string v1, "Parser failed message recved."

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized psClientSyncBegin()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/futuredial/WriteThread;->contentType:I

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "psclient.intent.action.sync_begin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/futuredial/WriteThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized psClientSyncEnd()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/futuredial/WriteThread;->contentType:I

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "psclient.intent.action.sync_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/futuredial/WriteThread;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v7, 0x4e33

    const/4 v6, 0x1

    .line 191
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/WriteThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, Ret:I
    invoke-virtual {p0}, Lcom/futuredial/WriteThread;->psClientSyncBegin()V

    .line 196
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/WriteThread;->bExitThread:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    sget-boolean v2, Lcom/futuredial/WriteThread;->bPopupCancel:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    .line 202
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 260
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WriteThread"

    const-string v3, "Write data Exception"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v2, 0x3

    iput v2, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 265
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    sget v2, Lcom/futuredial/WriteThread;->CancelFlag:I

    if-nez v2, :cond_2

    .line 267
    iput v9, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 268
    const-string v2, "WriteThread"

    const-string v3, "end  Write thread."

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/futuredial/WriteThread;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/WriteThread;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x196

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    const-string v2, "WriteThread"

    const-string v3, "ExitThread exit Write thread."

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget v2, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/futuredial/WriteThread;->GetLastFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 278
    :cond_3
    const-string v2, "WriteThread"

    const-string v3, "ClearWrittenData begin"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/futuredial/WriteThread;->ClearWrittenData()V

    .line 280
    const-string v2, "WriteThread"

    const-string v3, "ClearWrittenData end"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_4
    invoke-virtual {p0}, Lcom/futuredial/WriteThread;->psClientSyncEnd()V

    .line 284
    sget-object v2, Lcom/futuredial/WriteThread;->writeHandler:Lcom/futuredial/BaseThread$MyThreadHandler;

    invoke-virtual {v2}, Lcom/futuredial/BaseThread$MyThreadHandler;->Quit()V

    .line 285
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/WriteThread;->Thread_isRunning:Ljava/lang/Boolean;

    .line 286
    return-void

    .line 210
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/futuredial/WriteThread;->doWriteData()I

    move-result v0

    .line 211
    if-eq v0, v7, :cond_6

    if-ne v0, v6, :cond_7

    .line 213
    :cond_6
    const/16 v2, 0x4e33

    iput v2, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 219
    :cond_7
    const-wide/16 v2, 0x32

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 226
    :goto_2
    :try_start_5
    sget v2, Lcom/futuredial/WriteThread;->CancelFlag:I

    if-nez v2, :cond_8

    .line 228
    const/4 v2, 0x4

    iput v2, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 229
    const-string v2, "WriteThread"

    const-string v3, "Cancel exit Write thread."

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :catch_2
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_8
    invoke-direct {p0}, Lcom/futuredial/WriteThread;->GetLastFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    const-string v2, "WriteThread"

    const-string v3, "Last Flag exit Write thread."

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/futuredial/WriteThread;->doWriteData()I

    move-result v0

    .line 237
    iget-object v2, p0, Lcom/futuredial/WriteThread;->pimManager:Lcom/futuredial/pim/CPimMgr;

    iget v3, p0, Lcom/futuredial/WriteThread;->contentType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/futuredial/pim/CPimMgr;->addNewOnePim(ILcom/futuredial/publicobj/Item;Z)I

    .line 238
    const/4 v2, 0x0

    iput v2, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    .line 239
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/WriteThread;->bExitThread:Ljava/lang/Boolean;

    .line 241
    :cond_9
    if-ne v0, v7, :cond_a

    .line 243
    const/16 v2, 0x4e33

    iput v2, p0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    goto/16 :goto_1

    .line 246
    :cond_a
    :goto_3
    sget-boolean v2, Lcom/futuredial/WriteThread;->bPopupCancel:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v2, :cond_0

    .line 250
    const-wide/16 v2, 0xc8

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 252
    :catch_3
    move-exception v1

    .line 254
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3
.end method
