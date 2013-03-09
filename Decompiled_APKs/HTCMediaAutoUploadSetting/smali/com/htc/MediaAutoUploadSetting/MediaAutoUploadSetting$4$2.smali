.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

.field final synthetic val$infos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iput-object p2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->val$infos:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 582
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 583
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 586
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceIndex:I
    invoke-static {v0, p2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2402(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 587
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->val$infos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$102(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->val$infos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v2, v2, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2502(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitleTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2500(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitle:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$202(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadServiceComponent:Landroid/content/ComponentName;
    invoke-static {v0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$302(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 594
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    const/4 v1, -0x1

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 600
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mReadablePrivacyList:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1002(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 601
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mMoreImageView:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->restorePrivacySetting(Ljava/util/ArrayList;)V
    invoke-static {v0, v3}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)V

    .line 605
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 608
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->showBusyCursor()V
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    .line 609
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v0, v0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$2;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v1, v1, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->queryAlbumByService(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$2800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)V

    .line 611
    :cond_1
    return-void
.end method
