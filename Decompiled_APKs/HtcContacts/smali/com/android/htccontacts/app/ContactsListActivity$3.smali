.class Lcom/android/htccontacts/app/ContactsListActivity$3;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/ContactsListActivity;->setAddItemOnSearchBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3864
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$3;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x8000

    .line 3867
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$3;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getInsertContactIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3868
    .local v1, newContact:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$3;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3869
    .local v0, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$3;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->recopyExtra(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3870
    const-string v4, "picker_mode"

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$3;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget v2, v2, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3873
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3874
    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$3;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v2, v1, v3}, Lcom/android/htccontacts/app/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3877
    return-void

    .line 3870
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
