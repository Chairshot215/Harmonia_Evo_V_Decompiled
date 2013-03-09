.class Lcom/htc/htcmailwidgets/MailAccountOption$1;
.super Ljava/lang/Object;
.source "MailAccountOption.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailAccountOption;
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
    .line 167
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "a"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 169
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_0

    .line 172
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v1, itent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.ProviderListScreen"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    const/16 v3, 0x100

    invoke-virtual {v2, v1, v3}, Lcom/htc/htcmailwidgets/MailAccountOption;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1           #itent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mOption:I
    invoke-static {v2, p3}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$002(Lcom/htc/htcmailwidgets/MailAccountOption;I)I

    .line 183
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$100(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    iget-object v3, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v3}, Lcom/htc/htcmailwidgets/MailAccountOption;->getIntent()Landroid/content/Intent;

    move-result-object v3

    #setter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$102(Lcom/htc/htcmailwidgets/MailAccountOption;Landroid/content/Intent;)Landroid/content/Intent;

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$100(Lcom/htc/htcmailwidgets/MailAccountOption;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "ACCOUNT_ID"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget-wide v4, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    const-string v3, "ACCOUNT_NAME"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v3, "ACCOUNT_PROTOCOL"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->protocol:I

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v3, "ACCOUNT_DEFAULTFOLDER"

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    #getter for: Lcom/htc/htcmailwidgets/MailAccountOption;->mAccountInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->access$200(Lcom/htc/htcmailwidgets/MailAccountOption;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcmailwidgets/MailUtils$Account;

    iget v2, v2, Lcom/htc/htcmailwidgets/MailUtils$Account;->defaultfolderid:I

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/htc/htcmailwidgets/MailAccountOption;->setResult(ILandroid/content/Intent;)V

    .line 193
    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailAccountOption$1;->this$0:Lcom/htc/htcmailwidgets/MailAccountOption;

    invoke-virtual {v2}, Lcom/htc/htcmailwidgets/MailAccountOption;->finish()V

    goto :goto_0

    .line 178
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #itent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
