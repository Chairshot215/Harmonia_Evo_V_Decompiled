.class Lcom/htc/app/FilePickerFolderAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "FilePickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;,
        Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;,
        Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;,
        Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;,
        Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    }
.end annotation


# static fields
.field static final FLAT_MODE_OF_FOLDER_VIEW:I = 0x1

.field static final FOLDER_MODE_OF_FOLDER_VIEW:I = 0x0

.field static final LIST_MODE_OF_FOLDER_VIEW:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static isScanning:Z = false

.field private static final mFileItemDefaultImg:I = 0x20805f7

.field private static mFilePickerLayout_FolderView_FileItemView:I = 0x0

.field private static mFilePickerLayout_FolderView_FolderItemView:I = 0x0

.field private static final mFolderItemDefultImg:I = 0x2080414

.field private static scanToken:Ljava/lang/Object;


# instance fields
.field private firstLevelFileCount:I

.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isCanSort:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCheckedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedFolderFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentChildrenList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

.field private mCurretExpandItem:Lcom/htc/app/FolderItemInfo;

.field private mDay:Ljava/lang/String;

.field private mFileDate:Ljava/sql/Date;

.field private mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field public mFolderExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;

.field private mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

.field private mFolderFileFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

.field private mFolderFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;

.field private mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

.field private mHour:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMultiPath:Z

.field private mIsRemoveMode:Z

.field private mMinute:Ljava/lang/String;

.field private mModeTypeOfFolderView:I

.field private mMonth:Ljava/lang/String;

.field private mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field private mScanningPath:Ljava/lang/String;

.field private mSecond:Ljava/lang/String;

.field private mSelectionType:I

.field private mSortOrder:I

.field private mSortType:I

.field private mYear:Ljava/lang/String;

.field private scanThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FilePickerFolderAdapter"

    sput-object v0, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

    const v0, 0x20900d0

    sput v0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FolderItemView:I

    const v0, 0x20900cf

    sput v0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FileItemView:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/app/FilePickerFolderAdapter;->scanToken:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/FilePickerFolderAdapter;->isScanning:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsRemoveMode:Z

    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsMultiPath:Z

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurretExpandItem:Lcom/htc/app/FolderItemInfo;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    iput-boolean v4, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/app/FilePickerFolderAdapter;->init(Landroid/content/Context;[Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;ILcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/app/FilePickerUtil;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsRemoveMode:Z

    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsMultiPath:Z

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurretExpandItem:Lcom/htc/app/FolderItemInfo;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    iput-boolean v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerFolderAdapter;->init(Landroid/content/Context;[Ljava/lang/String;I)V

    iput-object p6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iput-object p4, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iput p5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/app/FilePickerFolderAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 2

    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/app/FilePickerFolderAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortType:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerFolderAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FolderItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Lcom/htc/app/FolderItemInfo;
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    return-object p1
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/htc/app/FilePickerFolderAdapter;->isScanning:Z

    return p0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/widget/MoreExpandableHtcListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:Ljava/lang/String;

    return-object v0
.end method

.method private cancelScanFiles(J)V
    .locals 4

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->stopScan()V

    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->clear()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->setScanThreadMinPriority(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/htc/app/FilePickerFolderAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop Thread Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFileTypeImage(Ljava/io/File;)I
    .locals 9

    const v4, 0x20805f7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_0
.end method

.method private declared-synchronized getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileComparator:Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;

    iput-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;-><init>(Lcom/htc/app/FilePickerFolderAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderFilter;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    invoke-direct {v0, p0, p2}, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;-><init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    invoke-direct {v0, p0, p2, v2}, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;-><init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderFileFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;

    invoke-direct {v0, p0, p2}, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;-><init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;

    iput v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->hashMap:Ljava/util/HashMap;

    const-string v1, "txt"

    const v2, 0x20805f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addChecked(Lcom/htc/app/FolderItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method close()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerFolderAdapter;->cancelScanFiles(J)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->close()V

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    :cond_2
    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method doScanTask(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isStopStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mScanningPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter;->startScanFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v8, 0x0

    if-nez p4, :cond_1

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FileItemView:I

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    :goto_0
    invoke-static {p1, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/FolderItemInfo;

    const v9, 0x202021a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v9, 0x202021b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x202021c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x20200eb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    :goto_1
    return-object v8

    :cond_1
    move-object/from16 v8, p4

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v9, ".dcf"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(DRM) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerFolderAdapter;->getFileTypeImage(Ljava/io/File;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/sql/Date;->setTime(J)V

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v9, v10}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    :cond_4
    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    if-nez v9, :cond_5

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget v9, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    move-object v2, p2

    check-cast v2, Lcom/htc/app/FolderItemInfo;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v2, v3}, Lcom/htc/app/FolderItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    :goto_0
    return-object v0

    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getFirstLevelFileCount()I
    .locals 1

    iget v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->firstLevelFileCount:I

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    if-nez p3, :cond_1

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerLayout_FolderView_FolderItemView:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FolderItemInfo;

    const v5, 0x202021a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x202021b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x202021c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/sql/Date;->setTime(J)V

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFileDate:Ljava/sql/Date;

    invoke-virtual {v5, v6}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_1
    move-object v4, p3

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSelectFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method final isCanSort()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort:Z

    return v0
.end method

.method removeChecked(Lcom/htc/app/FolderItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method resetAllChecked()V
    .locals 3

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFolderFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCheckedFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method setCheckBoxMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mIsRemoveMode:Z

    return-void
.end method

.method setScanThreadMinPriority(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method setSortBy(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortType:I

    return-void
.end method

.method setSortOrder(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I

    return-void
.end method

.method sort()V
    .locals 8

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    move-object v1, v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;

    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerFolderAdapter;->getSortedList(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getRootPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1, v5}, Lcom/htc/app/FolderItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpandedPosition()I

    move-result v3

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v5, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter;->mMoreListView:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter;->mCurrentClickExItem:Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v5, v7, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    monitor-exit v6

    goto :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    :cond_2
    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/app/FilePickerFolderAdapter;->doScanTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startScanFiles()V
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerFolderAdapter;->cancelScanFiles(J)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter;->mFolderScanner:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
