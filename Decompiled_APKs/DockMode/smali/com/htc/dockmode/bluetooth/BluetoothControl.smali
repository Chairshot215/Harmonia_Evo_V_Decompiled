.class public Lcom/htc/dockmode/bluetooth/BluetoothControl;
.super Ljava/lang/Object;
.source "BluetoothControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/dockmode/bluetooth/BluetoothControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mInit:Z

    .line 23
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mActivity:Landroid/app/Activity;

    .line 24
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private startDeskDockService()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/htc/dockmode/bluetooth/DeskDockService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void
.end method

.method private stopDeskDockService()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcNaviPanel.deskdock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "deskdock_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    return-void
.end method


# virtual methods
.method public containDeskKitEvent()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v4, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v3

    .line 76
    :cond_1
    iget-object v4, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 78
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, category:Ljava/lang/String;
    const-string v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onDoDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mInit:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/BluetoothControl;->stopDeskDockService()V

    .line 70
    :cond_0
    return-void
.end method

.method public onDoInit1()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onDoInit2()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/dockmode/bluetooth/BluetoothControl;->containDeskKitEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/BluetoothControl;->mInit:Z

    .line 42
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/BluetoothControl;->startDeskDockService()V

    .line 44
    :cond_0
    return-void
.end method

.method public onDoPause()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onDoRefresh1()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onDoResume()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onDoStop()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public resetLayout()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 29
    return-void
.end method
