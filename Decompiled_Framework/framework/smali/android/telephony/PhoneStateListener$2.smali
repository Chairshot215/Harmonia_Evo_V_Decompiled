.class Landroid/telephony/PhoneStateListener$2;
.super Landroid/os/Handler;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChangedEnhanced(I)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :sswitch_3
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    :sswitch_4
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/CellLocation;

    invoke-virtual {v2, v1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    goto :goto_0

    :sswitch_5
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    goto :goto_0

    :sswitch_8
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onOtaspChanged(I)V

    goto :goto_0

    :sswitch_a
    iget-object v2, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/telephony/PhoneStateListener;->onCallDisconnected(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [[Landroid/telephony/ServiceState;

    move-object v0, v1

    check-cast v0, [[Landroid/telephony/ServiceState;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v3, v2}, Landroid/telephony/PhoneStateListener;->onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
    .end sparse-switch
.end method
