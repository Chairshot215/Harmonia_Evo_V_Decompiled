.class Lcom/android/settings/deviceinfo/Memory$3;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->access$200(Lcom/android/settings/deviceinfo/Memory;)Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->invalidate()V

    .line 547
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->access$200(Lcom/android/settings/deviceinfo/Memory;)Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->measureExternal()V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->access$200(Lcom/android/settings/deviceinfo/Memory;)Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->measureInternal()V

    .line 551
    return-void
.end method
