.class Lcom/htc/app/HtcShutdownThread$5;
.super Ljava/lang/Object;
.source "HtcShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcShutdownThread;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcShutdownThread;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/app/HtcShutdownThread$5;->this$0:Lcom/htc/app/HtcShutdownThread;

    iput-object p2, p0, Lcom/htc/app/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "HtcShutdownThread"

    const-string v1, "Dismissing shutdown screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$5;->this$0:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v0}, Lcom/htc/app/HtcShutdownThread;->actionDone()V

    .line 499
    return-void
.end method
