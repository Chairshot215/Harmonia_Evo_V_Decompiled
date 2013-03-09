.class Lcom/htc/android/htcime/ui/TutorialTouchZone$1;
.super Landroid/os/Handler;
.source "TutorialTouchZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/TutorialTouchZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/TutorialTouchZone;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/TutorialTouchZone;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone$1;->this$0:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialTouchZone$1;->this$0:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->invalidate()V

    goto :goto_0

    .line 106
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone$1;->removeMessages(I)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
