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
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 666
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    .line 660
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IntervalNum:I

    .line 661
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->IntervalTime:I

    .line 662
    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    .line 677
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mScanToken:Ljava/lang/Object;

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 736
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 1003
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    .line 1030
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    .line 1065
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    .line 667
    return-void
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkSubFolderHasFile(Ljava/io/File;)Z
    .locals 7
    .parameter "f"

    .prologue
    const/4 v5, 0x0

    .line 945
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 946
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return v5

    .line 947
    :cond_1
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 948
    .local v4, subFiles:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 949
    const/4 v5, 0x1

    goto :goto_0

    .line 947
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private doFlatModeScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "path"
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

    .prologue
    const/4 v10, 0x1

    .line 847
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    .line 848
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 850
    .local v3, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-boolean v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    if-eqz v5, :cond_4

    .line 851
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/app/FilePickerUtil;->IsMultiPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 852
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    .line 853
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    .line 854
    .local v4, resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    .line 855
    .local v1, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 856
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_0

    .line 861
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 863
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v3

    .line 866
    .end local v0           #dir:Ljava/io/File;
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 867
    new-instance v5, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;Z)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_3
    :goto_1
    return-object v3

    .line 871
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_1
.end method

.method private doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 28
    .parameter "path"
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

    .prologue
    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static/range {v23 .. v24}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    .line 768
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v8, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 770
    .local v16, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 773
    .local v4, currentlist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
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

    .line 774
    invoke-direct/range {p0 .. p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v16

    move-object/from16 v23, v16

    .line 843
    :goto_0
    return-object v23

    .line 778
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 782
    const/16 v21, 0x0

    .line 783
    .local v21, totolAmount:I
    const/4 v12, 0x0

    .line 784
    .local v12, foldersAmount:I
    const/4 v10, 0x0

    .line 785
    .local v10, filePathLists:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 786
    .local v17, startScanTime:J
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

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerFolderAdapter;->access$1300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v10

    .line 790
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v17

    const-wide/16 v25, 0x1f4

    cmp-long v23, v23, v25

    if-ltz v23, :cond_3

    const/4 v14, 0x1

    .line 793
    .local v14, isTimeTooLong:Z
    :goto_2
    const/4 v11, 0x0

    .line 794
    .local v11, filesAmount:I
    const/4 v7, 0x0

    .line 795
    .local v7, fileCount:I
    const/16 v22, 0x0

    .line 797
    .local v22, updatedCount:I
    if-eqz v10, :cond_4

    .line 799
    array-length v11, v10

    .line 800
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v0, v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    .line 808
    :cond_1
    :goto_3
    if-lez v11, :cond_8

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 810
    .local v19, startTime:J
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v15, v3

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_4
    if-ge v13, v15, :cond_9

    aget-object v9, v3, v13

    .line 811
    .local v9, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    goto :goto_0

    .line 789
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #fileCount:I
    .end local v9           #filePath:Ljava/lang/String;
    .end local v11           #filesAmount:I
    .end local v13           #i$:I
    .end local v14           #isTimeTooLong:Z
    .end local v15           #len$:I
    .end local v19           #startTime:J
    .end local v22           #updatedCount:I
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

    .line 790
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 804
    .restart local v7       #fileCount:I
    .restart local v11       #filesAmount:I
    .restart local v14       #isTimeTooLong:Z
    .restart local v22       #updatedCount:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static/range {v23 .. v24}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    goto :goto_3

    .line 812
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v19       #startTime:J
    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 813
    .local v6, file:Ljava/io/File;
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

    .line 810
    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 817
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 818
    new-instance v23, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v23, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 821
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

    .line 824
    move/from16 v22, v7

    .line 825
    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/LinkedList;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 826
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

    .line 827
    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    goto :goto_5

    .line 833
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v19           #startTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 834
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

    .end local v7           #fileCount:I
    .end local v10           #filePathLists:[Ljava/lang/String;
    .end local v11           #filesAmount:I
    .end local v12           #foldersAmount:I
    .end local v14           #isTimeTooLong:Z
    .end local v17           #startScanTime:J
    .end local v21           #totolAmount:I
    .end local v22           #updatedCount:I
    :cond_9
    :goto_6
    move-object/from16 v23, v16

    .line 843
    goto/16 :goto_0

    .line 839
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 840
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
    .parameter "path"
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

    .prologue
    const/4 v10, 0x1

    .line 880
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    .line 881
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 883
    .local v3, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-boolean v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    if-eqz v5, :cond_4

    .line 884
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/app/FilePickerUtil;->IsMultiPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 886
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    .line 887
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    .line 888
    .local v4, resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    .line 889
    .local v1, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 890
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 891
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_0

    .line 895
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #resultList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 897
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFilesTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v3

    .line 900
    .end local v0           #dir:Ljava/io/File;
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 901
    new-instance v5, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/htc/app/FilePickerActivity;->EMPTY_FOLDER:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;Z)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_3
    :goto_1
    return-object v3

    .line 905
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    goto :goto_1
.end method

