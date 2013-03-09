.class public Lcom/futuredial/DmiHandler;
.super Ljava/lang/Object;
.source "DmiHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field bExitFlag:Z

.field context:Landroid/content/Context;

.field itemArray:Lcom/futuredial/publicobj/ItemArray;

.field pThread:Lcom/futuredial/ParseThread;

.field psPolicy:Ljava/lang/String;

.field rThread:Lcom/futuredial/ReadThread;

.field tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

.field uiHandler:Landroid/os/Handler;

.field wThread:Lcom/futuredial/WriteThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "DmiHandler"

    iput-object v0, p0, Lcom/futuredial/DmiHandler;->TAG:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    .line 30
    iput-object v1, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    .line 31
    iput-object v1, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    .line 33
    new-instance v0, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v0}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    iput-object v0, p0, Lcom/futuredial/DmiHandler;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/futuredial/publicobj/TaskParameter;

    iput-object v0, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    .line 43
    iput-object v1, p0, Lcom/futuredial/DmiHandler;->context:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private GetTaskStatus()I
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, nTaskStatus:I
    iget-object v1, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    iget-object v1, v1, Lcom/futuredial/ReadThread;->Thread_isRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v0, 0x1

    .line 328
    .end local v0           #nTaskStatus:I
    :cond_0
    :goto_0
    return v0

    .line 321
    .restart local v0       #nTaskStatus:I
    :cond_1
    iget-object v1, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    iget-object v1, v1, Lcom/futuredial/ParseThread;->Thread_isRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    const/4 v0, 0x2

    goto :goto_0

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    iget-object v1, v1, Lcom/futuredial/WriteThread;->Thread_isRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private Init()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/futuredial/DmiHandler;->psPolicy:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/futuredial/serializer/ConfigReader;->GetSettingType(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v1

    .line 90
    .local v1, settingType:Lcom/futuredial/serializer/PhoneSetting$SettingType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/TaskParameter;->InitFromPhoneSetting(Lcom/futuredial/serializer/PhoneSetting$SettingType;)V

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method private WaitForTaskEnd(I)V
    .locals 6
    .parameter "nType"

    .prologue
    const/16 v5, 0x192

    const/4 v4, 0x0

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/futuredial/DmiHandler;->GetTaskStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    sget-boolean v1, Lcom/futuredial/ReadThread;->bResumeTimeout:Z

    if-eqz v1, :cond_1

    .line 271
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 272
    :catch_1
    move-exception v0

    .line 273
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-boolean v1, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v3, 0x197

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    :goto_2
    return-void

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/DmiHandler;->GetErrorCode()I

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/futuredial/BaseThread;->CancelFlag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 285
    iget-object v1, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    sget v3, Lcom/futuredial/WriteThread;->iWrittenCount:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private doOneContent(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 2
    .parameter "taskPara"

    .prologue
    .line 239
    const/4 v0, -0x1

    sput v0, Lcom/futuredial/BaseThread;->CancelFlag:I

    .line 240
    new-instance v0, Lcom/futuredial/WriteThread;

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v0, p1, v1}, Lcom/futuredial/WriteThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;Lcom/futuredial/publicobj/ItemArray;)V

    iput-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    .line 241
    const-string v0, "DmiHandler"

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    invoke-virtual {v1}, Lcom/futuredial/WriteThread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    invoke-virtual {v0}, Lcom/futuredial/WriteThread;->start()V

    .line 244
    new-instance v0, Lcom/futuredial/ParseThread;

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->itemArray:Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v0, p1, v1}, Lcom/futuredial/ParseThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;Lcom/futuredial/publicobj/ItemArray;)V

    iput-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    .line 245
    const-string v0, "DmiHandler"

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    invoke-virtual {v1}, Lcom/futuredial/ParseThread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    invoke-virtual {v0}, Lcom/futuredial/ParseThread;->start()V

    .line 248
    invoke-virtual {p0, p1}, Lcom/futuredial/DmiHandler;->StartReadThread(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 249
    return-void
.end method


# virtual methods
.method public CancelTask()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 298
    const-string v2, "DmiHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    invoke-virtual {v0, v1}, Lcom/futuredial/ReadThread;->SetCancelFlag(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    invoke-virtual {v0, v1}, Lcom/futuredial/ParseThread;->SetCancelFlag(I)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    invoke-virtual {v0, v1}, Lcom/futuredial/WriteThread;->SetCancelFlag(I)V

    .line 308
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public ClearResume()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/futuredial/ReadThread;->bPopResume:Z

    .line 230
    :cond_0
    return-void
.end method

.method public FromUIParam(Lcom/futuredial/service/DMIPhone;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .parameter "dmiph"
    .parameter "cont"
    .parameter "handler"

    .prologue
    .line 51
    iput-object p2, p0, Lcom/futuredial/DmiHandler;->context:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    .line 53
    new-instance v2, Lcom/futuredial/publicobj/ParametersFromUI;

    invoke-direct {v2}, Lcom/futuredial/publicobj/ParametersFromUI;-><init>()V

    .line 54
    .local v2, para:Lcom/futuredial/publicobj/ParametersFromUI;
    iget-object v3, p1, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v3, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    iput-object v3, v2, Lcom/futuredial/publicobj/ParametersFromUI;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 55
    iput-object p3, v2, Lcom/futuredial/publicobj/ParametersFromUI;->uiHandler:Landroid/os/Handler;

    .line 56
    iput-object p2, v2, Lcom/futuredial/publicobj/ParametersFromUI;->context:Landroid/content/Context;

    .line 57
    iget-object v3, p1, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/futuredial/publicobj/ParametersFromUI;->strSPhoneInfo:Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lcom/futuredial/service/DMIPhone;->m_phoneProcType:Ljava/lang/String;

    iput-object v3, p0, Lcom/futuredial/DmiHandler;->psPolicy:Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p1, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 62
    iget-object v3, p1, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 63
    .local v0, aa:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-boolean v3, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bSelected:Z

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, v2, Lcom/futuredial/publicobj/ParametersFromUI;->sParserPolicy:[Ljava/lang/String;

    iget-object v4, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_policy:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 66
    iget-object v3, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    iput-object v3, v2, Lcom/futuredial/publicobj/ParametersFromUI;->strAccountName:Ljava/lang/String;

    .line 67
    iget-object v3, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    iput-object v3, v2, Lcom/futuredial/publicobj/ParametersFromUI;->strAccountType:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    iget-object v4, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/futuredial/publicobj/TaskParameter;

    iget-object v6, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/futuredial/config/Constants;->supportedModXMLmarks:[Ljava/lang/String;

    iget-object v8, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-direct {v5, v6, v7, v2}, Lcom/futuredial/publicobj/TaskParameter;-><init>(ILjava/lang/String;Lcom/futuredial/publicobj/ParametersFromUI;)V

    aput-object v5, v3, v4

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0           #aa:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    return-void
.end method

.method public GetErrorCode()I
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    iget v0, v0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "DmiHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    iget v2, v2, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    iget v0, v0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    .line 357
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    iget v0, v0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "DmiHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    iget v2, v2, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    iget v0, v0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    iget v0, v0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    if-eqz v0, :cond_2

    .line 346
    const-string v0, "DmiHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    iget v2, v2, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    iget v0, v0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    iget v0, v0, Lcom/futuredial/ReadThread;->ThreadErrorCode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->pThread:Lcom/futuredial/ParseThread;

    iget v0, v0, Lcom/futuredial/ParseThread;->ThreadErrorCode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    iget v0, v0, Lcom/futuredial/WriteThread;->ThreadErrorCode:I

    if-nez v0, :cond_3

    .line 353
    const-string v0, "DmiHandler"

    const-string v1, "all success "

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetCancelPopupDialog()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    sput-boolean v0, Lcom/futuredial/BaseThread;->bPopupCancel:Z

    .line 218
    return-void
.end method

.method public SetCancelPopupDialogNo()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/BaseThread;->bPopupCancel:Z

    .line 222
    return-void
.end method

.method public SetExitAllThread()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 362
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v2, 0x19a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    invoke-virtual {p0}, Lcom/futuredial/DmiHandler;->ClearResume()V

    .line 364
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    iput-boolean v3, v0, Lcom/futuredial/ReadThread;->bResumeCancel:Z

    .line 368
    :cond_0
    iput-boolean v3, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    .line 369
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/ReadThread;->bResumeTimeout:Z

    .line 370
    return-void
.end method

.method StartReadThread(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 6
    .parameter "taskPara"

    .prologue
    .line 108
    :try_start_0
    iget-object v3, p1, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v3, v3, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuClassName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/futuredial/publicobj/TaskParameter;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 111
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/futuredial/ReadThread;

    iput-object v3, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    .line 112
    const-string v3, "DmiHandler"

    iget-object v4, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    invoke-virtual {v4}, Lcom/futuredial/ReadThread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/futuredial/DmiHandler;->rThread:Lcom/futuredial/ReadThread;

    invoke-virtual {v3}, Lcom/futuredial/ReadThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DmiHandler"

    const-string v4, "ERROR: Cause:"

    invoke-static {v3, v4}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    invoke-virtual {p0}, Lcom/futuredial/DmiHandler;->CancelTask()V

    goto :goto_0
.end method

.method public ThreadDoTask()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/futuredial/DmiHandler$1;

    invoke-direct {v0, p0}, Lcom/futuredial/DmiHandler$1;-><init>(Lcom/futuredial/DmiHandler;)V

    invoke-virtual {v0}, Lcom/futuredial/DmiHandler$1;->start()V

    .line 133
    return-void
.end method

.method doOneTask(I)V
    .locals 6
    .parameter "nModel"

    .prologue
    const/4 v5, 0x0

    .line 137
    sget-object v2, Lcom/futuredial/syncml/ItemStorage;->processedLocURI:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 139
    const-wide/16 v0, 0x0

    .line 140
    .local v0, iCurTime:J
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/futuredial/DmiHandler;->GetTaskStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x191

    invoke-virtual {v3, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x196

    invoke-virtual {v3, v4, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lcom/futuredial/DmiHandler;->doOneContent(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/futuredial/config/Constants;->supportedModXMLmarks:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/futuredial/DmiHandler;->WaitForTaskEnd(I)V

    .line 149
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x19a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/futuredial/config/Constants;->supportedModXMLmarks:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/futuredial/config/Logger;->p(Ljava/lang/String;)V

    .line 151
    if-nez p1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->wThread:Lcom/futuredial/WriteThread;

    iget-boolean v2, v2, Lcom/futuredial/WriteThread;->mismatch:Z

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v4, 0x198

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    :cond_0
    sget-object v2, Lcom/futuredial/syncml/ItemStorage;->processedLocURI:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 159
    return-void
.end method

.method public doTask()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 167
    invoke-direct {p0}, Lcom/futuredial/DmiHandler;->Init()V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 172
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    :goto_1
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 175
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0, v2}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 178
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/futuredial/DmiHandler;->GetErrorCode()I

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/futuredial/BaseThread;->CancelFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter;->rPara:Lcom/futuredial/publicobj/TaskParameter$ReadParameters;

    iget-object v0, v0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuClassName:Ljava/lang/String;

    const-string v1, "com.futuredial.SyncML12ReadThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->tpTaskPara:[Lcom/futuredial/publicobj/TaskParameter;

    aget-object v0, v0, v2

    iget v1, v0, Lcom/futuredial/publicobj/TaskParameter;->retryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/futuredial/publicobj/TaskParameter;->retryTimes:I

    .line 187
    invoke-virtual {p0, v2}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 189
    :cond_2
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-nez v0, :cond_0

    .line 192
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 193
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 196
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 199
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/futuredial/DmiHandler;->doOneTask(I)V

    .line 202
    iget-boolean v0, p0, Lcom/futuredial/DmiHandler;->bExitFlag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/DmiHandler;->uiHandler:Landroid/os/Handler;

    const/16 v2, 0x195

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
