.class Lcom/htc/htcmailwidgets/MailDataManager$6;
.super Ljava/lang/Object;
.source "MailDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailDataManager;->onDoEmptyData(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailDataManager;

.field final synthetic val$acc_id:J

.field final synthetic val$acc_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailDataManager;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3191
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$6;->this$0:Lcom/htc/htcmailwidgets/MailDataManager;

    iput-wide p2, p0, Lcom/htc/htcmailwidgets/MailDataManager$6;->val$acc_id:J

    iput-object p4, p0, Lcom/htc/htcmailwidgets/MailDataManager$6;->val$acc_name:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3193
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3194
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailDataManager$6;->this$0:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-wide v1, p0, Lcom/htc/htcmailwidgets/MailDataManager$6;->val$acc_id:J

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailDataManager$6;->val$acc_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/htcmailwidgets/MailDataManager;->emptyAccountMap(JLjava/lang/String;)V

    .line 3195
    return-void
.end method
