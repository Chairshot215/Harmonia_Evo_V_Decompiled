.class Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;
.super Ljava/lang/Thread;
.source "btcommhelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/bluetooth/btcommhelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/bluetooth/btcommhelper;


# direct methods
.method constructor <init>(Lcom/futuredial/bluetooth/btcommhelper;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->this$0:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 270
    :goto_0
    iget-object v3, p0, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->this$0:Lcom/futuredial/bluetooth/btcommhelper;

    #getter for: Lcom/futuredial/bluetooth/btcommhelper;->halt:Z
    invoke-static {v3}, Lcom/futuredial/bluetooth/btcommhelper;->access$000(Lcom/futuredial/bluetooth/btcommhelper;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 272
    iget-object v3, p0, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->this$0:Lcom/futuredial/bluetooth/btcommhelper;

    #getter for: Lcom/futuredial/bluetooth/btcommhelper;->bSendEnd:Z
    invoke-static {v3}, Lcom/futuredial/bluetooth/btcommhelper;->access$100(Lcom/futuredial/bluetooth/btcommhelper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 285
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    .local v0, ct:J
    iget-object v3, p0, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->this$0:Lcom/futuredial/bluetooth/btcommhelper;

    #getter for: Lcom/futuredial/bluetooth/btcommhelper;->currentTime:J
    invoke-static {v3}, Lcom/futuredial/bluetooth/btcommhelper;->access$200(Lcom/futuredial/bluetooth/btcommhelper;)J

    move-result-wide v3

    sub-long v3, v0, v3

    iget-object v5, p0, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->this$0:Lcom/futuredial/bluetooth/btcommhelper;

    #getter for: Lcom/futuredial/bluetooth/btcommhelper;->timeout:I
    invoke-static {v5}, Lcom/futuredial/bluetooth/btcommhelper;->access$300(Lcom/futuredial/bluetooth/btcommhelper;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 290
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 292
    :catch_1
    move-exception v2

    .line 294
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/futuredial/bluetooth/btcommhelper$MonitorThread;->this$0:Lcom/futuredial/bluetooth/btcommhelper;

    invoke-virtual {v3}, Lcom/futuredial/bluetooth/btcommhelper;->close()V
    :try_end_2
    .catch Lcom/futuredial/bluetooth/BluetoothException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 303
    :catch_2
    move-exception v2

    .line 305
    .local v2, e:Lcom/futuredial/bluetooth/BluetoothException;
    invoke-virtual {v2}, Lcom/futuredial/bluetooth/BluetoothException;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0           #ct:J
    .end local v2           #e:Lcom/futuredial/bluetooth/BluetoothException;
    :cond_2
    return-void
.end method
