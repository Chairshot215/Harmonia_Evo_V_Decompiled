.class public Lcom/futuredial/service/DMIService;
.super Landroid/app/Service;
.source "DMIService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/DMIService$DMIServiceBinder;
    }
.end annotation


# instance fields
.field private DMISrvBinder:Lcom/futuredial/service/DMISrvInterface;

.field TAG:Ljava/lang/String;

.field m_function_modules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/service/DMIFunctionModule;",
            ">;"
        }
    .end annotation
.end field

.field m_localBT:Landroid/bluetooth/BluetoothAdapter;

.field m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

.field m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

.field m_rwModule:Lcom/futuredial/service/DMIRWModule;

.field m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

.field m_this:Landroid/content/Context;

.field m_uiActivity:Lcom/futuredial/ui/DMIUI;

.field m_uiHandler:Lcom/futuredial/ui/UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    .line 35
    iput-object p0, p0, Lcom/futuredial/service/DMIService;->m_this:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lcom/futuredial/service/DMIService;->m_uiActivity:Lcom/futuredial/ui/DMIUI;

    .line 37
    iput-object v1, p0, Lcom/futuredial/service/DMIService;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    .line 40
    const-string v0, "[DMI service]"

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/futuredial/service/DMIService$DMIServiceBinder;

    invoke-direct {v0, p0}, Lcom/futuredial/service/DMIService$DMIServiceBinder;-><init>(Lcom/futuredial/service/DMIService;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->DMISrvBinder:Lcom/futuredial/service/DMISrvInterface;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/futuredial/service/DMIBTScanModule;

    invoke-direct {v0}, Lcom/futuredial/service/DMIBTScanModule;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    .line 46
    new-instance v0, Lcom/futuredial/service/DMIBTPairModule;

    invoke-direct {v0}, Lcom/futuredial/service/DMIBTPairModule;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    .line 47
    new-instance v0, Lcom/futuredial/service/DMIBTQueryModule;

    invoke-direct {v0}, Lcom/futuredial/service/DMIBTQueryModule;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

    .line 48
    new-instance v0, Lcom/futuredial/service/DMIRWModule;

    invoke-direct {v0}, Lcom/futuredial/service/DMIRWModule;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIService;->m_rwModule:Lcom/futuredial/service/DMIRWModule;

    .line 98
    return-void
.end method


# virtual methods
.method protected InitService()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service start ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_scanModule:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_pairModule:Lcom/futuredial/service/DMIBTPairModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_queryModule:Lcom/futuredial/service/DMIBTQueryModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_rwModule:Lcom/futuredial/service/DMIRWModule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/futuredial/service/DMIService;->init_function_modules()V

    .line 58
    return-void
.end method

.method protected UninitService()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->TAG:Ljava/lang/String;

    const-string v1, " *** DMI service end ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/futuredial/service/DMIService;->finalize_function__modules()V

    .line 69
    return-void
.end method

.method public finalize_function__modules()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIFunctionModule;

    invoke-virtual {v1}, Lcom/futuredial/service/DMIFunctionModule;->finalize_module()V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public init_function_modules()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIFunctionModule;

    invoke-virtual {v1, p0}, Lcom/futuredial/service/DMIFunctionModule;->set_service_handler(Landroid/app/Service;)V

    .line 87
    iget-object v1, p0, Lcom/futuredial/service/DMIService;->m_function_modules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIFunctionModule;

    invoke-virtual {v1}, Lcom/futuredial/service/DMIFunctionModule;->init_module()V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/futuredial/service/DMIService;->DMISrvBinder:Lcom/futuredial/service/DMISrvInterface;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    invoke-virtual {p0}, Lcom/futuredial/service/DMIService;->InitService()V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    invoke-virtual {p0}, Lcom/futuredial/service/DMIService;->UninitService()V

    .line 75
    return-void
.end method
