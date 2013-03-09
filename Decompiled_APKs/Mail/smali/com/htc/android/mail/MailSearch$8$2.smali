.class Lcom/htc/android/mail/MailSearch$8$2;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailSearch$8;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$8$2;->this$1:Lcom/htc/android/mail/MailSearch$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$8$2;->this$1:Lcom/htc/android/mail/MailSearch$8;

    iget v0, v0, Lcom/htc/android/mail/MailSearch$8;->val$respType:I

    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$8$2;->this$1:Lcom/htc/android/mail/MailSearch$8;

    iget-wide v1, v1, Lcom/htc/android/mail/MailSearch$8;->val$markId:J

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$8$2;->this$1:Lcom/htc/android/mail/MailSearch$8;

    iget-object v3, v3, Lcom/htc/android/mail/MailSearch$8;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$1200(Lcom/htc/android/mail/MailSearch;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/MailSearch$8$2;->this$1:Lcom/htc/android/mail/MailSearch$8;

    iget-object v4, v4, Lcom/htc/android/mail/MailSearch$8;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v4}, Lcom/htc/android/mail/MailSearch;->access$800(Lcom/htc/android/mail/MailSearch;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->notSendMeetingResponse(IJLandroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 1041
    return-void
.end method
