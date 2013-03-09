.class public Lcom/google/android/gm/ConversationHeaderCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationHeaderCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationHeaderCursorAdapter$1;,
        Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private mCurrentlyDisplayedLabel:Ljava/lang/String;

.field private mError:Lcom/google/android/gm/provider/Gmail$CursorError;

.field private mFadedIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

.field mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

.field private final mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

.field private mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

.field private final mViewTypeFooter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/IProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Z)V
    .locals 8
    .parameter "context"
    .parameter "progressMonitor"
    .parameter "currentlyDisplayedLabel"
    .parameter "account"
    .parameter "selectedConversations"
    .parameter "menuHandler"
    .parameter "starHandler"
    .parameter "viewMode"
    .parameter "isSearch"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    .line 67
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    iput-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 68
    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 69
    iput-object p3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 72
    new-instance v0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;-><init>(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$MailCursor;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Z)V

    .line 74
    .local v0, inner:Lcom/google/android/gm/ConversationHeaderCursorAdapter$InnerAdapter;
    new-instance v1, Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-direct {v1, p1, v0, p5}, Lcom/google/android/gm/GmailAnimatedAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Lcom/google/android/gm/ConversationSelectionSet;)V

    iput-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    .line 75
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gm/GmailAnimatedAdapter;->animateChanges(Z)V

    .line 76
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getViewTypeCount()I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mViewTypeFooter:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Lcom/google/android/gm/ConversationSelectionSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mSelectedConversationSet:Lcom/google/android/gm/ConversationSelectionSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/ConversationHeaderCursorAdapter;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mFadedIds:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    return-void
.end method

.method private cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V
    .locals 4
    .parameter "newStatus"
    .parameter "newError"

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq p1, v0, :cond_0

    .line 116
    const-string v0, "Gmail"

    const-string v1, "ConversationHeaderCursorAdapter.cursorStatusChanged: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 119
    iput-object p2, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 120
    sget-object v0, Lcom/google/android/gm/ConversationHeaderCursorAdapter$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    invoke-interface {v0}, Lcom/google/android/gm/IProgressMonitor;->done()V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcom/google/android/gm/IProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mProgressMonitor:Lcom/google/android/gm/IProgressMonitor;

    invoke-interface {v0}, Lcom/google/android/gm/IProgressMonitor;->done()V

    goto :goto_0

    .line 120
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
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public final changeAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mAccount:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetInvalidated()V

    .line 112
    return-void
.end method

.method public fadeConversations(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, conversationIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mFadedIds:Ljava/util/Collection;

    .line 306
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 307
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v3}, Lcom/google/android/gm/GmailAnimatedAdapter;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    :goto_0
    return v1

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v4, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ERROR:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v4, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v4, Lcom/google/android/gm/provider/Gmail$CursorStatus;->SEARCHING:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v2

    .line 161
    .local v0, shouldShowFooter:Z
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v3}, Lcom/google/android/gm/GmailAnimatedAdapter;->getCount()I

    move-result v3

    if-eqz v0, :cond_3

    :goto_2
    add-int v1, v3, v2

    goto :goto_0

    .end local v0           #shouldShowFooter:Z
    :cond_2
    move v0, v1

    .line 157
    goto :goto_1

    .restart local v0       #shouldShowFooter:Z
    :cond_3
    move v2, v1

    .line 161
    goto :goto_2
.end method

.method public final getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 169
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
    .line 175
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getItemId(I)J

    move-result-wide v0

    .line 178
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 204
    .local v0, wantsFooterView:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 205
    iget v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mViewTypeFooter:I

    .line 207
    :goto_1
    return v1

    .line 203
    .end local v0           #wantsFooterView:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    .restart local v0       #wantsFooterView:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 212
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v3}, Lcom/google/android/gm/GmailAnimatedAdapter;->getCount()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 213
    .local v2, wantsFooterView:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 215
    if-eqz p2, :cond_0

    instance-of v3, p2, Lcom/google/android/gm/ConversationListFooterView;

    if-nez v3, :cond_2

    .line 216
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 218
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040016

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationListFooterView;

    .line 223
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .local v0, footerView:Lcom/google/android/gm/ConversationListFooterView;
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mStatus:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    iget-object v4, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mError:Lcom/google/android/gm/provider/Gmail$CursorError;

    iget-object v5, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gm/ConversationListFooterView;->bind(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V

    .line 226
    .end local v0           #footerView:Lcom/google/android/gm/ConversationListFooterView;
    :goto_2
    return-object v0

    .line 212
    .end local v2           #wantsFooterView:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2       #wantsFooterView:Z
    :cond_2
    move-object v0, p2

    .line 221
    check-cast v0, Lcom/google/android/gm/ConversationListFooterView;

    .restart local v0       #footerView:Lcom/google/android/gm/ConversationListFooterView;
    goto :goto_1

    .line 226
    .end local v0           #footerView:Lcom/google/android/gm/ConversationListFooterView;
    :cond_3
    iget-object v3, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/gm/GmailAnimatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->notifyDataSetChanged()V

    .line 233
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->notifyDataSetInvalidated()V

    .line 238
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    :cond_0
    return-void
.end method

.method public removeActionStateListener()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/GmailAnimatedAdapter;->removeActionStateListener()V

    .line 81
    return-void
.end method

.method public setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V

    .line 85
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mCurrentlyDisplayedLabel:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 299
    :cond_1
    return-void
.end method

.method public final swapCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
    .locals 2
    .parameter "cursor"
    .parameter "animateChanges"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/GmailAnimatedAdapter;->swapMailCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 93
    iput-object p1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getError()Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->notifyDataSetChanged()V

    .line 102
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->cursorStatusChanged(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;)V

    goto :goto_0
.end method

.method public translateSelectedPosition(I)I
    .locals 1
    .parameter "requested"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->translateSelectedPosition(I)I

    move-result v0

    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->mInnerAdapter:Lcom/google/android/gm/GmailAnimatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/GmailAnimatedAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    :cond_0
    return-void
.end method
