.class Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    const/16 v3, 0x1fd

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
