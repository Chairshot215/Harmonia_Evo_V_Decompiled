.class Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CALL_WAITING:I = 0x0

.field private static final MESSAGE_SET_CALL_WAITING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v4, :cond_0

    .line 92
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_2

    .line 93
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v7, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v4, v7, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 99
    :cond_0
    :goto_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 101
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 103
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_3

    .line 104
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 105
    .local v3, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_3

    .line 106
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/16 v6, 0x2711

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 131
    .end local v3           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_1
    return-void

    .line 95
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v7, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v4, v7, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v5, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v6, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v5, v6, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Lcom/htc/preference/HtcPreference;Lcom/android/internal/telephony/CommandException;)V

    goto :goto_1

    .line 116
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 117
    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v4, v4, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/16 v6, 0x190

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 125
    .local v1, cwArray:[I
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/4 v4, 0x0

    aget v4, v1, v4

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    aget v4, v1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "CallWaitingCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCallWaitingResponse: improper result: err ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_6
    move v4, v6

    .line 125
    goto :goto_2
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
