.class Lcom/android/htcdialer/DialerApp$1;
.super Ljava/lang/Object;
.source "DialerApp.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/DialerApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerApp;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerApp;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/htcdialer/DialerApp$1;->this$0:Lcom/android/htcdialer/DialerApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/htcdialer/DialerApp$1;->this$0:Lcom/android/htcdialer/DialerApp;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/htcdialer/DialerApp$1;->this$0:Lcom/android/htcdialer/DialerApp;

    const-class v3, Lcom/android/htcdialer/DialerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/DialerApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 189
    const/4 v0, 0x0

    return v0
.end method
