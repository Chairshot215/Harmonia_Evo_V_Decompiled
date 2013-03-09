.class Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;
.super Ljava/lang/Object;
.source "DelayedProgressDialogTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 30
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask.1;"
    iput-object p1, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;->this$0:Lcom/htc/android/mail/util/DelayedProgressDialogTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 32
    .local p0, this:Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;,"Lcom/htc/android/mail/util/DelayedProgressDialogTask.1;"
    iget-object v0, p0, Lcom/htc/android/mail/util/DelayedProgressDialogTask$1;->this$0:Lcom/htc/android/mail/util/DelayedProgressDialogTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/util/DelayedProgressDialogTask;->mIsCanceled:Z

    .line 33
    return-void
.end method
