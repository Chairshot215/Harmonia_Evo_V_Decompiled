.class public Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
.super Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;
.source "DateSortedDownloadAdapter.java"


# instance fields
.field private final mDelegate:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 1
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    .line 36
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/downloads/ui/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 38
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-direct {v0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->mDelegate:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 39
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 40
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 46
    if-eqz p4, :cond_0

    instance-of v1, p4, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->mDelegate:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->newView()Landroid/view/View;

    move-result-object p4

    .line 51
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->moveCursorToChildPosition(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    :goto_0
    return-object p4

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 57
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->mDelegate:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v1, p4, v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;I)V

    goto :goto_0
.end method
