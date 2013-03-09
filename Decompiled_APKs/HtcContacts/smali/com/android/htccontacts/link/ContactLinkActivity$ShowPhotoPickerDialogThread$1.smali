.class Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1684
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v4, v4, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1686
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030059

    invoke-virtual {v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1688
    .local v0, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->shouldAssginPhoto()Z
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2800(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    move-result v2

    .line 1690
    .local v2, showHeaderView:Z
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1691
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    new-instance v4, Lcom/android/htccontacts/link/pickPhotoAdapter;

    iget-object v5, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v5, v5, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v6, v6, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3000(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/link/pickPhotoAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2902(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/pickPhotoAdapter;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    .line 1692
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoCursorRegistered:Z
    invoke-static {v3, v7}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3102(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z

    .line 1699
    :goto_0
    if-eqz v2, :cond_0

    .line 1700
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v4, v4, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/link/pickPhotoAdapter;->newStaticView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1701
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v4, v4, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/link/pickPhotoAdapter;->newStaticView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1703
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3200(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->isSNExisted:Z
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3300(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3400(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/link/MergeContact;->isPhotoExisted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1704
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v4, v4, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/link/pickPhotoAdapter;->newStaticView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1707
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mRawContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3200(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1708
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/link/pickPhotoAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1710
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1711
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080700

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1712
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 1713
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->clPickPhoto:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3500(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1715
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v5, v5, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0284

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;
    invoke-static {v3, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3602(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1719
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3700(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1720
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v4, v4, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;
    invoke-static {v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1721
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dPhoto:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1722
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dPhotoDirty:Z
    invoke-static {v3, v8}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3802(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z

    .line 1724
    :cond_3
    return-void

    .line 1695
    :cond_4
    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPhotoAdapter:Lcom/android/htccontacts/link/pickPhotoAdapter;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickPhotoAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;

    iget-object v4, v4, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cPhoto:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3000(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/link/pickPhotoAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method
