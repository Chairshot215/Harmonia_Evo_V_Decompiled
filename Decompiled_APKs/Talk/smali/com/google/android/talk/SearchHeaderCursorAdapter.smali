.class public Lcom/google/android/talk/SearchHeaderCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchHeaderCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/SearchHeaderCursorAdapter$1;,
        Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;
    }
.end annotation


# instance fields
.field private mActivatedItem:I

.field private mActivity:Landroid/app/Activity;

.field private mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mFragment:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

.field private mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

.field mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

.field private mSearchString:Ljava/lang/String;

.field private mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/SearchActivity$SearchResultsFragment;Lcom/google/android/talk/IProgressMonitor;)V
    .locals 3
    .parameter "fragment"
    .parameter "progressMonitor"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mFragment:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mActivity:Landroid/app/Activity;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 63
    iput-object p2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    .line 64
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADED:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    iput-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 65
    new-instance v0, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;-><init>(Lcom/google/android/talk/SearchHeaderCursorAdapter;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/SearchHeaderCursorAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mActivatedItem:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/SearchHeaderCursorAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/SearchHeaderCursorAdapter;Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;)V

    return-void
.end method

.method private cursorStatusChanged(Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;)V
    .locals 8
    .parameter "newStatus"

    .prologue
    const/4 v7, 0x0

    .line 88
    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-eq p1, v1, :cond_0

    .line 89
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchHeaderCursorAdapter.cursorStatusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->count()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 93
    sget-object v1, Lcom/google/android/talk/SearchHeaderCursorAdapter$1;->$SwitchMap$com$google$android$talk$GmailProviderWrapper$CursorStatus:[I

    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    invoke-interface {v1}, Lcom/google/android/talk/IProgressMonitor;->done()V

    .line 98
    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mFragment:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->contentChanged()V

    .line 100
    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    .line 101
    .local v0, app:Lcom/google/android/talk/TalkApp;
    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mSearchString:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c00b2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v6}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->count()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mSearchString:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0           #app:Lcom/google/android/talk/TalkApp;
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v7}, Lcom/google/android/talk/IProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    invoke-interface {v1}, Lcom/google/android/talk/IProgressMonitor;->done()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final changeCursor(Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    .line 74
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    iget-object v1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 79
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADED:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v4, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    :goto_0
    return v2

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    sget-object v5, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ERROR:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    sget-object v5, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-ne v4, v5, :cond_2

    :cond_1
    move v1, v3

    .line 129
    .local v1, shouldShowFooter:Z
    :goto_1
    iget-object v4, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v4}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getCount()I

    move-result v4

    if-eqz v1, :cond_3

    :goto_2
    add-int v0, v4, v3

    .local v0, result:I
    move v2, v0

    .line 137
    goto :goto_0

    .end local v0           #result:I
    .end local v1           #shouldShowFooter:Z
    :cond_2
    move v1, v2

    .line 125
    goto :goto_1

    .restart local v1       #shouldShowFooter:Z
    :cond_3
    move v3, v2

    .line 129
    goto :goto_2
.end method

.method public final getCursor()Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 152
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 184
    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v2}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 193
    .local v1, wantsFooterView:Z
    :goto_0
    if-eqz v1, :cond_2

    move-object v0, p2

    .line 194
    check-cast v0, Lcom/google/android/talk/SearchFooterView;

    .line 195
    .local v0, footerView:Lcom/google/android/talk/SearchFooterView;
    if-nez v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v3, 0x7f040036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #footerView:Lcom/google/android/talk/SearchFooterView;
    check-cast v0, Lcom/google/android/talk/SearchFooterView;

    .line 198
    .restart local v0       #footerView:Lcom/google/android/talk/SearchFooterView;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mStatus:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    iget-object v3, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/talk/SearchFooterView;->bind(Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;)V

    .line 201
    .end local v0           #footerView:Lcom/google/android/talk/SearchFooterView;
    :goto_1
    return-object v0

    .line 184
    .end local v1           #wantsFooterView:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    .restart local v1       #wantsFooterView:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->notifyDataSetChanged()V

    .line 208
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 161
    :cond_0
    return-void
.end method

.method public setActivatedItem(I)V
    .locals 0
    .parameter "item"

    .prologue
    .line 211
    iput p1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mActivatedItem:I

    .line 212
    return-void
.end method

.method public final setSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "searchString"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mSearchString:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/talk/SearchHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/SearchHeaderCursorAdapter$InnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    :cond_0
    return-void
.end method
