.class Lcom/htc/android/htcime/tools/Calibration$2;
.super Ljava/lang/Object;
.source "Calibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 236
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Calibration$2;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "i"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 238
    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration$2;->this$0:Lcom/htc/android/htcime/tools/Calibration;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/Calibration;->finish()V

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
