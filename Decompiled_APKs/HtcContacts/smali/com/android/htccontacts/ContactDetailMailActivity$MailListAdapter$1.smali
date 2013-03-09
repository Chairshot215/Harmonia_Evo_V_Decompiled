.class Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailMailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;->this$1:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;->this$1:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowAddEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1300(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;->this$1:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->doAddEmail()V

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;->this$1:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mShowSendEmail:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1400(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter$1;->this$1:Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailMailActivity$MailListAdapter;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->doSendEmail()V

    goto :goto_0
.end method