.method private doMultiPathRootScan(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "dirPath"
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

    .prologue
    const-wide/16 v9, 0x0

    .line 738
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    .line 739
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 740
    .local v5, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 741
    .local v0, currentlist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, folderPaths:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 743
    .local v4, numOfRootFolder:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 744
    iget-boolean v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    .line 763
    .end local v5           #resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :goto_1
    return-object v5

    .line 746
    .restart local v5       #resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_0
    new-instance v1, Ljava/io/File;

    aget-object v6, v2, v3

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 748
    add-int/lit8 v4, v4, 0x1

    .line 749
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerUtil;->checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 743
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 754
    new-instance v6, Lcom/htc/app/FolderItemInfo;

    invoke-direct {v6, v9, v10, v1}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    iput-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 757
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    new-instance v6, Lcom/htc/app/FolderItemInfo;

    invoke-direct {v6, v9, v10, v1}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 762
    .end local v1           #folder:Ljava/io/File;
    :cond_3
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v6, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    goto :goto_1
.end method

.method private mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 3
    .parameter
    .parameter
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

    .prologue
    .line 986
    .local p1, list1:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    .local p2, list2:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    if-nez p1, :cond_1

    .line 987
    if-nez p2, :cond_0

    .line 988
    const/4 p2, 0x0

    .line 999
    .end local p2           #list2:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_0
    :goto_0
    return-object p2

    .line 994
    .restart local p2       #list2:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 995
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    .line 996
    .local v1, item:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/app/FolderItemInfo;
    :cond_2
    move-object p2, p1

    .line 999
    goto :goto_0
.end method

.method private scanAllFilesTask(Ljava/io/File;)Ljava/util/LinkedList;
    .locals 14
    .parameter "files"
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

    .prologue
    .line 911
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 912
    .local v1, currentlist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 913
    .local v9, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 915
    .local v3, filelists:[Ljava/io/File;
    const/4 v10, 0x0

    .line 916
    .local v10, totolAmount:I
    const/4 v6, 0x0

    .line 917
    .local v6, foldersAmount:I
    if-nez v3, :cond_0

    .line 918
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v11

    .line 939
    :goto_0
    return-object v11

    .line 920
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 921
    .local v5, folderlists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v2, v0, v7

    .line 922
    .local v2, file:Ljava/io/File;
    iget-boolean v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    .line 923
    :cond_1
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-static {v11}, Lcom/htc/app/FilePickerFolderAdapter;->access$1008(Lcom/htc/app/FilePickerFolderAdapter;)I

    .line 924
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 925
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 927
    :cond_3
    new-instance v11, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedList;

    iput-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 929
    iget-object v11, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v13, 0xa5

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 930
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 931
    new-instance v11, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 934
    .end local v2           #file:Ljava/io/File;
    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 936
    .local v4, folder:Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFilesTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-direct {p0, v9, v11}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v9

    goto :goto_3

    .end local v4           #folder:Ljava/io/File;
    :cond_5
    move-object v11, v9

    .line 939
    goto :goto_0
.end method

.method private scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;
    .locals 12
    .parameter "files"
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

    .prologue
    .line 957
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 958
    .local v1, currentlist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 959
    .local v7, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;
    invoke-static {v9}, Lcom/htc/app/FilePickerFolderAdapter;->access$1400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 960
    .local v3, filelists:[Ljava/io/File;
    const/4 v8, 0x0

    .line 961
    .local v8, totolAmount:I
    const/4 v4, 0x0

    .line 962
    .local v4, foldersAmount:I
    if-nez v3, :cond_0

    .line 963
    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v9

    .line 978
    :goto_0
    return-object v9

    .line 965
    :cond_0
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 966
    .local v2, file:Ljava/io/File;
    iget-boolean v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 967
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->checkSubFolderHasFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 968
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-static {v9}, Lcom/htc/app/FilePickerFolderAdapter;->access$1008(Lcom/htc/app/FilePickerFolderAdapter;)I

    .line 969
    new-instance v9, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedList;

    iput-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    .line 971
    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xa5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 972
    new-instance v9, Lcom/htc/app/FolderItemInfo;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/app/FolderItemInfo;-><init>(JLjava/io/File;)V

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanAllFoldersTask(Ljava/io/File;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mergeLinkedList(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v7

    .line 965
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2           #file:Ljava/io/File;
    :cond_3
    move-object v9, v7

    .line 978
    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    .line 1080
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->clear()V

    .line 1081
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    .line 1084
    return-void
.end method

.method isStopStatus()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 680
    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v3

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->startScan()V

    .line 682
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$500(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FolderItemInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    .line 683
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentlist:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 684
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 685
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    .line 686
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$700(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    .line 687
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z

    .line 688
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$800(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 689
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$800(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 691
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$900(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/app/FilePickerUtil;->IsRootPath(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    .line 693
    iget-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isRoot:Z

    if-eqz v2, :cond_3

    .line 694
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v4, -0x1

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I

    .line 695
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 696
    .local v0, emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 697
    :try_start_1
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 698
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :try_start_2
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v4, 0x0

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$502(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Lcom/htc/app/FolderItemInfo;

    .line 700
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;

    .line 705
    .end local v0           #emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$602(Z)Z

    .line 709
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 720
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 728
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    if-nez v2, :cond_5

    .line 729
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1100(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    .line 730
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    :cond_5
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z
    invoke-static {v2, v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z

    .line 733
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 735
    return-void

    .line 698
    .restart local v0       #emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 733
    .end local v0           #emptyItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    .end local v1           #path:Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 711
    .restart local v1       #path:Ljava/lang/String;
    :pswitch_0
    :try_start_5
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFolderModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    goto :goto_0

    .line 714
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doFlatModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;

    goto :goto_0

    .line 717
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->doListModeScan(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method startScan()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    .line 673
    return-void
.end method

.method stopScan()V
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStop:Z

    .line 670
    return-void
.end method
