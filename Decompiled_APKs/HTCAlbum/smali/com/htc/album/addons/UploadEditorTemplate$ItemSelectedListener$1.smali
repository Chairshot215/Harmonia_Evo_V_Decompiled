.class Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->onItemSelected(Lcom/htc/sunny2/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iput p2, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 1859
    :try_start_0
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][ActivityUploadEditor][onItemSelected]: index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->val$index:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-virtual {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadEditorMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1863
    iget v3, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->val$index:I

    .line 1864
    .local v3, curPos:I
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v8

    if-eq v8, v3, :cond_2

    .line 1865
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1866
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1867
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x10

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1869
    const/4 v1, 0x0

    .line 1870
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 1871
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v9, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 1872
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v8, "title"

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v9, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$900(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v8, "description"

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v9, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$800(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :cond_0
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v8, v3}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1002(Lcom/htc/album/addons/UploadEditorTemplate;I)I

    .line 1876
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v9, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .line 1877
    .restart local v1       #bundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$900(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1878
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$800(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;

    move-result-object v8

    const-string v9, "description"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1100(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1882
    .local v2, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1200(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1883
    .local v5, strTagDescriptionTitle:Ljava/lang/String;
    const-string v8, "tags_description"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1903
    .local v7, strTagWho:Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_6

    .line 1905
    :cond_1
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1300(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0056

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1906
    .local v6, strTagInitDescription:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1400(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1400(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #strTagDescriptionTitle:Ljava/lang/String;
    .end local v6           #strTagInitDescription:Ljava/lang/String;
    .end local v7           #strTagWho:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    const/4 v9, 0x1

    #calls: Lcom/htc/album/addons/UploadEditorTemplate;->setupUploadEditorTitle(Z)V
    invoke-static {v8, v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1500(Lcom/htc/album/addons/UploadEditorTemplate;Z)V

    .line 1918
    .end local v3           #curPos:I
    :cond_3
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1600(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 1919
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-eqz v0, :cond_5

    .line 1921
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-virtual {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->invalidateControlBars()V

    .line 1923
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v8, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v8}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v8

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v9, v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1002(Lcom/htc/album/addons/UploadEditorTemplate;I)I

    .line 1924
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->lastIndex:I
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->access$1700(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v9, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v9

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->lastIndex:I
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->access$1700(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;)I

    move-result v8

    if-eq v8, v12, :cond_4

    .line 1926
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v9, v9, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v9}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v9

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->lastIndex:I
    invoke-static {v8, v9}, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->access$1702(Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;I)I

    .line 1927
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-virtual {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->updateVisibleRange()V

    .line 1928
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->holdThumbThreads(Z)V

    .line 1930
    :cond_4
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-eqz v8, :cond_5

    .line 1932
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->val$index:I

    iget v11, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->val$index:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V

    .line 1938
    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    :cond_5
    :goto_1
    return-void

    .line 1910
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #context:Landroid/content/Context;
    .restart local v3       #curPos:I
    .restart local v5       #strTagDescriptionTitle:Ljava/lang/String;
    .restart local v7       #strTagWho:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1400(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener$1;->this$1:Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    iget-object v8, v8, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1400(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/Button;

    move-result-object v8

    const-string v9, "tags_description"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1935
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #curPos:I
    .end local v5           #strTagDescriptionTitle:Ljava/lang/String;
    .end local v7           #strTagWho:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1936
    .local v4, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][LocalFilmstripviewTemplate][onItemSelected]: set NG !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
