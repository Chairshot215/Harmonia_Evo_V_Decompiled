.class Lcom/google/android/setupwizard/NetworkMonitor$3;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "cn"
    .parameter "service"

    .prologue
    .line 155
    const-string v0, "NetworkMonitor"

    const-string v1, "GLS onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    invoke-static {p2}, Lcom/google/android/gsf/IGoogleLoginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gsf/IGoogleLoginService;

    move-result-object v1

    #setter for: Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;
    invoke-static {v0, v1}, Lcom/google/android/setupwizard/NetworkMonitor;->access$302(Lcom/google/android/setupwizard/NetworkMonitor;Lcom/google/android/gsf/IGoogleLoginService;)Lcom/google/android/gsf/IGoogleLoginService;

    .line 157
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #getter for: Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;
    invoke-static {v0}, Lcom/google/android/setupwizard/NetworkMonitor;->access$400(Lcom/google/android/setupwizard/NetworkMonitor;)Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #getter for: Lcom/google/android/setupwizard/NetworkMonitor;->mCallback:Lcom/google/android/setupwizard/NetworkMonitor$Callback;
    invoke-static {v0}, Lcom/google/android/setupwizard/NetworkMonitor;->access$400(Lcom/google/android/setupwizard/NetworkMonitor;)Lcom/google/android/setupwizard/NetworkMonitor$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #getter for: Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;
    invoke-static {v1}, Lcom/google/android/setupwizard/NetworkMonitor;->access$300(Lcom/google/android/setupwizard/NetworkMonitor;)Lcom/google/android/gsf/IGoogleLoginService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/setupwizard/NetworkMonitor$Callback;->onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #calls: Lcom/google/android/setupwizard/NetworkMonitor;->onStateChanged()V
    invoke-static {v0}, Lcom/google/android/setupwizard/NetworkMonitor;->access$000(Lcom/google/android/setupwizard/NetworkMonitor;)V

    .line 159
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 162
    const-string v0, "NetworkMonitor"

    const-string v1, "GLS onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/setupwizard/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;
    invoke-static {v0, v1}, Lcom/google/android/setupwizard/NetworkMonitor;->access$302(Lcom/google/android/setupwizard/NetworkMonitor;Lcom/google/android/gsf/IGoogleLoginService;)Lcom/google/android/gsf/IGoogleLoginService;

    .line 164
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitor$3;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #calls: Lcom/google/android/setupwizard/NetworkMonitor;->onStateChanged()V
    invoke-static {v0}, Lcom/google/android/setupwizard/NetworkMonitor;->access$000(Lcom/google/android/setupwizard/NetworkMonitor;)V

    .line 165
    return-void
.end method
