.class Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "downloadList"

    .prologue
    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 280
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 17
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const/4 v1, 0x1

    .line 333
    :goto_0
    return v1

    .line 308
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 333
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 310
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 311
    .local v12, downloadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V
    invoke-static {v1, v4, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$1200(Lcom/android/providers/downloads/ui/DownloadList;J)V

    goto :goto_2

    .line 314
    .end local v12           #downloadId:Ljava/lang/Long;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v15

    .line 315
    .local v15, lv:Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v10

    .line 316
    .local v10, checkedPositionList:Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 317
    .local v11, checkedPositionListSize:I
    const/16 v16, 0x0

    .line 318
    .local v16, sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v11, :cond_3

    .line 319
    invoke-virtual {v10, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 320
    .local v3, position:I
    const/4 v1, 0x0

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const/4 v1, 0x0

    invoke-virtual {v15, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 322
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 318
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 325
    .end local v3           #position:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 327
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_1

    .line 330
    .end local v10           #checkedPositionList:Landroid/util/SparseBooleanArray;
    .end local v11           #checkedPositionListSize:I
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #lv:Landroid/widget/ListView;
    .end local v16           #sharedFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/downloads/ui/DownloadItem;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->shareDownloadedFiles()Z

    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1100(Lcom/android/providers/downloads/ui/DownloadList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 296
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 299
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 285
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->isCurrentViewExpandableListView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 342
    .local v0, ev:Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 343
    .local v1, pos:J
    if-eqz p5, :cond_0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    .line 351
    .end local v0           #ev:Landroid/widget/ExpandableListView;
    .end local v1           #pos:J
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3, p1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method
