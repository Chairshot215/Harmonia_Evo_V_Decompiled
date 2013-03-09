.class Lcom/htc/app/FilePickerActivity$11;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isScanning:Z

.field final synthetic this$0:Lcom/htc/app/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerActivity$11;->isScanning:Z

    return-void
.end method

.method private setIsScanning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/FilePickerActivity$11;->isScanning:Z

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/app/FilePickerActivity$11;->isScanning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$2600(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$2600(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2400(Lcom/htc/app/FilePickerActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c0133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onFileScan(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerActivity$11;->setIsScanning(Z)V

    iget-object v0, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mItemCountTextSubfix:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/app/FilePickerActivity;->access$2700(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFileScanEnd()V
    .locals 7

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #setter for: Lcom/htc/app/FilePickerActivity;->mIsStopScan:Z
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerActivity;->access$2802(Lcom/htc/app/FilePickerActivity;Z)Z

    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerActivity$11;->setIsScanning(Z)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v0

    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    if-gt v0, v4, :cond_1

    move v2, v3

    :goto_0
    #setter for: Lcom/htc/app/FilePickerActivity;->isEnableOptionMenu:Z
    invoke-static {v6, v2}, Lcom/htc/app/FilePickerActivity;->access$2902(Lcom/htc/app/FilePickerActivity;Z)Z

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2200(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1300(Lcom/htc/app/FilePickerActivity;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->hideView(I)V
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$3000(Lcom/htc/app/FilePickerActivity;I)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mBottomBar:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$3200(Lcom/htc/app/FilePickerActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mSelectionType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerActivity;->access$100(Lcom/htc/app/FilePickerActivity;)I

    move-result v6

    if-ne v6, v4, :cond_4

    if-lez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2200(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mNoFileFoundText:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerActivity;->access$3300(Lcom/htc/app/FilePickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mItemCountTextPrefix:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2600(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v4}, Lcom/htc/app/FilePickerActivity;->access$2100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mItemCountTextSubfix:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2700(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mHtcContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/app/FilePickerActivity;->access$2400(Lcom/htc/app/FilePickerActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x20c0133

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mFileListHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$3400(Lcom/htc/app/FilePickerActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x20200ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/app/AnimatedImageView;

    invoke-virtual {v1}, Lcom/htc/app/AnimatedImageView;->stopAnimation()V

    invoke-virtual {v1, v5}, Lcom/htc/app/AnimatedImageView;->setVisibility(I)V

    return-void

    :cond_1
    move v2, v4

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mListView:Lcom/htc/app/FilePickerListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$3100(Lcom/htc/app/FilePickerActivity;)Lcom/htc/app/FilePickerListView;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mCurrentViewType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$1300(Lcom/htc/app/FilePickerActivity;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #getter for: Lcom/htc/app/FilePickerActivity;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerActivity;->access$2200(Lcom/htc/app/FilePickerActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerActivity$11;->this$0:Lcom/htc/app/FilePickerActivity;

    #calls: Lcom/htc/app/FilePickerActivity;->hideView(I)V
    invoke-static {v2, v3}, Lcom/htc/app/FilePickerActivity;->access$3000(Lcom/htc/app/FilePickerActivity;I)V

    goto/16 :goto_1

    :cond_4
    move v3, v5

    goto/16 :goto_2
.end method
