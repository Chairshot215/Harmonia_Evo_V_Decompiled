.class Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;
.super Lcom/googlecode/eyesfree/widget/SimpleOverlay;
.source "VolumeMonitor.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/VolumeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeOverlay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/VolumeMonitor;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 462
    iput-object p1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 463
    invoke-direct {p0, p2}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 466
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 467
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 468
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 469
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 470
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 471
    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    invoke-virtual {p0, p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 474
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 479
    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    .line 480
    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    #calls: Lcom/google/android/marvin/talkback/VolumeMonitor;->releaseControl()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$0(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    .line 484
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
