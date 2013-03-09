.class public Lcom/futuredial/service/DMIRWModule;
.super Lcom/futuredial/service/DMIFunctionModule;
.source "DMIRWModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/DMIRWModule$1;,
        Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;,
        Lcom/futuredial/service/DMIRWModule$DeleteWorker;
    }
.end annotation


# static fields
.field public static final DMI_CLEAN_END_ACTION:I = 0x19e

.field public static final DMI_RW_ACCESS_NEEDPW:I = 0x19b

.field public static final DMI_RW_CANCELABLE:I = 0x199

.field public static final DMI_RW_CONN_LOST:I = 0x19c

.field public static final DMI_RW_MODS_END_ACTION:I = 0x195

.field public static final DMI_RW_MOD_END_ACTION:I = 0x192

.field public static final DMI_RW_MOD_START_ACTION:I = 0x191

.field public static final DMI_RW_PB_MISMATCH_ACTION:I = 0x198

.field public static final DMI_RW_QUIT_ACTION:I = 0x197

.field public static final DMI_RW_RESUME_ACTION:I = 0x193

.field public static final DMI_RW_RESUME_TIMEOUT_ACTION:I = 0x194

.field public static final DMI_RW_UI_PBAR_FW_ACTION:I = 0x196

.field public static final DMI_RW_UNCANCELABLE:I = 0x19a

.field public static final DMI_RW_WRITEN_COUNT:I = 0x19d


# instance fields
.field m_rwRec:Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/futuredial/service/DMIFunctionModule;-><init>()V

    .line 51
    new-instance v0, Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;-><init>(Lcom/futuredial/service/DMIRWModule;Lcom/futuredial/service/DMIRWModule$1;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIRWModule;->m_rwRec:Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;

    .line 100
    return-void
.end method


# virtual methods
.method public dmi_clean_module(Lcom/futuredial/service/DMIPhone;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "phoneinfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/futuredial/service/DMIPhone;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, rmModules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;

    invoke-direct {v0, p0}, Lcom/futuredial/service/DMIRWModule$DeleteWorker;-><init>(Lcom/futuredial/service/DMIRWModule;)V

    .line 82
    .local v0, son:Lcom/futuredial/service/DMIRWModule$DeleteWorker;
    iput-object p1, v0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->phoneinfo:Lcom/futuredial/service/DMIPhone;

    .line 83
    iput-object p2, v0, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->rmModules:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v0}, Lcom/futuredial/service/DMIRWModule$DeleteWorker;->start()V

    .line 85
    return-void
.end method

.method public dmi_start_rw(Lcom/futuredial/DmiHandler;Lcom/futuredial/service/DMIPhone;Lcom/futuredial/ui/UIHandler;)V
    .locals 1
    .parameter "worker"
    .parameter "phoneinfo"
    .parameter "h"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/futuredial/service/DMIRWModule;->m_service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p3}, Lcom/futuredial/DmiHandler;->FromUIParam(Lcom/futuredial/service/DMIPhone;Landroid/content/Context;Landroid/os/Handler;)V

    .line 56
    invoke-virtual {p1}, Lcom/futuredial/DmiHandler;->ThreadDoTask()V

    .line 57
    return-void
.end method

.method public finalize_module()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/futuredial/service/DMIRWModule;->m_rwRec:Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/futuredial/service/DMIRWModule;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    return-void
.end method

.method public init_module()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/futuredial/service/DMIRWModule;->m_rwRec:Lcom/futuredial/service/DMIRWModule$BluetoothBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/futuredial/service/DMIRWModule;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method
