.class public Lcom/google/appinventor/components/runtime/NxtDrive;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final MODE_BRAKE:I = 0x2

.field private static final MODE_MOTORON:I = 0x1

.field private static final MODE_REGULATED:I = 0x4

.field private static final MOTOR_RUN_STATE_IDLE:I = 0x0

.field private static final MOTOR_RUN_STATE_RAMPDOWN:I = 0x40

.field private static final MOTOR_RUN_STATE_RAMPUP:I = 0x10

.field private static final MOTOR_RUN_STATE_RUNNING:I = 0x20

.field private static final REGULATION_MODE_IDLE:I = 0x0

.field private static final REGULATION_MODE_MOTOR_SPEED:I = 0x1

.field private static final REGULATION_MODE_MOTOR_SYNC:I = 0x2


# instance fields
.field private driveMotorPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private driveMotors:Ljava/lang/String;

.field private stopBeforeDisconnect:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "NxtDrive"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    const-string v0, "CB"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->DriveMotors(Ljava/lang/String;)V

    const v0, 0x408a3d71

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->WheelDiameter(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->StopBeforeDisconnect(Z)V

    return-void
.end method

.method private move(Ljava/lang/String;IJ)V
    .locals 11

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method

.method private turnIndefinitely(Ljava/lang/String;III)V
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-int v3, p2

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that are used for driving: the left wheel\'s motor port followed by the right wheel\'s motor port."
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotors:Ljava/lang/String;

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CB"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotors:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    move v0, v6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->convertMotorPortLetterToNumber(C)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "DriveMotors"

    const/16 v4, 0x197

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    const-wide v0, 0x4076800000000000L

    mul-double/2addr v0, p2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-string v2, "MoveBackward"

    neg-int v3, p1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    const-string v0, "MoveBackwardIndefinitely"

    neg-int v1, p1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    return-void
.end method

.method public MoveForward(ID)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    const-wide v0, 0x4076800000000000L

    mul-double/2addr v0, p2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-string v2, "MoveForward"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    const-string v0, "MoveForwardIndefinitely"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    return-void
.end method

.method public Stop()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    const/4 v3, 0x0

    const-string v1, "Stop"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the drive motors before disconnecting."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const-string v2, "TurnClockwiseIndefinitely"

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward."
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const-string v2, "TurnCounterClockwiseIndefinitely"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels used for driving."
        userVisible = false
    .end annotation

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    double-to-float v0, v0

    return v0
.end method

.method public WheelDiameter(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 11

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "Disconnect"

    const/4 v4, 0x2

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
