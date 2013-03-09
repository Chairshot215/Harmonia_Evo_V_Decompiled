.class Lcom/android/server/UiModeManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$200(Lcom/android/server/UiModeManagerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I
    invoke-static {v3, v4}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I

    move-result v3

    #setter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$1302(Lcom/android/server/UiModeManagerService;I)I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    const v4, 0xea60

    mul-int/2addr v3, v4

    #setter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$1302(Lcom/android/server/UiModeManagerService;I)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    #setter for: Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z
    invoke-static {v2, v0}, Lcom/android/server/UiModeManagerService;->access$1502(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$SettingsObserver;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
