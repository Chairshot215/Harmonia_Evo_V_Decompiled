.class public Lcom/htc/app/FilePickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;,
        Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;
    }
.end annotation


# static fields
.field static final GARBAGE_MESSAGE:Ljava/lang/String; = "GarbageMessage_LongVacation"

.field private static final ITEM_VIEW_TYPE_FILE:I = 0x0

.field private static final ITEM_VIEW_TYPE_FOLDER:I = 0x1

.field public static final MULTIPLE_SELECTION:I = 0x1

.field public static final NOTIFY_DATASET_CHENGED:I = 0x2

.field public static final NOTIFY_DATASET_INVALIDATED:I = 0x3

.field public static final SINGLE_SELECTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FilePickerListAdapter"

.field public static final UPDATE_FILELIST:I = 0x0

.field public static final UPDATE_HEADER_NAME:I = 0x4

.field public static final UPDATE_SEARCH_FILE_COUNT:I = 0x1

.field private static final localLOGV:Z = false

.field private static final mFilePickerLayout_ListView_FileItemView:I = 0x209003d

.field private static final mFilePickerLayout_ListView_FolderItemView:I = 0x2090040


# instance fields
.field private headerViewText:Ljava/lang/String;

.field private isGroupByPath:Z

.field private isRemoveMode:Z

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mFileCount:I

.field private mFileDate:Ljava/sql/Date;

.field private mFilePicker:Lcom/htc/app/FilePickerActivity;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileScanner:Lcom/htc/app/FileScanner;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:Landroid/widget/Filter;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputStringLowerCase:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I

.field private mTagFalseFalse:Lcom/htc/widget/HtcListItemSeparableType;

.field private mTagFalseTrue:Lcom/htc/widget/HtcListItemSeparableType;

.field private mTagTrueFalse:Lcom/htc/widget/HtcListItemSeparableType;

.field private mTagTrueTrue:Lcom/htc/widget/HtcListItemSeparableType;

.field private notifyDataSetChangedRunnable:Ljava/lang/Runnable;

.field private notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

.field private notifyFileScanEnd:Ljava/lang/Runnable;

.field private scanThread:Ljava/lang/Thread;

.field private updateFileList:Ljava/lang/Runnable;

.field private updateHeaderName:Ljava/lang/Runnable;

.field private updateSearchFileCount:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerActivity;Lcom/htc/app/FilePickerUtil;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "selectionType"
    .parameter "filePicker"
    .parameter "filePickerUtil"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v0, v2, v2}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mTagTrueTrue:Lcom/htc/widget/HtcListItemSeparableType;

    .line 83
    new-instance v0, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mTagTrueFalse:Lcom/htc/widget/HtcListItemSeparableType;

    .line 85
    new-instance v0, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mTagFalseTrue:Lcom/htc/widget/HtcListItemSeparableType;

    .line 87
    new-instance v0, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v0, v1, v1}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mTagFalseFalse:Lcom/htc/widget/HtcListItemSeparableType;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    .line 106
    iput-object p5, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iput p3, p0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    .line 109
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    .line 110
    iput-object p4, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerActivity;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->removeRedundantPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FileScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/app/FilePickerListAdapter;->isCanNotifyDataChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->headerViewText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerListAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->updateHeaderViewText(Ljava/lang/String;)V

    return-void
.end method

