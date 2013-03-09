.class public Lcom/htc/taskmanager/SettingsManager$ThresholdSettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThresholdSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/htc/taskmanager/SettingsManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/taskmanager/SettingsManager$ThresholdSettingObserver;->this$0:Lcom/htc/taskmanager/SettingsManager;

    .line 33
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 38
    iget-object v0, p0, Lcom/htc/taskmanager/SettingsManager$ThresholdSettingObserver;->this$0:Lcom/htc/taskmanager/SettingsManager;

    #getter for: Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/taskmanager/SettingsManager;->access$000(Lcom/htc/taskmanager/SettingsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/taskmanager/MemoryMonitor;->checkMemory()V

    .line 39
    return-void
.end method
