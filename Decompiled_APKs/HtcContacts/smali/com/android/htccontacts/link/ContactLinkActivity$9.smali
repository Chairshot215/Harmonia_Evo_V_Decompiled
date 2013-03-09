.class Lcom/android/htccontacts/link/ContactLinkActivity$9;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;->needCreateNameDialog(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 1873
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3400(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateName(Ljava/lang/String;J)V

    .line 1876
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1300(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 1878
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1879
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$9;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 1882
    return-void
.end method
