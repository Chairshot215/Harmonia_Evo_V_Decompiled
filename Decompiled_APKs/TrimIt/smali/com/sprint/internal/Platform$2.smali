.class Lcom/sprint/internal/Platform$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/internal/Platform;


# direct methods
.method constructor <init>(Lcom/sprint/internal/Platform;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sprint/internal/Platform$2;->this$0:Lcom/sprint/internal/Platform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 79
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/sprint/internal/Platform$2;->this$0:Lcom/sprint/internal/Platform;

    invoke-static {p2}, Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    move-result-object v1

    #setter for: Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    invoke-static {v0, v1}, Lcom/sprint/internal/Platform;->access$102(Lcom/sprint/internal/Platform;Lcom/sprint/internal/htcsprintservice/IHtcSprintService;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    .line 81
    iget-object v0, p0, Lcom/sprint/internal/Platform$2;->this$0:Lcom/sprint/internal/Platform;

    #getter for: Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sprint/internal/Platform;->access$200(Lcom/sprint/internal/Platform;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 74
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
