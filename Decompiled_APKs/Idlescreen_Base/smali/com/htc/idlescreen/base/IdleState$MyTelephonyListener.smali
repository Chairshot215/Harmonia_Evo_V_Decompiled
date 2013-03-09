.class Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;
.super Ljava/lang/Object;
.source "IdleState.java"

# interfaces
.implements Lcom/htc/lockscreen/telephony/TelephonyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTelephonyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;-><init>(Lcom/htc/idlescreen/base/IdleState;)V

    return-void
.end method


# virtual methods
.method public onTelephonyStateChange(Lcom/htc/lockscreen/telephony/TelephonyState;)V
    .locals 4
    .parameter "telephonyState"

    .prologue
    const/4 v3, 0x1

    .line 535
    const-string v0, "IdleState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTelephonyStateChange mIsAirPlaneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;->this$0:Lcom/htc/idlescreen/base/IdleState;

    iput-object p1, v0, Lcom/htc/idlescreen/base/IdleState;->mTelephonyState:Lcom/htc/lockscreen/telephony/TelephonyState;

    .line 538
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 539
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 540
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState$MyTelephonyListener;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mWeatherCtrl:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
    invoke-static {v0}, Lcom/htc/idlescreen/base/IdleState;->access$900(Lcom/htc/idlescreen/base/IdleState;)Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->onAirplaneMode(Z)V

    .line 541
    return-void
.end method
