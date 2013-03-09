.class Lcom/google/appinventor/components/runtime/BluetoothServer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic val$functionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    #getter for: Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$000(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/BluetoothReflection;->accept(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    #getter for: Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    #getter for: Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->access$100(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->StopAccepting()V

    throw v0
.end method
