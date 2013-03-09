.class Lcom/android/mms/ui/MessageTabSwitchActivity$3;
.super Landroid/os/Handler;
.source "MessageTabSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTabSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$3;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$3;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 507
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 509
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->updateCountTexts([I)V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
