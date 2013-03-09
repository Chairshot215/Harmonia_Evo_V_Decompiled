.class Lcom/android/mms/ui/RestoreActivity$1;
.super Landroid/os/Handler;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RestoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->displayProgressDialog()V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {}, Lcom/android/mms/ui/RestoreActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RestoreActivity;->displayResultDialog(Z)V

    .line 138
    invoke-static {v1}, Lcom/android/mms/ui/RestoreActivity;->access$002(Z)Z

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->dismissProgressDialog()V

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RestoreActivity;->displayResultDialog(Z)V

    .line 142
    invoke-static {v2}, Lcom/android/mms/ui/RestoreActivity;->access$102(Z)Z

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->dismissProgressDialog()V

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RestoreActivity;->displayResultDialog(Z)V

    .line 148
    invoke-static {v1}, Lcom/android/mms/ui/RestoreActivity;->access$102(Z)Z

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity$1;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity;->displayConfirmDialog()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
