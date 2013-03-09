.class Lcom/android/phone/ManualSelectNetwork$2;
.super Landroid/os/Handler;
.source "ManualSelectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManualSelectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManualSelectNetwork;


# direct methods
.method constructor <init>(Lcom/android/phone/ManualSelectNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

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

    .line 188
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 190
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/ManualSelectNetwork;->operatorListLoaded(Ljava/util/List;I)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/ManualSelectNetwork;->access$000(Lcom/android/phone/ManualSelectNetwork;Ljava/util/List;I)V

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {v2, v3}, Lcom/android/phone/ManualSelectNetwork;->removeDialog(I)V

    .line 198
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {v2}, Lcom/android/phone/ManualSelectNetwork;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 199
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/ManualSelectNetwork;->access$100(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)V

    .line 200
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/ManualSelectNetwork;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    invoke-static {v2, v3}, Lcom/android/phone/ManualSelectNetwork;->access$200(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v5, v2, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v2, v2, Lcom/android/phone/ManualSelectNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 205
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v4, v2, Lcom/android/phone/ManualSelectNetwork;->isCancel:Z

    goto :goto_0

    .line 211
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {v2, v3}, Lcom/android/phone/ManualSelectNetwork;->removeDialog(I)V

    .line 212
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {v2}, Lcom/android/phone/ManualSelectNetwork;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v2, v2, Lcom/android/phone/ManualSelectNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForManualState(Landroid/os/Handler;)V

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 215
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 216
    .local v1, registration:[I
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 217
    aget v2, v1, v4

    if-eqz v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/ManualSelectNetwork;->access$100(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)V

    .line 222
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v5, v2, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    .line 230
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v4, v2, Lcom/android/phone/ManualSelectNetwork;->isCancel:Z

    goto :goto_0

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    #calls: Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionSucceeded()V
    invoke-static {v2}, Lcom/android/phone/ManualSelectNetwork;->access$300(Lcom/android/phone/ManualSelectNetwork;)V

    .line 227
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$2;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v4, v2, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    goto :goto_1

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
