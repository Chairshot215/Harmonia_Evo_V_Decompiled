.class Lcom/android/providers/htcCheckin/UpdateReceiver$3;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$3;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 382
    const-string v7, "ro.product.device"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 385
    .local v1, bVZWDev:Z
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "lexikon"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "mecha"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "vigor"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "blissc"

    aput-object v8, v3, v7

    .line 386
    .local v3, deviceCheckList:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 387
    .local v2, dev:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 388
    const/4 v1, 0x1

    .line 386
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v2           #dev:Ljava/lang/String;
    :cond_1
    const-string v7, "htcCheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The device is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", perform --wipe_data_vzw_hpst:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-eqz v1, :cond_2

    .line 392
    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->runWipe_data_vzw_hpst(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$1000(Landroid/content/Context;)V

    .line 393
    :cond_2
    return-void
.end method
