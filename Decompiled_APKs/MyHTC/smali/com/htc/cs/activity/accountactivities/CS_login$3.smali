.class Lcom/htc/cs/activity/accountactivities/CS_login$3;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private logger:Lcom/htc/cs/util/Logger;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 1
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$3;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$3;->logger:Lcom/htc/cs/util/Logger;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$3;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1331
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$3;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    check-cast p2, Lcom/htc/cs/service/ConnectedService$mLogInBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/cs/service/ConnectedService$mLogInBinder;->getLoginService()Lcom/htc/cs/service/ConnectedService;

    move-result-object v1

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->serviceBinder:Lcom/htc/cs/service/ConnectedService;
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$602(Lcom/htc/cs/activity/accountactivities/CS_login;Lcom/htc/cs/service/ConnectedService;)Lcom/htc/cs/service/ConnectedService;

    .line 1334
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1339
    return-void
.end method
