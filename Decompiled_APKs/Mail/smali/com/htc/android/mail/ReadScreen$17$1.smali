.class Lcom/htc/android/mail/ReadScreen$17$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen$17;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReadScreen$17;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$17$1;->this$1:Lcom/htc/android/mail/ReadScreen$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$17$1;->this$1:Lcom/htc/android/mail/ReadScreen$17;

    iget v0, v0, Lcom/htc/android/mail/ReadScreen$17;->val$respType:I

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$17$1;->this$1:Lcom/htc/android/mail/ReadScreen$17;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v1, v1, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$17$1;->this$1:Lcom/htc/android/mail/ReadScreen$17;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$17$1;->this$1:Lcom/htc/android/mail/ReadScreen$17;

    iget-object v4, v4, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->sendNoCommentMeetingResp(IJLandroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 1128
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$17$1;->this$1:Lcom/htc/android/mail/ReadScreen$17;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$17;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->finish()V

    .line 1129
    return-void
.end method
