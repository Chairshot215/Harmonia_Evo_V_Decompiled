.class Lcom/htc/android/mail/ComposeActivity$39;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->updateContactThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5175
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$39;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$39;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5178
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5179
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$39;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->getContacts(I)V

    .line 5181
    :cond_0
    return-void
.end method
