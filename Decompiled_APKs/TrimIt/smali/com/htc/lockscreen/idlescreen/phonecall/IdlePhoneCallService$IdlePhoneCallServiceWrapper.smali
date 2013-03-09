.class Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;
.super Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;
.source "IdlePhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlePhoneCallServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/remote/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(ILandroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 1
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v1, "call_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, callId:I
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v1, p1, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->performPhoneAction(II)V

    .line 92
    return-void
.end method
