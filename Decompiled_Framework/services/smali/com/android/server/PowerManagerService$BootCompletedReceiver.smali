.class final Lcom/android/server/PowerManagerService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->bootCompleted()V

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/HtcPowerSaver;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$400(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcPowerSaver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/HtcPowerSaver;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$400(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcPowerSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/HtcPowerSaver;->bootCompletedNotify()V

    :cond_0
    return-void
.end method
