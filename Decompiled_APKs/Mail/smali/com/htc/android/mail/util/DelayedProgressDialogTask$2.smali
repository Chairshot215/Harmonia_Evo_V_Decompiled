.class Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;
.super Ljava/lang/Object;
.source "DelayedProgressDialogTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/util/DelayedProgressDialogTask;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/util/DelayedProgressDialogTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/util/DelayedProgressDialogTask;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask.2;"
    iput-object p1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;->this$0:Lcom/htc/android/mail/util/DelayedProgressDialogTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask.2;"
    iget-object v1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;->this$0:Lcom/htc/android/mail/util/DelayedProgressDialogTask;

    iget-object v1, v1, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 39
    .local v0, target:Landroid/app/Activity;,"TMyActivity;"
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask$2;->this$0:Lcom/htc/android/mail/util/DelayedProgressDialogTask;

    #getter for: Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->access$000(Lcom/htc/android/mail/util/DelayedProgressDialogTask;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v1, "DelayedProgressDialogTask"

    const-string v2, "target is going finished"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
