.class Lcom/google/android/talk/ChatView$ChatAdapter;
.super Landroid/widget/CursorAdapter;
.source "ChatView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatAdapter"
.end annotation


# instance fields
.field private mDelayedCursor:Landroid/database/Cursor;

.field public mScrollState:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    .line 1872
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1873
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/ChatView$ChatAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1865
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatAdapter;->useDelayedCursor()V

    return-void
.end method

.method static synthetic access$6301(Lcom/google/android/talk/ChatView$ChatAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private useDelayedCursor()V
    .locals 2

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    .line 1934
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    #calls: Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    invoke-static {p0, v1}, Lcom/google/android/talk/ChatView$ChatAdapter;->access$6301(Lcom/google/android/talk/ChatView$ChatAdapter;Landroid/database/Cursor;)V

    .line 1936
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    .line 1938
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1877
    check-cast p1, Lcom/google/android/talk/ChatView$MessageItem;

    .end local p1
    invoke-virtual {p1, p3}, Lcom/google/android/talk/ChatView$MessageItem;->bind(Landroid/database/Cursor;)V

    .line 1878
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 11
    .parameter "newCursor"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x270f

    const/4 v6, 0x1

    .line 1955
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$ChatAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1956
    .local v2, oldCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1957
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 1958
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 1959
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 1961
    const/4 v5, 0x1

    .line 1962
    .local v5, sending:I
    iget-object v8, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSendStatusColumn:I
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$3200(Lcom/google/android/talk/ChatView;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v6, :cond_0

    move v3, v6

    .line 1963
    .local v3, oldIsSending:Z
    :goto_0
    iget-object v8, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSendStatusColumn:I
    invoke-static {v8}, Lcom/google/android/talk/ChatView;->access$3200(Lcom/google/android/talk/ChatView;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v0, v6

    .line 1966
    .local v0, newIsSending:Z
    :goto_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 1967
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mBodyColumn:I
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1968
    .local v4, oldMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mBodyColumn:I
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1970
    .local v1, newMessage:Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1978
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1979
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatAdapter;->useDelayedCursor()V

    .line 1980
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    .line 1981
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1998
    .end local v0           #newIsSending:Z
    .end local v1           #newMessage:Ljava/lang/String;
    .end local v3           #oldIsSending:Z
    .end local v4           #oldMessage:Ljava/lang/String;
    .end local v5           #sending:I
    :goto_2
    return-void

    .restart local v5       #sending:I
    :cond_0
    move v3, v7

    .line 1962
    goto :goto_0

    .restart local v3       #oldIsSending:Z
    :cond_1
    move v0, v7

    .line 1963
    goto :goto_1

    .line 1992
    .end local v3           #oldIsSending:Z
    .end local v5           #sending:I
    :cond_2
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1993
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_3

    .line 1994
    iget-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1995
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mDelayedCursor:Landroid/database/Cursor;

    .line 1997
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x3

    .line 1911
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$ChatAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1912
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1913
    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mTypeColumn:I
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2800(Lcom/google/android/talk/ChatView;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1914
    .local v1, type:I
    sparse-switch v1, :sswitch_data_0

    .line 1926
    .end local v1           #type:I
    :cond_0
    :goto_0
    return v2

    .line 1916
    .restart local v1       #type:I
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1918
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1921
    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 1914
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1906
    const/4 v0, 0x4

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1882
    new-instance v0, Lcom/google/android/talk/ChatView$MessageItem;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/talk/ChatView$ChatAdapter;->getItemViewType(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView$MessageItem;-><init>(Lcom/google/android/talk/ChatView;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "first"
    .parameter "visible"
    .parameter "total"

    .prologue
    .line 1888
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1892
    iput p2, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->mScrollState:I

    .line 1893
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatAdapter;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->userActionDetected()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6200(Lcom/google/android/talk/ChatView;)V

    .line 1894
    return-void
.end method
