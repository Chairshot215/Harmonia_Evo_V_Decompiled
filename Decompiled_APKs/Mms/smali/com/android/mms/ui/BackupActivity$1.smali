.class Lcom/android/mms/ui/BackupActivity$1;
.super Landroid/os/Handler;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->displayProgressDialog()V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->dismissProgressDialog()V

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BackupActivity;->displayResultDialog(Z)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->dismissProgressDialog()V

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BackupActivity;->displayResultDialog(Z)V

    goto :goto_0

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$1;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->displayConfirmDialog()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
