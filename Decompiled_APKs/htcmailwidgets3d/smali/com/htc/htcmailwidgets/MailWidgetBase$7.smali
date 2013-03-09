.class Lcom/htc/htcmailwidgets/MailWidgetBase$7;
.super Ljava/lang/Object;
.source "MailWidgetBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;->launchAccountList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$7;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    .line 1198
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$7;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const-wide/16 v1, -0x3

    iput-wide v1, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    .line 1199
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$7;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    if-ne v0, v3, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$7;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->checkAccount()V

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$7;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v0, v0, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccounts:[Lcom/htc/htcmailwidgets/MailUtils$Account;

    array-length v0, v0

    if-le v0, v3, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$7;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-virtual {v0}, Lcom/htc/htcmailwidgets/MailWidgetBase;->launchAccountOption()V

    goto :goto_0
.end method
