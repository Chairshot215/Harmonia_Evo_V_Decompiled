.class Lcom/htc/android/htcime/tools/Calibration$4;
.super Ljava/lang/Thread;
.source "Calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/Calibration;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/Calibration;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/Calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Calibration$4;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration$4;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    #getter for: Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;
    invoke-static {v0}, Lcom/htc/android/htcime/tools/Calibration;->access$000(Lcom/htc/android/htcime/tools/Calibration;)Lcom/htc/android/htcime/tools/CalibrationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/CalibrationView;->makeSimulationFile()V

    return-void
.end method
