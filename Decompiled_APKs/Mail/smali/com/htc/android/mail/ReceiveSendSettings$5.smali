.class Lcom/htc/android/mail/ReceiveSendSettings$5;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReceiveSendSettings;

.field final synthetic val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;Lcom/htc/android/mail/Mailboxs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$5;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    iput-object p2, p0, Lcom/htc/android/mail/ReceiveSendSettings$5;->val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$5;->val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-virtual {v1, p2}, Lcom/htc/android/mail/Mailboxs;->getMailbox(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    .line 198
    .local v0, mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v0, :cond_0

    .line 208
    .end local p1
    :goto_0
    return-void

    .line 199
    .restart local p1
    :cond_0
    iget v1, v0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 200
    check-cast p1, Lcom/htc/widget/HtcAlertDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 203
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$5;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$5;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$5;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
