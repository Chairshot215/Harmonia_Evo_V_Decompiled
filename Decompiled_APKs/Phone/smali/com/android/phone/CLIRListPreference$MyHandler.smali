.class Lcom/android/phone/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CLIR:I = 0x0

.field private static final MESSAGE_SET_CLIR:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CLIRListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x190

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 160
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 161
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 165
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 167
    .local v2, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/16 v5, 0x2711

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 187
    .end local v2           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_1
    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v4, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v4, v5, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Lcom/htc/preference/HtcPreference;Lcom/android/internal/telephony/CommandException;)V

    goto :goto_1

    .line 175
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 179
    .local v1, clirArray:[I
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 180
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v3, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v3, v4, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_1

    .line 184
    :cond_4
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_1
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 192
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
