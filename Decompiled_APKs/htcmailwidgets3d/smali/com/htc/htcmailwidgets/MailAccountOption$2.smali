.class Lcom/htc/htcmailwidgets/MailAccountOption$2;
.super Ljava/lang/Object;
.source "MailAccountOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailAccountOption;->chooseOption()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailAccountOption;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailAccountOption;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$2;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$2;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    .line 331
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailAccountOption$2;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    .line 332
    return-void
.end method
