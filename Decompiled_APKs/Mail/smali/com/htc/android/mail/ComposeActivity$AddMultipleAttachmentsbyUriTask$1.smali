.class Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;-><init>(Lcom/htc/android/mail/ComposeActivity;Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;

.field final synthetic val$this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13533
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;->this$1:Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;->val$this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 13535
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;->this$1:Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;

    #getter for: Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->access$14900(Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 13536
    .local v0, target:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13537
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask$1;->this$1:Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;

    #getter for: Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;->access$15000(Lcom/htc/android/mail/ComposeActivity$AddMultipleAttachmentsbyUriTask;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 13539
    :cond_0
    return-void
.end method
