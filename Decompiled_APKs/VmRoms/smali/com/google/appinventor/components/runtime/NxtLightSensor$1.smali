.class Lcom/google/appinventor/components/runtime/NxtLightSensor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtLightSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    const-string v1, ""

    #calls: Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    iget-boolean v0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v2

    if-ge v0, v2, :cond_5

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRange()V

    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRange()V

    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRange()V

    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #setter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$302(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$State;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #calls: Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$700(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$900(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$800(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtLightSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I

    move-result v1

    if-le v0, v1, :cond_6

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    goto :goto_0
.end method
