.class Lcom/htc/android/htcime/tools/Calibration$3;
.super Ljava/lang/Object;
.source "Calibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/Calibration;->completed()V
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
    .line 248
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Calibration$3;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration$3;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/Calibration;->finish()V

    return-void
.end method
