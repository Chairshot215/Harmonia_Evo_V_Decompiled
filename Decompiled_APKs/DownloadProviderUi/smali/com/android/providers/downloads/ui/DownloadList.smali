.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    }
.end annotation


# static fields
.field private static final BUNDLE_SAVED_DOWNLOAD_IDS:Ljava/lang/String; = "download_ids"

.field private static final BUNDLE_SAVED_FILENAMES:Ljava/lang/String; = "filenames"

.field private static final BUNDLE_SAVED_MIMETYPES:Ljava/lang/String; = "mimetypes"

.field static final LOG_TAG:Ljava/lang/String; = "DownloadList"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentView:Landroid/widget/ListView;

.field private mCurrentViewIsExpandableListView:Z

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/ExpandableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEmptyView:Landroid/view/View;

.field private mIdColumnId:I

.field private mIsSortedBySize:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumndId:I

.field mSelectedCountFormat:Ljava/lang/String;

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeOrderedListView:Landroid/widget/ListView;

.field private mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private mSizeSortedCursor:Landroid/database/Cursor;

.field private mSortOption:Landroid/widget/Button;

.field private mStatusColumnId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    .line 89
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    .line 116
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 123
    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 275
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/downloads/ui/DownloadList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private activeListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 471
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 472
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 473
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 477
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 478
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 479
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    goto :goto_0
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 4

    .prologue
    .line 760
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 761
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 769
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 772
    :cond_2
    return-void
.end method

.method private chooseListToShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 434
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    .line 454
    :cond_1
    return-void

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    .line 447
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 448
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method private deleteDownload(J)V
    .locals 3
    .parameter "downloadId"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    .line 730
    return-void
.end method

.method private ensureSomeGroupIsExpanded()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, mimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 856
    :goto_0
    return-object v4

    .line 846
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v1, mimeTypePrefixes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 848
    .local v2, s:Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 850
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 851
    if-eqz v3, :cond_2

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 856
    :cond_2
    const-string v4, "*/*"

    goto :goto_0
.end method

.method private findCommonString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 860
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 861
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 862
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 863
    move-object v3, v2

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 865
    const/4 v0, 0x0

    .line 869
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v3       #str:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 492
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$5;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getDeliveryType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v10, -0x6

    .line 873
    const/4 v6, 0x0

    .line 875
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 876
    if-nez v6, :cond_2

    .line 891
    if-eqz v6, :cond_0

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v7, v10

    :cond_1
    :goto_0
    return v7

    .line 878
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 891
    if-eqz v6, :cond_3

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v7, v10

    goto :goto_0

    .line 881
    :cond_4
    :try_start_2
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 882
    .local v8, deliveryTypeColumnId:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 883
    .local v7, deliveryType:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 891
    if-eqz v6, :cond_1

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 886
    .end local v7           #deliveryType:I
    .end local v8           #deliveryTypeColumnId:I
    :catch_0
    move-exception v9

    .line 887
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "DownloadList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch java exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 891
    if-eqz v6, :cond_5

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v7, v10

    goto :goto_0

    .line 891
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 621
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 650
    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 623
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_1
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 639
    :pswitch_3
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 642
    :pswitch_4
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    :pswitch_5
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 504
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$6;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 569
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 570
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 615
    :goto_0
    return-void

    .line 573
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 577
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 579
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07001b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070019

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$7;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$7;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 596
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 601
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 606
    :sswitch_3
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_1

    .line 607
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showWarningDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private haveCursors()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 655
    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v4

    .line 659
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 660
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 663
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 751
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToDownload(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x1

    .line 785
    :goto_1
    return v0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 785
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    const v10, 0x7f070012

    .line 518
    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, filename:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 531
    .local v5, localUri:Landroid/net/Uri;
    const-string v6, "file:///content%3A/drm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 533
    const/16 v6, 0x16

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, filename_temp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://drm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 536
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/DrmStore;->checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 538
    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v10}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    .line 566
    .end local v3           #filename_temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 544
    :cond_0
    const-string v6, "file://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 558
    :cond_1
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v4, intent:Landroid/content/Intent;
    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const v6, 0x10000001

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 562
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v6, 0x7f070018

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 548
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 549
    .local v1, exc:Ljava/io/FileNotFoundException;
    const-string v6, "DownloadList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p0, v10}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 553
    .end local v1           #exc:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 718
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 720
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 699
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 701
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 236
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 237
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 240
    .local v0, modeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    .line 241
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 242
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 261
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    .line 262
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 263
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 264
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$4;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$4;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    .line 273
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 673
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 679
    return-void
