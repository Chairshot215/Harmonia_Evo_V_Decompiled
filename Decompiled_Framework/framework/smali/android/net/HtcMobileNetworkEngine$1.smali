.class Landroid/net/HtcMobileNetworkEngine$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcMobileNetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/HtcMobileNetworkEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/HtcMobileNetworkEngine;


# direct methods
.method constructor <init>(Landroid/net/HtcMobileNetworkEngine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/HtcMobileNetworkEngine$1;->this$0:Landroid/net/HtcMobileNetworkEngine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Landroid/net/HtcMobileNetworkEngine$1;->this$0:Landroid/net/HtcMobileNetworkEngine;

    #calls: Landroid/net/HtcMobileNetworkEngine;->checkMobileNetworkDisplayPolicy()V
    invoke-static {v0}, Landroid/net/HtcMobileNetworkEngine;->access$000(Landroid/net/HtcMobileNetworkEngine;)V

    return-void
.end method
