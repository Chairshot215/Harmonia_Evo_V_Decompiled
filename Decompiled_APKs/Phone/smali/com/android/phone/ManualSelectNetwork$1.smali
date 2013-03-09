.class Lcom/android/phone/ManualSelectNetwork$1;
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
    .line 150
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

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

    .line 154
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 156
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/ManualSelectNetwork;->operatorListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/ManualSelectNetwork;->access$000(Lcom/android/phone/ManualSelectNetwork;Ljava/util/List;I)V

    goto :goto_0

    .line 161
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/ManualSelectNetwork;->removeDialog(I)V

    .line 162
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    invoke-virtual {v1}, Lcom/android/phone/ManualSelectNetwork;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 165
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/android/phone/ManualSelectNetwork;->access$100(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/ManualSelectNetwork;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    invoke-static {v1, v2}, Lcom/android/phone/ManualSelectNetwork;->access$200(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v4, v1, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    .line 176
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v3, v1, Lcom/android/phone/ManualSelectNetwork;->isCancel:Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    #calls: Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionSucceeded()V
    invoke-static {v1}, Lcom/android/phone/ManualSelectNetwork;->access$300(Lcom/android/phone/ManualSelectNetwork;)V

    .line 174
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork$1;->this$0:Lcom/android/phone/ManualSelectNetwork;

    iput-boolean v3, v1, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    goto :goto_1

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
