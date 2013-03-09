.class Lcom/htc/omadm/tool/GetInfoActivity$1;
.super Ljava/lang/Object;
.source "GetInfoActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/tool/GetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/GetInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/GetInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/omadm/tool/GetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/GetInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/GetInfoActivity;

    iget-object v0, v0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/GetInfoActivity;

    invoke-static {p2}, Lcom/htc/omadm/aidl/IDmFutureDial$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/omadm/aidl/IDmFutureDial;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 81
    const-string v0, "GetInfoActivity"

    const-string v1, "Client:onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/GetInfoActivity;

    invoke-virtual {v0}, Lcom/htc/omadm/tool/GetInfoActivity;->GetInfo()V

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/omadm/tool/GetInfoActivity$1;->this$0:Lcom/htc/omadm/tool/GetInfoActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/omadm/tool/GetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    .line 88
    const-string v0, "GetInfoActivity"

    const-string v1, "Client:onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
