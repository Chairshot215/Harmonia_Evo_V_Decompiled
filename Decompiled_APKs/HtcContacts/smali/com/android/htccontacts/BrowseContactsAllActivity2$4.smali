.class Lcom/android/htccontacts/BrowseContactsAllActivity2$4;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->setListViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$4;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    .line 381
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$4;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    .line 383
    .local v0, selectedPosition:I
    if-ne v2, p2, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$4;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$4;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    if-ne v2, p2, :cond_0

    if-lez v0, :cond_0

    goto :goto_0
.end method
