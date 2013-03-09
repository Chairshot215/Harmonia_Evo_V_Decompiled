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

    iput-object p1, p0, Lcom/htc/app/HtcShutdownThread$5;->this$0:Lcom/htc/app/HtcShutdownThread;

    iput-object p2, p0, Lcom/htc/app/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcShutdownThread$5;->this$0:Lcom/htc/app/HtcShutdownThread;

    invoke-virtual {v0}, Lcom/htc/app/HtcShutdownThread;->actionDone()V

    return-void
.end method
