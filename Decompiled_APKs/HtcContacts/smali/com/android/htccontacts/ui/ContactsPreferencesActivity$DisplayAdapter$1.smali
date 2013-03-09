.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

.field final synthetic val$account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;Landroid/widget/CheckBox;Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    iput-object p4, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1544
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 1546
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$account:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;

    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->setVisible(Z)V

    .line 1547
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$msg:Landroid/os/Message;

    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1549
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->mTarget:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1550
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 1551
    return-void

    :cond_0
    move v0, v2

    .line 1546
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1547
    goto :goto_1
.end method
