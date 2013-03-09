.class Lcom/htc/android/mail/ComposeActivity$44;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onResume()V
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
    .line 6027
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$44;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6029
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$44;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6030
    return v2
.end method
