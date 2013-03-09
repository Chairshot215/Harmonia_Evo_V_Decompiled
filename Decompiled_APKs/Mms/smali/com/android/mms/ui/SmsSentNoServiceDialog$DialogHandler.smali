.class Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;
.super Landroid/os/Handler;
.source "SmsSentNoServiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsSentNoServiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogHandler"
.end annotation


# static fields
.field public static final SHOW_CONFIRM_DIALOG:I


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->isMsgQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->finish()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DialogHandler;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->showDialog(I)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
