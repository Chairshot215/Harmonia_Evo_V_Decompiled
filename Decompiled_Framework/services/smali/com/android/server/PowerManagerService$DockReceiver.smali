.class final Lcom/android/server/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->dockStateChanged(I)V
    invoke-static {v4, v0}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;I)V

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    if-eq v0, v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    :goto_0
    #setter for: Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z
    invoke-static {v4, v2}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDeskModeEnabled:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)V

    iget-object v2, p0, Lcom/android/server/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method