.method private cancelScanFiles(J)V
    .locals 4
    .parameter "waitSec"

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter;->removeMessagesAndCallbacks()V

    .line 800
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v1}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 805
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V

    .line 806
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_2

    .line 807
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 819
    :cond_1
    return-void

    .line 809
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 810
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->setScanThreadMinPriority(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    const-string v1, "FilePickerListAdapter"

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

.method private compareStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pattern"
    .parameter "valueText"

    .prologue
    .line 968
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "itemInfo"

    .prologue
    .line 359
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 388
    :goto_0
    return-object v2

    .line 360
    :cond_0
    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x2090040

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_1
    move-object v2, p1

    .line 388
    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "FilePickerListAdapter"

    const-string v3, "Get HtcResource context failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x209003d

    invoke-static {v2, v3}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    .line 373
    const v2, 0x20200eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 376
    .local v0, checkImageView:Landroid/widget/CheckBox;
    iget-boolean v2, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 383
    .end local v0           #checkImageView:Landroid/widget/CheckBox;
    :catch_1
    move-exception v1

    .line 384
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v2, "FilePickerListAdapter"

    const-string v3, "Get HtcResource context failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 380
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #checkImageView:Landroid/widget/CheckBox;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20800d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private isCanNotifyDataChanged()Z
    .locals 2

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1017
    :cond_0
    return v0
.end method

.method private removeRedundantPath(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    const/4 v5, 0x0

    .line 506
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 532
    :cond_0
    :goto_0
    return-object v2

    .line 507
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v2, newList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 509
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 510
    .local v1, item:Lcom/htc/app/ItemInfo;
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 511
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 514
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 516
    :cond_4
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-nez v3, :cond_2

    .line 517
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 521
    .end local v1           #item:Lcom/htc/app/ItemInfo;
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 522
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerActivity;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getFolderPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/htc/app/FilePickerActivity;->setHeaderViewText(Ljava/lang/String;)V

    .line 524
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 527
    :cond_6
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerActivity;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/htc/app/FilePickerActivity;->setHeaderViewText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateHeaderViewText(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePicker:Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity;->setHeaderViewText(Ljava/lang/String;)V

    .line 540
    return-void
.end method


# virtual methods
.method IsEnabledGroupByPath()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    return v0
.end method

.method public NotifyFileScanEnd()V
    .locals 2

    .prologue
    .line 902
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$6;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$6;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    .line 910
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 911
    return-void
.end method

.method public NotifyListChanged(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 843
    packed-switch p1, :pswitch_data_0

    .line 899
    :goto_0
    return-void

    .line 848
    :pswitch_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->getFileCount()I

    move-result v0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    .line 849
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$1;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    .line 857
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 860
    :pswitch_1
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$2;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    .line 867
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 870
    :pswitch_2
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$3;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    .line 879
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 882
    :pswitch_3
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$4;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    .line 887
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 890
    :pswitch_4
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$5;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerListAdapter$5;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->updateHeaderName:Ljava/lang/Runnable;

    .line 895
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateHeaderName:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method add(Lcom/htc/app/ItemInfo;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->addItem(Lcom/htc/app/ItemInfo;)V

    .line 564
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 565
    return-void
.end method

.method addItem(Lcom/htc/app/ItemInfo;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 550
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_1
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    goto :goto_0

    .line 556
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 632
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 633
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 634
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 643
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    monitor-enter v2

    .line 644
    :try_start_2
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 645
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 647
    :cond_1
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    goto :goto_0

    .line 640
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 645
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerListAdapter;->cancelScanFiles(J)V

    .line 768
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 769
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    .line 770
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->close()V

    .line 771
    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    .line 772
    iput-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 773
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentFileCount()I
    .locals 5

    .prologue
    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, fileCount:I
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 951
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 952
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 953
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 954
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz v2, :cond_0

    .line 955
    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 956
    add-int/lit8 v0, v0, 0x1

    .line 952
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v1           #i:I
    .end local v2           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v3           #size:I
    :cond_1
    return v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 149
    .local v0, endIndex:I
    if-le p1, v0, :cond_1

    .line 150
    move p1, v0

    .line 152
    :cond_1
    if-gez p1, :cond_2

    .line 153
    const/4 p1, 0x0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 159
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 989
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 990
    .local v0, item:Lcom/htc/app/ItemInfo;
    if-nez v0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v1

    .line 991
    :cond_1
    invoke-virtual {v0}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getOriginalCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectFiles()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 927
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 928
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 929
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 934
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 935
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 936
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    invoke-virtual {v2}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    .end local v1           #i:I
    :cond_3
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 29
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/app/ItemInfo;

    .line 165
    .local v20, item:Lcom/htc/app/ItemInfo;
    if-nez p2, :cond_0

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 168
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 169
    const v24, 0x20200f8

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 172
    .local v17, folderItemLayout:Landroid/widget/TextView;
    if-nez v17, :cond_1

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 174
    const v24, 0x20200f8

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #folderItemLayout:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 179
    .restart local v17       #folderItemLayout:Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/ItemInfo;->getFolderPath()Ljava/lang/String;

    move-result-object v16

    .line 180
    .local v16, filePath:Ljava/lang/String;
    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v25, 0x1b

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 183
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 184
    .local v4, am:Landroid/app/IActivityManager;
    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 185
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    sget-object v25, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 186
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    const-string v24, "/sdcard"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 188
    const-string v16, "/\u5b58\u50a8\u5361"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v4           #am:Landroid/app/IActivityManager;
    .end local v7           #config:Landroid/content/res/Configuration;
    :cond_3
    :goto_0
    if-eqz v17, :cond_4

    .line 207
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #folderItemLayout:Landroid/widget/TextView;
    :cond_4
    :goto_1
    return-object p2

    .line 189
    .restart local v4       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #folderItemLayout:Landroid/widget/TextView;
    :cond_5
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    const-string v24, "/sdcard/"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_6

    .line 191
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/\u5b58\u50a8\u5361/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 193
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const-string v24, "/mnt/sdcard"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 195
    const-string v16, "/mnt/\u5b58\u50a8\u5361"

    goto :goto_0

    .line 196
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    const-string v24, "/mnt/sdcard/"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_3

    .line 198
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/mnt/\u5b58\u50a8\u5361/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xc

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_0

    .line 201
    .end local v4           #am:Landroid/app/IActivityManager;
    .end local v7           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v9

    .line 203
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #folderItemLayout:Landroid/widget/TextView;
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v13

    .line 215
    .local v13, file:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v6

    .line 217
    .local v6, checked:Z
    const v24, 0x20200e7

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    .line 219
    .local v21, itemView:Landroid/widget/FrameLayout;
    if-nez v21, :cond_9

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerListAdapter;->createViewFromResource(Landroid/view/View;Lcom/htc/app/ItemInfo;)Landroid/view/View;

    move-result-object p2

    .line 221
    const v24, 0x20200e7

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #itemView:Landroid/widget/FrameLayout;
    check-cast v21, Landroid/widget/FrameLayout;

    .line 225
    .restart local v21       #itemView:Landroid/widget/FrameLayout;
    :cond_9
    const v24, 0x20200e9

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 227
    .local v22, nameForTextView:Landroid/widget/TextView;
    const v24, 0x20200eb

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 229
    .local v5, checkImageView:Landroid/widget/CheckBox;
    const v24, 0x20200ea

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 232
    .local v23, timeAndDate:Landroid/widget/TextView;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, fileName:Ljava/lang/String;
    const-string v24, ".dcf"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 234
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "(DRM) "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 236
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_13

    .line 238
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, fileNameLowerCase:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v19

    .line 241
    .local v19, inputStrinLength:I
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .local v8, displayString:Landroid/text/SpannableString;
    const/16 v18, -0x1

    .line 247
    .local v18, index:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    move-object/from16 v24, v0

    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 251
    :try_start_2
    new-instance v24, Landroid/text/style/ForegroundColorSpan;

    const/16 v25, -0x1

    invoke-direct/range {v24 .. v25}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v25, v19, v18

    const/16 v26, 0x21

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    :goto_3
    :try_start_3
    new-instance v24, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "text_selection_highlight"

    const v28, 0x20a001b

    invoke-static/range {v26 .. v28}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v25, v19, v18

    const/16 v26, 0x21

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 269
    :catch_1
    move-exception v12

    .line 270
    .local v12, ex:Ljava/lang/Exception;
    const-string v24, "FilePickerListAdapter"

    const-string v25, "Get HtcResource context failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    .end local v12           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v12

    .line 253
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v24, "FilePickerListAdapter"

    const-string v25, "Get HtcResource context failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 274
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_b
    if-eqz v22, :cond_c

    .line 275
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v8           #displayString:Landroid/text/SpannableString;
    .end local v15           #fileNameLowerCase:Ljava/lang/String;
    .end local v18           #index:I
    .end local v19           #inputStrinLength:I
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    move/from16 v24, v0

    if-nez v24, :cond_14

    .line 284
    if-eqz v5, :cond_d

    .line 285
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 299
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v24, v0

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/sql/Date;->setTime(J)V

    .line 303
    :cond_e
    if-eqz v23, :cond_f

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mFileDate:Ljava/sql/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/app/FilePickerUtil;->getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_f
    const/4 v11, 0x0

    .line 309
    .local v11, enableTopRound:Z
    const/4 v10, 0x0

    .line 311
    .local v10, enableBottomRound:Z
    sget-boolean v24, Lcom/htc/app/FilePickerUtil;->IsEnableTopRound:Z

    if-eqz v24, :cond_11

    .line 312
    if-eqz p1, :cond_10

    add-int/lit8 v24, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->isEnabled(I)Z

    move-result v24

    if-nez v24, :cond_11

    .line 313
    :cond_10
    const/4 v11, 0x1

    .line 316
    :cond_11
    sget-boolean v24, Lcom/htc/app/FilePickerUtil;->IsEnableBottomRound:Z

    if-eqz v24, :cond_12

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    add-int/lit8 v24, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->isEnabled(I)Z

    move-result v24

    if-nez v24, :cond_12

    .line 318
    const/4 v10, 0x1

    .line 324
    :cond_12
    if-eqz v11, :cond_17

    if-eqz v10, :cond_17

    .line 326
    if-eqz v21, :cond_4

    .line 327
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mTagTrueTrue:Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 341
    :catch_3
    move-exception v12

    .line 342
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v24, "FilePickerListAdapter"

    const-string v25, "Get HtcResource context failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 279
    .end local v10           #enableBottomRound:Z
    .end local v11           #enableTopRound:Z
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_13
    if-eqz v22, :cond_c

    .line 280
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 286
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerListAdapter;->mSelectionType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 287
    if-eqz v5, :cond_15

    .line 288
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 289
    :cond_15
    if-eqz v6, :cond_16

    .line 290
    if-eqz v5, :cond_d

    .line 291
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 293
    :cond_16
    if-eqz v5, :cond_d

    .line 294
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 328
    .restart local v10       #enableBottomRound:Z
    .restart local v11       #enableTopRound:Z
    :cond_17
    if-eqz v11, :cond_18

    if-nez v10, :cond_18

    .line 330
    if-eqz v21, :cond_4

    .line 331
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mTagTrueFalse:Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 332
    :cond_18
    if-nez v11, :cond_19

    if-eqz v10, :cond_19

    .line 334
    if-eqz v21, :cond_4

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mTagFalseTrue:Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 338
    :cond_19
    if-eqz v21, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerListAdapter;->mTagFalseFalse:Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x2

    return v0
.end method

.method groupByPath(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 734
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    .line 735
    return-void
.end method

.method public insert(Lcom/htc/app/ItemInfo;I)V
    .locals 2
    .parameter "object"
    .parameter "index"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 577
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 579
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    monitor-enter v1

    .line 583
    :try_start_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 584
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 586
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 587
    return-void

    .line 579
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 584
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    move-object v0, v1

    check-cast v0, Lcom/htc/app/ItemInfo;

    .line 394
    .local v0, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    const/4 v1, 0x0

    .line 397
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->IsListView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 977
    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerUtil;->IsListView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 985
    :cond_0
    return-void
.end method

.method public remove(Lcom/htc/app/ItemInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 597
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 599
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 604
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    monitor-enter v1

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 606
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 607
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 609
    :cond_1
    return-void

    .line 599
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 606
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method removeMessagesAndCallbacks()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateFileList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateSearchFileCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 783
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->updateHeaderName:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 784
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 786
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->notifyFileScanEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 788
    :cond_0
    return-void
.end method

.method public resetAllChecked()V
    .locals 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    if-nez v1, :cond_1

    .line 922
    :cond_0
    return-void

    .line 919
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/ItemInfo;->setChecked(Z)V

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCheckBoxMode(Z)V
    .locals 0
    .parameter "isRemoveMode"

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/htc/app/FilePickerListAdapter;->isRemoveMode:Z

    .line 407
    return-void
.end method

.method public setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 762
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 763
    return-void
.end method

.method setFileScanner(Lcom/htc/app/FileScanner;)V
    .locals 0
    .parameter "fileScanner"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    .line 741
    return-void
.end method

.method setFileSorter(Lcom/htc/app/FileSorter;)V
    .locals 0
    .parameter "fileSorter"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 745
    return-void
.end method

.method setHeaderViewText(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter;->headerViewText:Ljava/lang/String;

    .line 537
    return-void
.end method

.method setScanThreadMinPriority(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 791
    if-eqz p1, :cond_1

    .line 792
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 1005
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mInputStringLowerCase:Ljava/lang/String;

    .line 1006
    return-void
.end method

.method sort(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v3, newValue:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v4, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-boolean v5, p0, Lcom/htc/app/FilePickerListAdapter;->isGroupByPath:Z

    if-eqz v5, :cond_4

    .line 655
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 656
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/ItemInfo;

    .line 657
    .local v1, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v1}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 658
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 659
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, v4}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 660
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 661
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 663
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .end local v2           #j:I
    .restart local v4       #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 670
    .end local v1           #item:Lcom/htc/app/ItemInfo;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 671
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, v4}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 672
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 673
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 679
    .end local v0           #i:I
    .end local v2           #j:I
    :cond_4
    iget-object v5, p0, Lcom/htc/app/FilePickerListAdapter;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v5, p1}, Lcom/htc/app/FileSorter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 681
    :cond_5
    return-object v3
.end method

.method sort()V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    .line 690
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    monitor-enter v1

    .line 692
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    .line 693
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 694
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 693
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public startScanFiles()V
    .locals 2

    .prologue
    .line 825
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerListAdapter;->cancelScanFiles(J)V

    .line 826
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    .line 827
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 828
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 829
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter;->mFileScanner:Lcom/htc/app/FileScanner;

    invoke-virtual {v0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 915
    return-void
.end method

.method public updateItemInfoList(Ljava/util/LinkedList;I)V
    .locals 5
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, itemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 627
    :cond_0
    return-void

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 614
    .local v0, Length:I
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/ItemInfo;

    .line 615
    .local v2, itemInfo:Lcom/htc/app/ItemInfo;
    if-ge p2, v0, :cond_0

    .line 616
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    monitor-enter v4

    .line 617
    :try_start_0
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;

    invoke-interface {v3, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 618
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 620
    if-ge p2, v0, :cond_0

    .line 621
    iget-object v4, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    monitor-enter v4

    .line 622
    :try_start_1
    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 623
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 624
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 623
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
