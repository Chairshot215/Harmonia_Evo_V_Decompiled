.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;
.super Landroid/os/Handler;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "m"

    .prologue
    const/4 v11, 0x1

    .line 83
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v10

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 91
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v10

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 97
    .local v6, position:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 98
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 100
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v3

    .line 101
    .local v3, first:I
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v5

    .line 103
    .local v5, last:I
    const-string v10, "ActivityAlbumFolderSelector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_SET_BITMAP: first="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " last="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " position="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-gt v3, v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 106
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v10

    sub-int v11, v6, v3

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 107
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 108
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 109
    .local v8, vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    const-string v10, "ActivityAlbumFolderSelector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_SET_BITMAP: vTag.position="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v8, :cond_0

    iget v10, v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    if-ne v10, v6, :cond_0

    .line 113
    iget-object v10, v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 119
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #first:I
    .end local v5           #last:I
    .end local v6           #position:I
    .end local v7           #v:Landroid/view/View;
    .end local v8           #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    :pswitch_2
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 120
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 121
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 122
    .restart local v7       #v:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 123
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 124
    .restart local v8       #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    if-eqz v8, :cond_0

    .line 126
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v10}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 127
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 129
    iget-object v9, v8, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 130
    .local v9, viewChkbox:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v9, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v10

    if-ne v11, v10, :cond_3

    .line 133
    invoke-virtual {v9, v11}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 120
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
