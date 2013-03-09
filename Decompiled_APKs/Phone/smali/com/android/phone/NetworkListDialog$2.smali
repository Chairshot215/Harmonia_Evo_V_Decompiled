.class Lcom/android/phone/NetworkListDialog$2;
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
    .line 157
    iput-object p1, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v3, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 165
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkListDialog;->removeDialog(I)V

    .line 167
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v2}, Lcom/android/phone/NetworkListDialog;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkListDialog;->access$000(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)V

    .line 169
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkListDialog;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    invoke-static {v2, v3}, Lcom/android/phone/NetworkListDialog;->access$100(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v5, v2, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v2, v2, Lcom/android/phone/NetworkListDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v4, v2, Lcom/android/phone/NetworkListDialog;->isCancel:Z

    goto :goto_0

    .line 179
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkListDialog;->removeDialog(I)V

    .line 180
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    invoke-virtual {v2}, Lcom/android/phone/NetworkListDialog;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v2, v2, Lcom/android/phone/NetworkListDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 184
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 185
    .local v1, registration:[I
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 186
    aget v2, v1, v4

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkListDialog;->access$000(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)V

    .line 191
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v5, v2, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    .line 199
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v4, v2, Lcom/android/phone/NetworkListDialog;->isCancel:Z

    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    #calls: Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionSucceeded()V
    invoke-static {v2}, Lcom/android/phone/NetworkListDialog;->access$200(Lcom/android/phone/NetworkListDialog;)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog$2;->this$0:Lcom/android/phone/NetworkListDialog;

    iput-boolean v4, v2, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
