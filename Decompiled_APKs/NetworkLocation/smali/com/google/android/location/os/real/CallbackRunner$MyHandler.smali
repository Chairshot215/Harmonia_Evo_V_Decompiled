.class final Lcom/google/android/location/os/real/CallbackRunner$MyHandler;
.super Landroid/os/Handler;
.source "CallbackRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/CallbackRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field private lastSignalStrength:I

.field private final telephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/google/android/location/os/real/CallbackRunner;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 86
    const/16 v0, -0x270f

    iput v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;-><init>(Lcom/google/android/location/os/real/CallbackRunner;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 176
    const-string v1, "NetworkLocationCallbackRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->phoneStateListener:Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;
    invoke-static {v3}, Lcom/google/android/location/os/real/CallbackRunner;->access$100(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 93
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 95
    .local v7, lm:Landroid/location/LocationManager;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 99
    .end local v7           #lm:Landroid/location/LocationManager;
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    sget-object v3, Lcom/google/android/location/os/Event;->GLS_QUERY_RESPONSE:Lcom/google/android/location/os/Event;

    invoke-virtual {v1, v3}, Lcom/google/android/location/os/EventLog;->addEvent(Lcom/google/android/location/os/Event;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-interface {v3, v1}, Lcom/google/android/location/os/Callbacks;->glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v5

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_0

    move v1, v3

    :goto_1
    invoke-virtual {v5, v10, v1}, Lcom/google/android/location/os/EventLog;->addSetPeriod(IZ)V

    .line 105
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-eqz v10, :cond_1

    :goto_2
    invoke-interface {v1, v5, v3}, Lcom/google/android/location/os/Callbacks;->setPeriod(IZ)V

    goto :goto_0

    :cond_0
    move v1, v4

    .line 104
    goto :goto_1

    :cond_1
    move v3, v4

    .line 105
    goto :goto_2

    .line 109
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    .line 110
    const/16 v1, -0x270f

    iput v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    .line 112
    :cond_2
    const/4 v0, 0x0

    .line 113
    .local v0, rcs:Lcom/google/android/location/os/real/RealCellState;
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 114
    .local v2, cellLocation:Landroid/telephony/CellLocation;
    if-eqz v2, :cond_3

    .line 115
    new-instance v0, Lcom/google/android/location/os/real/RealCellState;

    .end local v0           #rcs:Lcom/google/android/location/os/real/RealCellState;
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/RealCellState;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;IJ)V

    .line 118
    .restart local v0       #rcs:Lcom/google/android/location/os/real/RealCellState;
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/os/EventLog;->addCellScanResults(Lcom/google/android/location/data/CellState;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/location/os/Callbacks;->cellScanResults(Lcom/google/android/location/data/CellState;)V

    goto/16 :goto_0

    .line 123
    .end local v0           #rcs:Lcom/google/android/location/os/real/RealCellState;
    .end local v2           #cellLocation:Landroid/telephony/CellLocation;
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telephony/SignalStrength;

    .line 124
    .local v8, ss:Landroid/telephony/SignalStrength;
    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iput v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    .line 129
    :goto_3
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    iget v3, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    invoke-virtual {v1, v3}, Lcom/google/android/location/os/EventLog;->addCellSignalStrength(I)V

    .line 130
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    iget v3, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    invoke-interface {v1, v3}, Lcom/google/android/location/os/Callbacks;->cellSignalStrength(I)V

    goto/16 :goto_0

    .line 127
    :cond_4
    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    iput v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->lastSignalStrength:I

    goto :goto_3

    .line 134
    .end local v8           #ss:Landroid/telephony/SignalStrength;
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/location/os/EventLog;->addAlarmRing(I)V

    .line 135
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/google/android/location/os/Callbacks;->alarmRing(I)V

    .line 136
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$400(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 140
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/location/os/EventLog;->addAlarmRing(I)V

    .line 141
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/location/os/Callbacks;->alarmRing(I)V

    .line 142
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$400(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 146
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/location/os/EventLog;->addAlarmRing(I)V

    .line 147
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/google/android/location/os/Callbacks;->alarmRing(I)V

    .line 148
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$400(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 152
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/location/os/EventLog;->addAlarmRing(I)V

    .line 153
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/google/android/location/os/Callbacks;->alarmRing(I)V

    .line 154
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$400(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 158
    :pswitch_9
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/location/os/real/RealWifiScan;

    .line 159
    .local v9, wifiScan:Lcom/google/android/location/os/real/RealWifiScan;
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/location/os/EventLog;->addWifiScanResults(Lcom/google/android/location/data/WifiScan;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/google/android/location/os/Callbacks;->wifiScanResults(Lcom/google/android/location/data/WifiScan;)V

    goto/16 :goto_0

    .line 164
    .end local v9           #wifiScan:Lcom/google/android/location/os/real/RealWifiScan;
    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_5

    move v6, v3

    .line 165
    .local v6, enabled:Z
    :goto_4
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/location/os/EventLog;->addWifiStateChanged(Z)V

    .line 166
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/google/android/location/os/Callbacks;->wifiStateChanged(Z)V

    goto/16 :goto_0

    .end local v6           #enabled:Z
    :cond_5
    move v6, v4

    .line 164
    goto :goto_4

    .line 170
    :pswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6

    move v6, v3

    .line 171
    .restart local v6       #enabled:Z
    :goto_5
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->eventLog:Lcom/google/android/location/os/EventLog;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$200(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/EventLog;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/location/os/EventLog;->addAirplaneModeChanged(Z)V

    .line 172
    iget-object v1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v1}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/google/android/location/os/Callbacks;->airplaneModeChanged(Z)V

    goto/16 :goto_0

    .end local v6           #enabled:Z
    :cond_6
    move v6, v4

    .line 170
    goto :goto_5

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
