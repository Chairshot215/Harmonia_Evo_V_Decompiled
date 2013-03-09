.class Lcom/htc/android/mail/easclient/EASSetting$11;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;

.field final synthetic val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/Mailboxs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$11;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    iput-object p2, p0, Lcom/htc/android/mail/easclient/EASSetting$11;->val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    .line 1560
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$11;->val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-virtual {v2, p2}, Lcom/htc/android/mail/Mailboxs;->getMailbox(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    .line 1562
    .local v1, mailbox:Lcom/htc/android/mail/Mailbox;
    iget v2, v1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    if-nez p3, :cond_0

    .line 1564
    instance-of v2, p1, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1565
    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 1566
    .local v0, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1567
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$11;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v2

    aput-boolean v4, v2, p2

    .line 1573
    .end local v0           #htcDialog:Lcom/htc/widget/HtcAlertDialog;
    :goto_0
    return-void

    .line 1571
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$11;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v2

    aput-boolean p3, v2, p2

    goto :goto_0
.end method
