.class Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtTouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    const-string v1, ""

    #calls: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->PRESSED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->PRESSED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Pressed()V

    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->RELEASED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Released()V

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #setter for: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$102(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #calls: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->RELEASED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    goto :goto_0
.end method
