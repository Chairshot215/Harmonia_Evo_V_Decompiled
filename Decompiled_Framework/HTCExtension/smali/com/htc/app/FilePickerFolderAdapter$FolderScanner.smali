.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderScanner"
.end annotation


# static fields
.field private static final MESSAGE_SCAN_END:I = 0xa6

.field private static final MESSAGE_UPDATE_LIST_ITEM:I = 0xa5

.field private static final TAG:Ljava/lang/String; = "FolderScanner"


# instance fields
.field private final IntervalNum:I

.field private final IntervalTime:I

.field private MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private isDoAppendFlag:Z

.field private isRoot:Z

.field private isStop:Z

.field private mCurrentExItem:Lcom/htc/app/FolderItemInfo;

.field private mCurrentlist:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mScanToken:Ljava/lang/Object;

.field private resultItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private scanEndRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;

.field private updateListItemRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IntervalNum:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IntervalTime:I

    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mScanToken:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkSubFolderHasFile(Ljava/io/File;)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private doFlatModeScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-boolean v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/app/FilePickerUtil;->IsMultiPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;Z)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_1
.end method

.method private doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->IsMultiPath(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v16

    move-object/from16 v23, v16

    :goto_0
    return-object v23

    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v17

    const-wide/16 v25, 0x1f4

    cmp-long v23, v23, v25

    if-ltz v23, :cond_3

    const/4 v14, 0x1

    :goto_2
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v22, 0x0

    if-eqz v10, :cond_4

    array-length v11, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v0, v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    :cond_1
    :goto_3
    if-lez v11, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v3, v10

    array-length v15, v3

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v15, :cond_9

    aget-object v9, v3, v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static/range {v23 .. v24}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    goto :goto_3

    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v23

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/app/FilePickerUtil;->checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    new-instance v23, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v23, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v19

    const-wide/16 v25, 0x1f4

    rem-long v23, v23, v25

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_6

    move/from16 v0, v22

    if-eq v0, v7, :cond_6

    move/from16 v22, v7

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/LinkedList;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0xa5

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    new-instance v23, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v24, 0x0

    new-instance v26, Ljava/io/File;

    sget-object v27, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x1

    invoke-direct/range {v23 .. v27}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    move-object/from16 v23, v16

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    new-instance v23, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v24, 0x0

    new-instance v26, Ljava/io/File;

    sget-object v27, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x1

    invoke-direct/range {v23 .. v27}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private doListModeScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-boolean v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/app/FilePickerUtil;->IsMultiPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFilesTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;Z)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_1
.end method

.method private doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    iget-boolean v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_0
    new-instance v1, Ljava/io/File;

    aget-object v6, v2, v3

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerUtil;->checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v6, Lcom/htc/app/FolderItemInfo;

    invoke-direct {v6, v9, v10, v1}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v6, Lcom/htc/app/FolderItemInfo;

    invoke-direct {v6, v9, v10, v1}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v6, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    goto :goto_1
.end method

.method private mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p2, p1

    goto :goto_0
.end method

.method private scanAllFilesTask(Ljava/io/File;)Ljava/util/LinkedList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_0

    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v11

    :goto_0
    return-object v11

    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v3

    array-length v8, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v2, v0, v7

    iget-boolean v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1008(Lcom/htc/app/FilePickerFolderAdapter;)I

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v11, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedList;

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v13, 0xa5

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    new-instance v11, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFilesTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v11, v9

    goto :goto_0
.end method

.method private scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;
    invoke-static {v9}, Lcom/htc/app/FilePickerFolderAdapter;->access$1400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    iget-boolean v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->checkSubFolderHasFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-static {v9}, Lcom/htc/app/FilePickerFolderAdapter;->access$1008(Lcom/htc/app/FilePickerFolderAdapter;)I

    new-instance v9, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedList;

    iput-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v9, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v7

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method close()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->clear()V

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method isStopStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return v0
.end method

.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->startScan()V

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$500(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FolderItemInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$700(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$800(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$800(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$900(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/app/FilePickerUtil;->IsRootPath(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    iget-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v4, -0x1

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v4, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$502(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Lcom/htc/app/FolderItemInfo;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1100(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :pswitch_0
    :try_start_5
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFlatModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doListModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method startScan()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return-void
.end method

.method stopScan()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return-void
.end method
