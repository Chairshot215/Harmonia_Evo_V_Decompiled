.class public Lcom/android/mms/ui/DeleteBySelectListAdapter;
.super Landroid/widget/CursorAdapter;
.source "DeleteBySelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final MARK_ALL:I = 0x1

.field public static final NO_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DeleteBySelectListAdapter"

.field public static final UNMARK_ALL:I


# instance fields
.field private mCaller:Lcom/android/mms/ui/DeleteBySelectActivity;

.field public mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListView:Lcom/htc/widget/HtcListView;

.field public mSelectStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mSelectStatus:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mCaller:Lcom/android/mms/ui/DeleteBySelectActivity;

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/android/mms/ui/DeleteBySelectActivity;

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mCaller:Lcom/android/mms/ui/DeleteBySelectActivity;

    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p3, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 50
    new-instance v0, Lcom/android/mms/msg/util/ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 51
    return-void
.end method

.method private SetViewHolder(Landroid/database/Cursor;Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;)V
    .locals 1
    .parameter "cursor"
    .parameter "holder"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput v0, p2, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;->mViewType:I

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput v0, p2, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;->mViewType:I

    goto :goto_0
.end method


# virtual methods
.method public bindCompactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 66
    instance-of v2, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 73
    .local v8, msgId:J
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v6, 0x0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V

    .line 74
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageItem;->bInDelMode:Z

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 78
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mCaller:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v2, v2, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_1

    .line 79
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/mms/ui/MessageListItem;->changeCheckboxResource(Z)V

    .line 89
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v3           #type:Ljava/lang/String;
    .end local v8           #msgId:J
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v1       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v3       #type:Ljava/lang/String;
    .restart local v8       #msgId:J
    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/ui/MessageListItem;->changeCheckboxResource(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v7

    .line 86
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;

    .line 60
    .local v0, holder:Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;
    invoke-direct {p0, p3, v0}, Lcom/android/mms/ui/DeleteBySelectListAdapter;->SetViewHolder(Landroid/database/Cursor;Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;)V

    .line 62
    .end local v0           #holder:Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/DeleteBySelectListAdapter;->bindCompactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 63
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    move-object v2, v1

    .line 99
    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mCaller:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListItem;->setCaller(Landroid/app/Activity;)V

    .line 101
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSelectAllOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;-><init>(Lcom/android/mms/ui/DeleteBySelectListAdapter;)V

    .line 103
    .local v0, holder:Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;
    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/DeleteBySelectListAdapter;->SetViewHolder(Landroid/database/Cursor;Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    .end local v0           #holder:Lcom/android/mms/ui/DeleteBySelectListAdapter$ViewHolder;
    :cond_0
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 147
    return-void
.end method
