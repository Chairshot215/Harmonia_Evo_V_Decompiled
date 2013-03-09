.class Lcom/android/settings/GSensorCalibration$Calibrate;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Calibrate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorCalibration$Calibrate;-><init>(Lcom/android/settings/GSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v0, v0, Lcom/android/settings/GSensorCalibration;->code:I

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateStatus:Landroid/widget/TextView;

    const v1, 0x7f0c02da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$400(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/GSensorCalibration;->access$300(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    #getter for: Lcom/android/settings/GSensorCalibration;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/GSensorCalibration;->access$400(Lcom/android/settings/GSensorCalibration;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->SensorType:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget v3, v3, Lcom/android/settings/GSensorCalibration;->SensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 399
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 401
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Calibrate;->this$0:Lcom/android/settings/GSensorCalibration;

    iget-object v0, v0, Lcom/android/settings/GSensorCalibration;->calibrateStatus:Landroid/widget/TextView;

    const v1, 0x7f0c02db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
