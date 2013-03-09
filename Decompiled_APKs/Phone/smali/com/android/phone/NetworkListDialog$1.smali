.class Lcom/android/phone/NetworkListDialog$1;
.super Landroid/os/Handler;
.source "NetworkListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkListDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkListDialog;->removeDialog(I)V

    .line 134
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v1}, Lcom/android/phone/NetworkListDialog;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkListDialog;->access$000(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)V

    .line 139
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkListDialog;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    invoke-static {v1, v2}, Lcom/android/phone/NetworkListDialog;->access$100(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v4, v1, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    .line 149
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v3, v1, Lcom/android/phone/NetworkListDialog;->isCancel:Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    #calls: Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/android/phone/NetworkListDialog;->access$200(Lcom/android/phone/NetworkListDialog;)V

    .line 147
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog$1;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v3, v1, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
