.class Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/UploadEditorTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnTagButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 1953
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v10, v10, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v10, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v10}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1954
    .local v3, center:I
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1900(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1956
    .local v4, images:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_0

    .line 1958
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[LocalFilmstripViewTemplate][OnTagButtonOnClickListener]: images NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    :goto_0
    return-void

    .line 1962
    :cond_0
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1964
    invoke-static {}, Lcom/htc/album/addons/UploadEditorTemplate;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[LocalFilmstripViewTemplate][OnTagButtonOnClickListener]: mBundleArrayList NG !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1968
    :cond_1
    const/4 v2, 0x0

    .line 1969
    .local v2, bundleTemp:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/htc/album/addons/UploadEditorTemplate;->access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I
    invoke-static {v11}, Lcom/htc/album/addons/UploadEditorTemplate;->access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bundleTemp:Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .line 1972
    .restart local v2       #bundleTemp:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1974
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "clear_top5_frined_list"

    iget-object v11, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mbCleanTop5FrinedList:Z
    invoke-static {v11}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2000(Lcom/htc/album/addons/UploadEditorTemplate;)Z

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1977
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v11, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I
    invoke-static {v11}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2100(Lcom/htc/album/addons/UploadEditorTemplate;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/album/addons/UploadEditorTemplate;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    .line 1978
    .local v6, strServiceName:Ljava/lang/String;
    const-string v10, "service"

    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v9, tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    new-instance v8, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v10

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    .local v8, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    const-string v10, "tags"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1988
    .local v7, tagArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {v8, v7}, Lcom/htc/album/TagUtils/TagPhotoInfo;->setTags(Ljava/util/ArrayList;)V

    .line 1989
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    const-string v10, "photoList"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1995
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v10}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2200(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1996
    .local v0, activity:Landroid/app/Activity;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1997
    .local v5, intent:Landroid/content/Intent;
    instance-of v10, v0, Lcom/htc/album/addons/ActivityUploadEditor;

    if-eqz v10, :cond_2

    .line 1998
    const-string v11, "foreign_source"

    move-object v10, v0

    check-cast v10, Lcom/htc/album/addons/ActivityUploadEditor;

    iget-boolean v10, v10, Lcom/htc/album/addons/ActivityUploadEditor;->mShareForeignSource:Z

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1999
    :cond_2
    const-class v10, Lcom/htc/album/addons/ActivityTagView;

    invoke-virtual {v5, v0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2000
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2010
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    const/4 v11, 0x0

    #setter for: Lcom/htc/album/addons/UploadEditorTemplate;->mbCleanTop5FrinedList:Z
    invoke-static {v10, v11}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2002(Lcom/htc/album/addons/UploadEditorTemplate;Z)Z

    .line 2012
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v10}, Lcom/htc/album/addons/UploadEditorTemplate;->access$2300(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x88b9

    invoke-virtual {v10, v5, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
