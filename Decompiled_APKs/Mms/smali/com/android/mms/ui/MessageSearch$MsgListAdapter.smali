.class Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgListAdapter"
.end annotation


# static fields
.field private static final interval:I = 0x7d0


# instance fields
.field lastTimeQuery:J

.field mForceQuery:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageSearch;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageSearch;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "c"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->this$0:Lcom/android/mms/ui/MessageSearch;

    .line 89
    invoke-direct {p0, p3, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->lastTimeQuery:J

    .line 86
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mForceQuery:Z

    .line 90
    return-void
.end method

.method private final bind(Landroid/database/Cursor;Lcom/htc/widget/HtcListItem2LineText;)V
    .locals 12
    .parameter "c"
    .parameter "txt"

    .prologue
    .line 94
    iget-object v8, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->this$0:Lcom/android/mms/ui/MessageSearch;

    invoke-static {}, Lcom/android/mms/ui/MessageSearch;->access$100()I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #setter for: Lcom/android/mms/ui/MessageSearch;->mID:J
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/MessageSearch;->access$002(Lcom/android/mms/ui/MessageSearch;J)J

    .line 96
    invoke-static {}, Lcom/android/mms/ui/MessageSearch;->access$200()I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, _subject:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    iget-object v8, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->this$0:Lcom/android/mms/ui/MessageSearch;

    const v9, 0x7f090172

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/MessageSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    if-nez v0, :cond_1

    .line 101
    const-string v0, ""

    .line 104
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->this$0:Lcom/android/mms/ui/MessageSearch;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mContext:Landroid/content/Context;

    const-string v10, "input_text_selection_highlight"

    const v11, 0x20a001b

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 107
    .local v1, color:I
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, fromLow:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->this$0:Lcom/android/mms/ui/MessageSearch;

    iget-object v8, v8, Lcom/android/mms/ui/MessageSearch;->searchKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, lowerSearchKey:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 110
    .local v7, start:I
    if-ltz v7, :cond_3

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int v2, v7, v8

    .line 112
    .local v2, end:I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .local v5, mMarkedName:Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v8, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v7, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 115
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v7, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    invoke-virtual {p2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 122
    .end local v2           #end:I
    .end local v5           #mMarkedName:Landroid/text/SpannableString;
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MessageSearch;->access$300()I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, sender:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 124
    const-string v6, ""

    .line 126
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 128
    if-ltz v7, :cond_4

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int v2, v7, v8

    .line 130
    .restart local v2       #end:I
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    .restart local v5       #mMarkedName:Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v8, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v7, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v7, v2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 133
    invoke-virtual {p2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v2           #end:I
    .end local v5           #mMarkedName:Landroid/text/SpannableString;
    :goto_1
    return-void

    .line 118
    .end local v6           #sender:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .restart local v6       #sender:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 146
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 147
    .local v1, txt:Lcom/htc/widget/HtcListItem2LineText;
    invoke-direct {p0, p3, v1}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->bind(Landroid/database/Cursor;Lcom/htc/widget/HtcListItem2LineText;)V

    .line 150
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 167
    if-eqz p2, :cond_0

    .line 168
    move-object v0, p2

    .line 172
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 173
    return-object v0

    .line 170
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/HtcListItemComposer;->createCheckboxListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 158
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 159
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    return-object v1
.end method

.method protected onContentChanged()V
    .locals 6

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, nowTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->lastTimeQuery:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mForceQuery:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mDataValid:Z

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->lastTimeQuery:J

    .line 183
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mForceQuery:Z

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const-string v2, "MessageSearch"

    const-string v3, "onContentChanged failed, cursor is null or cloaed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForceQuery(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->mForceQuery:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->onContentChanged()V

    .line 193
    return-void
.end method
