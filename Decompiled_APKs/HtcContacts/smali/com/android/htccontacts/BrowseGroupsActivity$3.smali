.class Lcom/android/htccontacts/BrowseGroupsActivity$3;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;->createFontSizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseGroupsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 825
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 826
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-static {v2, p2}, Lcom/android/htccontacts/util/ContactsUtils;->setFontSize(Landroid/content/Context;I)Z

    move-result v1

    .line 827
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 828
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v3

    #setter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mFontSize:I
    invoke-static {v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$402(Lcom/android/htccontacts/BrowseGroupsActivity;I)I

    .line 829
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 830
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->updateResource()V

    .line 831
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    #calls: Lcom/android/htccontacts/BrowseGroupsActivity;->resetEmptyView()V
    invoke-static {v2}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$500(Lcom/android/htccontacts/BrowseGroupsActivity;)V

    .line 832
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    if-eqz v2, :cond_0

    .line 833
    iget-object v2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$3;->this$0:Lcom/android/htccontacts/BrowseGroupsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 836
    .end local v0           #mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    :cond_0
    return-void
.end method
