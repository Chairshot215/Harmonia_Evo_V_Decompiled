.class Lcom/htc/server/HtcDeviceInfoManager$1;
.super Ljava/lang/Thread;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcDeviceInfoManager;->setupDevicePhoneStateListener(Landroid/telephony/TelephonyManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager;

.field final synthetic val$telephony:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$1;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$1;->val$telephony:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$1;->val$telephony:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$1;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/server/HtcDeviceInfoManager$DevicePhoneStateListener;-><init>(Lcom/htc/server/HtcDeviceInfoManager;Lcom/htc/server/HtcDeviceInfoManager$1;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
