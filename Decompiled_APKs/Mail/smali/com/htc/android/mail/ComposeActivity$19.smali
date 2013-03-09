.class Lcom/htc/android/mail/ComposeActivity$19;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->saveMail(I)J
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
    .line 1959
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$19;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$19;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mFromViewer:Z
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3200(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$19;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$19;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v1

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeSavingFlag(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$3400(Lcom/htc/android/mail/ComposeActivity;J)V

    .line 1963
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$19;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateNotDeletedFlag(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$3500(Lcom/htc/android/mail/ComposeActivity;Z)V

    .line 1965
    :cond_0
    return-void
.end method
