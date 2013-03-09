.class Lcom/google/appinventor/components/runtime/NxtColorSensor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    const-string v1, ""

    #calls: Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$100(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChanged(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #setter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$202(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #calls: Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$1000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$1200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$1100(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    const-string v1, ""

    #calls: Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$300(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    iget-boolean v0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$400(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v2

    if-ge v0, v2, :cond_7

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$600(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    move-result-object v1

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$700(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRange()V

    :cond_4
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$800(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRange()V

    :cond_5
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$900(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRange()V

    :cond_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #setter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$602(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$State;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    goto :goto_0

    :cond_7
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    #getter for: Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->access$500(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v1

    if-le v0, v1, :cond_8

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    goto :goto_1
.end method
