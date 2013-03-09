.class final Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsReceiveReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/server/DeviceStorageMonitorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$SmsReceiveReceiver;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    #calls: Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V

    return-void
.end method
