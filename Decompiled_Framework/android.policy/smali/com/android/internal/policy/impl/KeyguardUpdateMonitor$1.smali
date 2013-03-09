.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDeviceLockChange()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimExtraStateChange(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12b
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
