.class Lcom/htc/htcmailwidgets/MailDataManager$5;
.super Ljava/lang/Object;
.source "MailDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailDataManager;->onRequeryAccountsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailDataManager;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailDataManager$5;->this$0:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3182
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3183
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$3000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailUtils;->getAccounts(Landroid/content/Context;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htcmailwidgets/MailDataManager;->access$3102([Lcom/htc/htcmailwidgets/MailUtils$Account;)[Lcom/htc/htcmailwidgets/MailUtils$Account;

    .line 3184
    return-void
.end method
