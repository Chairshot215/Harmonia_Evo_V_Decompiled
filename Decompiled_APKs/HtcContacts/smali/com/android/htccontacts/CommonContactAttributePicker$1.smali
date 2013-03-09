.class Lcom/android/htccontacts/CommonContactAttributePicker$1;
.super Landroid/os/Handler;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 326
    :sswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$000(Lcom/android/htccontacts/CommonContactAttributePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->showQueryProgress()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$100(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    goto :goto_0

    .line 333
    :sswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$000(Lcom/android/htccontacts/CommonContactAttributePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$1;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->dismissQueryProgress()V
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$200(Lcom/android/htccontacts/CommonContactAttributePicker;)V

    goto :goto_0

    .line 342
    :sswitch_2
    const/16 v0, 0x500f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker$1;->removeMessages(I)V

    .line 343
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/CommonContactAttributePicker$1$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/CommonContactAttributePicker$1$1;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x5005 -> :sswitch_0
        0x5006 -> :sswitch_1
        0x500f -> :sswitch_2
    .end sparse-switch
.end method
