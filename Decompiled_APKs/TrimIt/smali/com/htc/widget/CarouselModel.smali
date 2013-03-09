.class Lcom/htc/widget/CarouselModel;
.super Ljava/lang/Object;
.source "CarouselModel.java"

# interfaces
.implements Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselModel$Row;
    }
.end annotation


# static fields
.field static final DEBUG_LOADERS:Z = false

.field static final LOCAL_LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CarouselModel"

.field private static final sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/widget/CarouselActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;

.field private mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

.field mMemoryModeCursor:Landroid/database/MatrixCursor;

.field mMemoryModeRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/CarouselModel$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mTabID:Ljava/lang/String;

.field private mTaskUri:Landroid/net/Uri;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/htc/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/CarouselActivity;)V
    .locals 2
    .parameter "carousel"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    .line 54
    iput-object v1, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 510
    iput-object v1, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 518
    iput-object v1, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method private addExistingTabMenoryMode(Lcom/htc/widget/TaskInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "index"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselModel$Row;

    iget-object v0, v1, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    .line 538
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 539
    return-void
.end method

.method private addTabMemoryModeAfterBatch(Ljava/lang/Object;)V
    .locals 5
    .parameter "cookie"

    .prologue
    .line 561
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 562
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 563
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 564
    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->convertCursorToArray()V

    .line 567
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, row:[Ljava/lang/Object;
    move-object v1, p1

    .line 568
    check-cast v1, Lcom/htc/widget/TaskInfo;

    .line 569
    .local v1, info:Lcom/htc/widget/TaskInfo;
    iget v3, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 570
    iget-object v3, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 571
    .local v0, index:I
    if-gez v0, :cond_3

    .line 572
    sget-object v3, Lcom/htc/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 573
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/widget/CarouselModel$Row;-><init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v0           #index:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselModel;->onAddTabComplete()V

    .line 581
    return-void

    .line 576
    .restart local v0       #index:I
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method private convertCursorToArray()V
    .locals 36

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/CarouselActivity;

    .line 620
    .local v6, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v6, :cond_1

    .line 621
    invoke-virtual {v6}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v5

    .line 623
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    .line 624
    const-string v34, "_id"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 625
    .local v13, idIndex1:I
    const-string v34, "task_tag"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 626
    .local v32, taskTagIndex1:I
    const-string v34, "task_name"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 627
    .local v28, taskNameIndex1:I
    const-string v34, "alternative_name"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 628
    .local v3, alternativeNameIndex1:I
    const-string v34, "intent"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 629
    .local v15, intentIndex1:I
    const-string v34, "res_package"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 630
    .local v23, resPackageIndex1:I
    const-string v34, "icon_resource"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 631
    .local v11, iconResourceIndex1:I
    const-string v34, "selected_icon_resource"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 632
    .local v26, selectedIconResourceIndex1:I
    const-string v34, "overlay_resource"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 633
    .local v21, overlayResourceIndex1:I
    const-string v34, "task_order"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 634
    .local v30, taskOrderIndex1:I
    const-string v34, "is_host"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 635
    .local v17, isHostIndex1:I
    const-string v34, "is_removable"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 636
    .local v19, isRemovableIndex1:I
    const-string v34, "count_text"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 637
    .local v7, countTextIndex1:I
    const-string v34, "count_text_visible"

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 639
    .local v9, countTextVisibleIndex1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "_id"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 640
    .local v14, idIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "task_tag"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 641
    .local v33, taskTagIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "task_name"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 642
    .local v29, taskNameIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "alternative_name"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 643
    .local v4, alternativeNameIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "intent"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 644
    .local v16, intentIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "res_package"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 645
    .local v24, resPackageIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "icon_resource"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 646
    .local v12, iconResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "selected_icon_resource"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 647
    .local v27, selectedIconResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "overlay_resource"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 648
    .local v22, overlayResourceIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "task_order"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 649
    .local v31, taskOrderIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "is_host"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 650
    .local v18, isHostIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "is_removable"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 651
    .local v20, isRemovableIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "count_text"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 652
    .local v8, countTextIndex2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    const-string v35, "count_text_visible"

    invoke-virtual/range {v34 .. v35}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 653
    .local v10, countTextVisibleIndex2:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 655
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v34

    if-gtz v34, :cond_2

    .line 676
    .end local v3           #alternativeNameIndex1:I
    .end local v4           #alternativeNameIndex2:I
    .end local v5           #c:Landroid/database/Cursor;
    .end local v7           #countTextIndex1:I
    .end local v8           #countTextIndex2:I
    .end local v9           #countTextVisibleIndex1:I
    .end local v10           #countTextVisibleIndex2:I
    .end local v11           #iconResourceIndex1:I
    .end local v12           #iconResourceIndex2:I
    .end local v13           #idIndex1:I
    .end local v14           #idIndex2:I
    .end local v15           #intentIndex1:I
    .end local v16           #intentIndex2:I
    .end local v17           #isHostIndex1:I
    .end local v18           #isHostIndex2:I
    .end local v19           #isRemovableIndex1:I
    .end local v20           #isRemovableIndex2:I
    .end local v21           #overlayResourceIndex1:I
    .end local v22           #overlayResourceIndex2:I
    .end local v23           #resPackageIndex1:I
    .end local v24           #resPackageIndex2:I
    .end local v26           #selectedIconResourceIndex1:I
    .end local v27           #selectedIconResourceIndex2:I
    .end local v28           #taskNameIndex1:I
    .end local v29           #taskNameIndex2:I
    .end local v30           #taskOrderIndex1:I
    .end local v31           #taskOrderIndex2:I
    .end local v32           #taskTagIndex1:I
    .end local v33           #taskTagIndex2:I
    :cond_1
    :goto_0
    return-void

    .line 656
    .restart local v3       #alternativeNameIndex1:I
    .restart local v4       #alternativeNameIndex2:I
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v7       #countTextIndex1:I
    .restart local v8       #countTextIndex2:I
    .restart local v9       #countTextVisibleIndex1:I
    .restart local v10       #countTextVisibleIndex2:I
    .restart local v11       #iconResourceIndex1:I
    .restart local v12       #iconResourceIndex2:I
    .restart local v13       #idIndex1:I
    .restart local v14       #idIndex2:I
    .restart local v15       #intentIndex1:I
    .restart local v16       #intentIndex2:I
    .restart local v17       #isHostIndex1:I
    .restart local v18       #isHostIndex2:I
    .restart local v19       #isRemovableIndex1:I
    .restart local v20       #isRemovableIndex2:I
    .restart local v21       #overlayResourceIndex1:I
    .restart local v22       #overlayResourceIndex2:I
    .restart local v23       #resPackageIndex1:I
    .restart local v24       #resPackageIndex2:I
    .restart local v26       #selectedIconResourceIndex1:I
    .restart local v27       #selectedIconResourceIndex2:I
    .restart local v28       #taskNameIndex1:I
    .restart local v29       #taskNameIndex2:I
    .restart local v30       #taskOrderIndex1:I
    .restart local v31       #taskOrderIndex2:I
    .restart local v32       #taskTagIndex1:I
    .restart local v33       #taskTagIndex2:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 657
    .local v25, row:[Ljava/lang/Object;
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v14

    .line 658
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v33

    .line 659
    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v29

    .line 660
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v4

    .line 661
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v16

    .line 662
    move/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v24

    .line 663
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v12

    .line 664
    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v27

    .line 665
    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v22

    .line 666
    move/from16 v0, v30

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v31

    .line 667
    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v18

    .line 668
    move/from16 v0, v19

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v20

    .line 669
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v25, v8

    .line 670
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v25, v10

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    new-instance v35, Lcom/htc/widget/CarouselModel$Row;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/CarouselModel$Row;-><init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-nez v34, :cond_0

    goto/16 :goto_0
.end method

.method private findTag(Ljava/lang/String;)I
    .locals 6
    .parameter "taskTag"

    .prologue
    .line 525
    iget-object v4, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v5, "task_tag"

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 526
    .local v3, taskTagIndex:I
    const/4 v1, 0x0

    .line 527
    .local v1, row:Lcom/htc/widget/CarouselModel$Row;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/htc/widget/CarouselModel$Row;
    check-cast v1, Lcom/htc/widget/CarouselModel$Row;

    .line 529
    .restart local v1       #row:Lcom/htc/widget/CarouselModel$Row;
    iget-object v4, v1, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aget-object v2, v4, v3

    check-cast v2, Ljava/lang/String;

    .line 530
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    .end local v0           #i:I
    .end local v2           #tag:Ljava/lang/String;
    :goto_1
    return v0

    .line 527
    .restart local v0       #i:I
    .restart local v2       #tag:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "packageName"
    .parameter "resourceName"

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 296
    .local v0, icon:Landroid/content/Intent$ShortcutIconResource;
    iput-object p0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 297
    iput-object p1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 298
    return-object v0
.end method

.method private initialMemoryModeCursor()V
    .locals 2

    .prologue
    .line 521
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/htc/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 522
    return-void
.end method

.method private updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 682
    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->convertCursorToArray()V

    .line 685
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/CarouselModel;->updateTabMemoryMode(ILjava/lang/Object;)V

    .line 686
    invoke-virtual {p0}, Lcom/htc/widget/CarouselModel;->onAddTabComplete()V

    .line 687
    return-void
.end method


# virtual methods
.method public addTabMemoryMode(ILjava/lang/Object;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 543
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .local v2, row:[Ljava/lang/Object;
    move-object v1, p2

    .line 547
    check-cast v1, Lcom/htc/widget/TaskInfo;

    .line 548
    .local v1, info:Lcom/htc/widget/TaskInfo;
    iget v3, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 549
    iget-object v3, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, index:I
    if-gez v0, :cond_3

    .line 551
    sget-object v3, Lcom/htc/widget/CarouselModel;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/TaskInfo;->toArrayDefault([Ljava/lang/Object;I)V

    .line 552
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/widget/CarouselModel$Row;

    invoke-direct {v4, p0, v2}, Lcom/htc/widget/CarouselModel$Row;-><init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v0           #index:I
    :cond_2
    :goto_0
    return-void

    .line 555
    .restart local v0       #index:I
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/htc/widget/CarouselModel;->addExistingTabMenoryMode(Lcom/htc/widget/TaskInfo;I)V

    goto :goto_0
.end method

.method addTaskToDatabase(Landroid/content/Context;Lcom/htc/widget/TaskInfo;)V
    .locals 8
    .parameter "context"
    .parameter "task"

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 136
    .local v3, taskUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x386

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task_tag=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p2, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "task_order"

    move-object v2, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startCheckInsertOrUpdate(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    .line 718
    return-void
.end method

.method clean()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method cleanTasks()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    return-void
.end method

.method cleanTasks(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 81
    .local v1, taskUri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public deleteTabMemoryMode(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 732
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 734
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 735
    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->convertCursorToArray()V

    .line 738
    :cond_1
    const/4 v1, 0x0

    .local v1, row:Lcom/htc/widget/CarouselModel$Row;
    move-object v2, p2

    .line 739
    check-cast v2, Ljava/lang/String;

    .line 742
    .local v2, taskTag:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v0

    .line 743
    .local v0, i:I
    if-ltz v0, :cond_2

    .line 744
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #row:Lcom/htc/widget/CarouselModel$Row;
    check-cast v1, Lcom/htc/widget/CarouselModel$Row;

    .line 746
    .restart local v1       #row:Lcom/htc/widget/CarouselModel$Row;
    :cond_2
    return-void
.end method

.method getHandler(Landroid/content/Context;)Lcom/htc/content/NotifyingAsyncQueryHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method final getTabSpecTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/widget/CarouselHost$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method isProviderAP(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    .line 70
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 73
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 4
    .parameter "cookie"
    .parameter "cursor"
    .parameter "values"
    .parameter "token"
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 447
    move-object v1, p1

    check-cast v1, Lcom/htc/widget/TaskInfo;

    .line 448
    .local v1, task:Lcom/htc/widget/TaskInfo;
    invoke-virtual {v1, p2, p3}, Lcom/htc/widget/TaskInfo;->syncWithDatabase(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v0

    .line 449
    .local v0, isUpdateRequired:Z
    if-eqz v0, :cond_1

    .line 450
    iget v2, v1, Lcom/htc/widget/TaskInfo;->isHost:I

    if-nez v2, :cond_0

    .line 451
    const/16 v2, 0x3ed

    aput v2, p4, v3

    .line 460
    :goto_0
    iget-object v2, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    aput-object v2, p5, v3

    .line 461
    return-void

    .line 454
    :cond_0
    const/16 v2, 0x3ee

    aput v2, p4, v3

    goto :goto_0

    .line 457
    :cond_1
    const/16 v2, 0x3f0

    aput v2, p4, v3

    goto :goto_0
.end method

.method public notifyDataSetChanged(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselModel;->updateHashTable(Landroid/database/Cursor;)V

    .line 706
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 707
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    .line 709
    .local v1, host:Lcom/htc/widget/CarouselHost;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getStateMode()I

    move-result v3

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_0

    .line 710
    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, tag:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 713
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAddTabComplete()V
    .locals 4

    .prologue
    .line 690
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 692
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 693
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 694
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselModel$Row;

    iget-object v2, v2, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 698
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    .line 700
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 476
    sparse-switch p1, :sswitch_data_0

    .line 507
    .end local p3
    :goto_0
    :sswitch_0
    return-void

    .line 480
    .restart local p3
    :sswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 486
    .restart local p3
    :sswitch_2
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/widget/CarouselModel;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 497
    .restart local p3
    :sswitch_3
    check-cast p3, Landroid/net/Uri;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 503
    .restart local p3
    :sswitch_4
    check-cast p3, Landroid/net/Uri;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/CarouselModel;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_2
        0x3f0 -> :sswitch_0
        0x44c -> :sswitch_3
        0x44d -> :sswitch_4
    .end sparse-switch
.end method

.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 304
    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 414
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 416
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_0

    .line 417
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 442
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselActivity;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    return-void

    .line 419
    :sswitch_0
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 420
    invoke-direct {p0, p1, p4}, Lcom/htc/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_0

    .line 423
    :sswitch_1
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 424
    invoke-direct {p0, p1, p4}, Lcom/htc/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_0

    .line 427
    :sswitch_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 428
    invoke-direct {p0, p1, p4}, Lcom/htc/widget/CarouselModel;->updateTabMemoryModeAfterBatch(ILjava/lang/Object;)V

    goto :goto_0

    .line 431
    :sswitch_3
    invoke-virtual {v0, v2}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 432
    invoke-direct {p0, p2}, Lcom/htc/widget/CarouselModel;->addTabMemoryModeAfterBatch(Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :sswitch_4
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_2
        0x3ef -> :sswitch_0
    .end sparse-switch
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 311
    packed-switch p1, :pswitch_data_0

    .line 319
    :pswitch_0
    return-void

    .line 311
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 326
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    invoke-virtual {v0, p3}, Lcom/htc/widget/CarouselActivity;->setBinAdapterCursor(Landroid/database/Cursor;)V

    .line 328
    if-nez p3, :cond_0

    .line 329
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    goto :goto_0

    .line 332
    :cond_1
    if-eqz p3, :cond_0

    .line 333
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 340
    .end local v0           #carousel:Lcom/htc/widget/CarouselActivity;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 342
    .restart local v0       #carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 343
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 344
    invoke-virtual {v0, p3}, Lcom/htc/widget/CarouselActivity;->setWidgetAdapterCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 346
    :cond_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 349
    :cond_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 357
    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 358
    .local v0, carousel:Lcom/htc/widget/CarouselActivity;
    if-nez v0, :cond_0

    .line 408
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 361
    .restart local p2
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 378
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 379
    .local v1, pos:I
    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselActivity;->updateWidget(I)V

    goto :goto_0

    .line 365
    .end local v1           #pos:I
    .restart local p2
    :pswitch_3
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onTaskSync()V

    goto :goto_0

    .line 371
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 372
    .restart local v1       #pos:I
    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselActivity;->updateWidget(I)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 4
    .parameter "cookie"
    .parameter "values"
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 464
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/TaskInfo;

    .line 465
    .local v0, task:Lcom/htc/widget/TaskInfo;
    iget v1, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 466
    invoke-virtual {v0, p2}, Lcom/htc/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 467
    const/16 v1, 0x44c

    aput v1, p3, v3

    .line 472
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/widget/TaskInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 470
    const/16 v1, 0x44d

    aput v1, p3, v3

    goto :goto_0
.end method

.method removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 124
    iget-object v3, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 128
    .local v3, taskUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x4b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task_tag=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "context"
    .parameter "tag"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 195
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v4, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 200
    .local v3, taskNameUri:Landroid/net/Uri;
    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "alternativeName"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 205
    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ef

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    return-void

    .line 207
    .end local v3           #taskNameUri:Landroid/net/Uri;
    .restart local p3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 208
    .restart local v3       #taskNameUri:Landroid/net/Uri;
    const-string v0, "alternate_name"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alternativeName"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 213
    const-string v0, "alternate_name"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 8
    .parameter "context"
    .parameter "tag"
    .parameter "text"

    .prologue
    const/4 v7, -0x1

    .line 177
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 180
    .local v3, countTextUri:Landroid/net/Uri;
    const-string v0, "count_text"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "countText"

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 185
    const-string v0, "count_text"

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3eb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    return v7
.end method

.method setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 8
    .parameter "context"
    .parameter "tag"
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 153
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v4, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 156
    .local v3, countTextUri:Landroid/net/Uri;
    const-string v0, "count_text_visible"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 157
    if-ne p3, v5, :cond_1

    .line 158
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 161
    const-string v0, "countTextVisible"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/16 v1, 0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 173
    return v7

    .line 163
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    iget-object v2, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "taskTag"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countTextVisible"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 166
    const-string v0, "countTextVisible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mAuthority:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/htc/widget/CarouselModel;->mTaskUri:Landroid/net/Uri;

    .line 64
    const-string v0, "gId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mTabID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public startProcessingOperations(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p1, p0, p0}, Lcom/htc/content/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListener;Lcom/htc/content/NotifyingAsyncQueryHandler$AsyncQueryListenerExt;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/content/NotifyingAsyncQueryHandler;->IsProcessingRightAway()Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/htc/widget/CarouselModel;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startProcessingOperations()V

    .line 728
    :cond_1
    return-void
.end method

.method syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 8
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 86
    if-nez p2, :cond_1

    .line 117
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselActivity;

    .line 91
    .local v1, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 97
    invoke-virtual {p2, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 98
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 101
    const-string v7, "task_tag"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 103
    .local v6, taskTagIndex:I
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    .line 106
    .local v2, host:Lcom/htc/widget/CarouselHost;
    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v2, v5}, Lcom/htc/widget/CarouselHost;->closeTabByTag(Ljava/lang/String;)V

    .line 110
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/CarouselHost$TabSpec;

    .line 111
    .local v4, t:Lcom/htc/widget/CarouselHost$TabSpec;
    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v4}, Lcom/htc/widget/CarouselHost$TabSpec;->doClean()V

    .line 96
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method updateHashTable(Landroid/database/Cursor;)V
    .locals 32
    .parameter "c"

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselActivity;

    .line 228
    .local v3, carousel:Lcom/htc/widget/CarouselActivity;
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {v3}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    .line 233
    .local v4, carouselHost:Lcom/htc/widget/CarouselHost;
    :try_start_0
    const-string v27, "task_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 234
    .local v24, taskTagIndex:I
    const-string v27, "task_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 235
    .local v22, taskNameIndex:I
    const-string v27, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 236
    .local v13, intentIndex:I
    const-string v27, "res_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 237
    .local v17, packageIndex:I
    const-string v27, "icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 238
    .local v10, iconIndex:I
    const-string v27, "selected_icon_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 239
    .local v20, selectedIconIndex:I
    const-string v27, "overlay_resource"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 240
    .local v16, overlayIndex:I
    const-string v27, "count_text"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 241
    .local v6, countTextIndex:I
    const-string v27, "count_text_visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 245
    .local v7, countTextVisibleIndex:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v27

    if-lez v27, :cond_0

    .line 250
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 251
    .local v23, taskTag:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 252
    .local v21, taskName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, intentDescription:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 254
    .local v18, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, icon:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 256
    .local v19, selectedIcon:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 257
    .local v15, overlay:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, countText:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 261
    .local v14, isCountTextVisible:I
    const/16 v27, 0x0

    :try_start_1
    move/from16 v0, v27

    invoke-static {v12, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 265
    .local v11, intent:Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/CarouselHost$TabSpec;

    .line 266
    .local v26, ts:Lcom/htc/widget/CarouselHost$TabSpec;
    if-eqz v26, :cond_3

    .line 267
    new-instance v25, Lcom/htc/widget/TaskInfo;

    invoke-direct/range {v25 .. v25}, Lcom/htc/widget/TaskInfo;-><init>()V

    .line 268
    .local v25, ti:Lcom/htc/widget/TaskInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 269
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 270
    move-object/from16 v0, v25

    iput-object v12, v0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 271
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 272
    move-object/from16 v0, v25

    iput-object v9, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 273
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 274
    move-object/from16 v0, v25

    iput-object v15, v0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 275
    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/htc/widget/TaskInfo;->countText:Ljava/lang/String;

    .line 276
    move-object/from16 v0, v25

    iput v14, v0, Lcom/htc/widget/TaskInfo;->isCountTextVisible:I

    .line 278
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/CarouselHost;->CloseActivityIfRunning(Lcom/htc/widget/CarouselHost$TabSpec;Lcom/htc/widget/TaskInfo;)V

    .line 281
    .end local v25           #ti:Lcom/htc/widget/TaskInfo;
    :cond_3
    if-nez v26, :cond_4

    .line 282
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v28

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v29

    invoke-static/range {v18 .. v19}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v30

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/htc/widget/CarouselModel;->getShortcutIconResource(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v31

    invoke-virtual/range {v27 .. v31}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v26

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselModel;->mTasks:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v11           #intent:Landroid/content/Intent;
    .end local v26           #ts:Lcom/htc/widget/CarouselHost$TabSpec;
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    if-nez v27, :cond_2

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v8

    .line 263
    .local v8, e:Ljava/net/URISyntaxException;
    goto :goto_1

    .line 291
    .end local v5           #countText:Ljava/lang/String;
    .end local v6           #countTextIndex:I
    .end local v7           #countTextVisibleIndex:I
    .end local v8           #e:Ljava/net/URISyntaxException;
    .end local v9           #icon:Ljava/lang/String;
    .end local v10           #iconIndex:I
    .end local v12           #intentDescription:Ljava/lang/String;
    .end local v13           #intentIndex:I
    .end local v14           #isCountTextVisible:I
    .end local v15           #overlay:Ljava/lang/String;
    .end local v16           #overlayIndex:I
    .end local v17           #packageIndex:I
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #selectedIcon:Ljava/lang/String;
    .end local v20           #selectedIconIndex:I
    .end local v21           #taskName:Ljava/lang/String;
    .end local v22           #taskNameIndex:I
    .end local v23           #taskTag:Ljava/lang/String;
    .end local v24           #taskTagIndex:I
    :catchall_0
    move-exception v27

    throw v27
.end method

.method public updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 585
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/CarouselModel;->initialMemoryModeCursor()V

    .line 586
    :cond_0
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    .line 588
    :cond_1
    const/4 v7, 0x0

    .local v7, row:Lcom/htc/widget/CarouselModel$Row;
    move-object v9, p2

    .line 589
    check-cast v9, Landroid/net/Uri;

    .line 590
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "taskTag"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, taskTag:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/widget/CarouselModel;->findTag(Ljava/lang/String;)I

    move-result v6

    .line 593
    .local v6, i:I
    if-ltz v6, :cond_2

    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeRows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #row:Lcom/htc/widget/CarouselModel$Row;
    check-cast v7, Lcom/htc/widget/CarouselModel$Row;

    .line 595
    .restart local v7       #row:Lcom/htc/widget/CarouselModel$Row;
    :cond_2
    if-eqz v7, :cond_3

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 615
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 598
    :pswitch_1
    const-string v10, "countText"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, countText:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 600
    .local v3, countTextIndex:I
    iget-object v10, v7, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v2, v10, v3

    goto :goto_0

    .line 603
    .end local v2           #countText:Ljava/lang/String;
    .end local v3           #countTextIndex:I
    :pswitch_2
    const-string v10, "countTextVisible"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 604
    .local v4, countTextVisible:I
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "count_text_visible"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 605
    .local v5, countTextVisibleIndex:I
    iget-object v10, v7, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_0

    .line 608
    .end local v4           #countTextVisible:I
    .end local v5           #countTextVisibleIndex:I
    :pswitch_3
    const-string v10, "alternativeName"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, alternativeName:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/widget/CarouselModel;->mMemoryModeCursor:Landroid/database/MatrixCursor;

    const-string v11, "alternative_name"

    invoke-virtual {v10, v11}, Landroid/database/MatrixCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 610
    .local v1, alternativeNameIndex:I
    iget-object v10, v7, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    aput-object v0, v10, v1

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
