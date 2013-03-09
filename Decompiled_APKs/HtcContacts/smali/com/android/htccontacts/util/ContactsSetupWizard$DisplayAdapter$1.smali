.class Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;
.super Ljava/lang/Object;
.source "ContactsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

.field final synthetic val$account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

.field final synthetic val$builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;Lcom/android/htccontacts/widget/HtcListItemBuilder;Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->this$1:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iput-object p3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    iput p4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$groupPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1335
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->toggle()V

    .line 1337
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->setVisible(Z)V

    .line 1338
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->this$1:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    iget-object v1, v1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1339
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1a0a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1340
    iget v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$groupPosition:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1341
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->val$builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1343
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->this$1:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->mTarget:Lcom/android/htccontacts/util/ContactsSetupWizard;

    iget-object v1, v1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1344
    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter$1;->this$1:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->notifyDataSetChanged()V

    .line 1345
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 1337
    goto :goto_0

    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    move v2, v3

    .line 1341
    goto :goto_1
.end method