.end method

.method private showWarningDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "dialogBody"

    .prologue
    .line 682
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 688
    return-void
.end method


# virtual methods
.method getCurrentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0
.end method

.method getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method handleDownloadsChanged()V
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->checkSelectionForDeletedEntries()V

    .line 742
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 748
    :cond_1
    return-void
.end method

.method isCurrentViewExpandableListView()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    return v0
.end method

.method public isDownloadSelected(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadList;->setFinishOnTouchOutside(Z)V

    .line 157
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 159
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    .line 160
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 161
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 164
    .local v0, baseQuery:Landroid/app/DownloadManager$Query;
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 165
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const-string v3, "total_size"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/app/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    .line 171
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 173
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 175
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    .line 177
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    .line 179
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    .line 181
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "media_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    .line 183
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "reason"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    .line 186
    new-instance v2, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    .line 187
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 188
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 189
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 196
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v2, "android.app.DownloadManager.extra_sortBySize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iput-boolean v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 200
    :cond_1
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    .line 201
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 213
    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 706
    if-eqz p3, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 381
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 383
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 385
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 417
    const-string v4, "isSortedBySize"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 418
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 419
    const-string v4, "download_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 420
    .local v3, selectedIds:[J
    const-string v4, "filenames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, fileNames:[Ljava/lang/String;
    const-string v4, "mimetypes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, mimeTypes:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 423
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    aget-object v7, v0, v1

    aget-object v8, v2, v1

    invoke-direct {v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 428
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 371
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 373
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 374
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 376
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "outState"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 393
    const-string v9, "isSortedBySize"

    iget-boolean v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 395
    .local v5, len:I
    if-nez v5, :cond_0

    .line 412
    :goto_0
    return-void

    .line 398
    :cond_0
    new-array v8, v5, [J

    .line 399
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 400
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 401
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 402
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 403
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 404
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 405
    .local v7, obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 406
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    goto :goto_1

    .line 409
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    :cond_1
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 410
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 411
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method setActionModeTitle(Landroid/view/ActionMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 356
    .local v0, numSelected:I
    if-lez v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shareDownloadedFiles()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 792
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 793
    .local v3, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-le v10, v9, :cond_5

    .line 794
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v7, mimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 798
    .local v5, item:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, mimeType:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 836
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v1           #fileName:Ljava/lang/String;
    .end local v5           #item:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #mimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return v8

    .line 804
    .restart local v0       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v5       #item:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #mimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v10, "content://drm"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, p0, v10}, Lcom/android/providers/downloads/ui/DownloadList;->getDeliveryType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v10

    if-ne v10, v13, :cond_2

    .line 805
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 812
    .end local v1           #fileName:Ljava/lang/String;
    .end local v5           #item:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_3
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 813
    invoke-direct {p0, v7}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v7           #mimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const v8, 0x7f070021

    invoke-virtual {p0, v8}, Lcom/android/providers/downloads/ui/DownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 835
    .local v4, intentNew:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 836
    goto :goto_1

    .line 817
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #intentNew:Landroid/content/Intent;
    :cond_5
    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 818
    .restart local v5       #item:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 825
    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "content://drm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, p0, v10}, Lcom/android/providers/downloads/ui/DownloadList;->getDeliveryType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v10

    if-ne v10, v13, :cond_6

    .line 826
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    :goto_4
    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 829
    :cond_6
    const-string v10, "android.intent.extra.STREAM"

    new-instance v11, Ljava/io/File;

    invoke-virtual {v5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_4
.end method
