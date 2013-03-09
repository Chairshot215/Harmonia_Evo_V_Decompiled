.class Lcom/htc/android/htcime/tools/VibratorTest$1;
.super Ljava/lang/Object;
.source "VibratorTest.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/VibratorTest;->onContentChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/VibratorTest;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/VibratorTest;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/android/htcime/tools/VibratorTest$1;->this$0:Lcom/htc/android/htcime/tools/VibratorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/tools/VibratorTest$1;->this$0:Lcom/htc/android/htcime/tools/VibratorTest;

    #getter for: Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateValue:I
    invoke-static {v0}, Lcom/htc/android/htcime/tools/VibratorTest;->access$000(Lcom/htc/android/htcime/tools/VibratorTest;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tools/VibratorTest$1;->this$0:Lcom/htc/android/htcime/tools/VibratorTest;

    #getter for: Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateMode:I
    invoke-static {v0}, Lcom/htc/android/htcime/tools/VibratorTest;->access$100(Lcom/htc/android/htcime/tools/VibratorTest;)I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 65
    invoke-static {}, Lcom/htc/android/htcime/tools/VibratorTest;->access$200()Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/VibratorTest$1;->this$0:Lcom/htc/android/htcime/tools/VibratorTest;

    #getter for: Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateValue:I
    invoke-static {v1}, Lcom/htc/android/htcime/tools/VibratorTest;->access$000(Lcom/htc/android/htcime/tools/VibratorTest;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
