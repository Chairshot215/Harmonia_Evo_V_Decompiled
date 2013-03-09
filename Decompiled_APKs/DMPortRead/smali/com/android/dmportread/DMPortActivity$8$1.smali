.class Lcom/android/dmportread/DMPortActivity$8$1;
.super Ljava/lang/Object;
.source "DMPortActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMPortActivity$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dmportread/DMPortActivity$8;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$8$1;->this$1:Lcom/android/dmportread/DMPortActivity$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 507
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 509
    .local v1, wmbinder:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 512
    .local v0, wm:Landroid/view/IWindowManager;
    :try_start_0
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 513
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v2

    goto :goto_0
.end method
