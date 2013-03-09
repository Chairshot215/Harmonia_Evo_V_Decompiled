.class Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;
.super Ljava/lang/Object;
.source "MemoryMeasurement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 207
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 209
    .local v0, imcs:Lcom/android/internal/app/IMediaContainerService;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->access$002(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 210
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z
    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->access$102(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Z)Z

    .line 211
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->access$102(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Z)Z

    .line 216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$1;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 217
    return-void
.end method
