.class Lcom/android/htccontacts/link/ContactLinkActivity$8;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;->needCreatePhotoDialog(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

.field final synthetic val$showHeaderView:Z


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iput-boolean p2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->val$showHeaderView:Z

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
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1757
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    if-eqz v1, :cond_2

    .line 1758
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    iget v1, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 1786
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1787
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1789
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v1, v1, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1790
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v1, v1, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 1791
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->resetDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4100(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 1793
    :cond_2
    return-void

    .line 1760
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->doPickPhotoAction()Z
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3900(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    goto :goto_0

    .line 1763
    :pswitch_2
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->doPickPhotoCamera()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4000(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    goto :goto_0

    .line 1766
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->val$showHeaderView:Z

    if-eqz v1, :cond_4

    add-int/lit8 v0, p3, -0x2

    .line 1767
    .local v0, pos:I
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3000(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1769
    sget-object v1, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1770
    sput-object v2, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    .line 1771
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2300(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkContactListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/link/LinkContactListAdapter;->notifyDataSetChanged()V

    .line 1773
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3400(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3000(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updatePhotoByRawContact(J)V

    .line 1774
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1300(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    goto :goto_0

    .end local v0           #pos:I
    :cond_4
    move v0, p3

    .line 1766
    goto :goto_1

    .line 1779
    :pswitch_4
    sget-object v1, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 1780
    sput-object v2, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    .line 1781
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2300(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkContactListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/link/LinkContactListAdapter;->notifyDataSetChanged()V

    .line 1783
    :cond_5
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$8;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->doRemovePhotoAction()V

    goto/16 :goto_0

    .line 1758
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
