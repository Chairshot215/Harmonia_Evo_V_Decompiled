.class Lcom/htc/android/mail/ComposeActivity$34;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onDestroy()V
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
    .line 4925
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$34;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4927
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$34;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v3, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->saveMail(I)J
    invoke-static {v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$3000(Lcom/htc/android/mail/ComposeActivity;I)J

    move-result-wide v0

    .line 4928
    .local v0, messageId:J
    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$34;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$6100(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$34;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMessageIdInHeader:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ComposeActivity;->access$6000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/htc/android/mail/AbsRequestController;->saveDraftDone(Ljava/lang/String;J)V

    .line 4929
    return-void
.end method
