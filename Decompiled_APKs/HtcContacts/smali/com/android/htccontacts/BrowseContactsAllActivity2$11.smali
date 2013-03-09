.class Lcom/android/htccontacts/BrowseContactsAllActivity2$11;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

.field final synthetic val$matches:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iput-object p2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->val$matches:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2636
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->isUseServoSearchClient(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2637
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->val$matches:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/htccontacts/util/ContactsUtils;->getlaunchServoSearchClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2638
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    .line 2646
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2643
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2644
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$11;->val$matches:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
