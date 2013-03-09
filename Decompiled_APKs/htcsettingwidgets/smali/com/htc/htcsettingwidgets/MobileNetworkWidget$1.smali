.class Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;
.super Landroid/telephony/PhoneStateListener;
.source "MobileNetworkWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 112
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter mMobileDataStateListener\'s onServiceStateChanged(): the serviceState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->updateServiceState(I)V
    invoke-static {v0, v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$300(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;I)V

    .line 115
    return-void
.end method
