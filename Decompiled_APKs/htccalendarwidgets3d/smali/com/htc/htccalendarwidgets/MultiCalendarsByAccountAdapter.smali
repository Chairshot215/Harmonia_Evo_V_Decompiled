.class public Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiCalendarsByAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;,
        Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCalendarsByAccountAdapter"

.field private static final TYPE_ACCOUNT_NAME:I = 0x0

.field private static final TYPE_CALENDAR_NAME:I = 0x1

.field private static final TYPE_LAST:I = 0x2

.field private static mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private final mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "calendarsAdapter"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->DEBUG:Z

    .line 44
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    iput-object p2, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method public static getRowInfo(J)Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    .locals 4
    .parameter "id"

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, result:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 190
    sget-object v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iget-wide v2, v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_1

    .line 191
    sget-object v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    check-cast v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    .line 195
    .restart local v1       #result:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    return-object v1

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calculateCalendars(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x1

    .line 140
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 147
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v10, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;>;"
    const-string v9, ""

    .line 150
    .local v9, prevAccountName:Ljava/lang/String;
    const-string v7, ""

    .line 151
    .local v7, accountName:Ljava/lang/String;
    const-string v5, ""

    .line 152
    .local v5, calendarName:Ljava/lang/String;
    const-string v6, ""

    .line 154
    .local v6, accountType:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 156
    .local v2, calendarId:J
    const/4 v4, 0x0

    .local v4, position:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 158
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "MultiCalendarsByAccountAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calendarId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " accountName is null, this sould not happen"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    :cond_1
    new-instance v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    invoke-direct/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;-><init>(IJILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 171
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v13, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mBottomRound:Z

    .line 173
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v13, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mTopRound:Z

    .line 174
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mBottomRound:Z

    .line 175
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mDivider:Z

    .line 181
    :goto_4
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iget-object v9, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mAccountType:Ljava/lang/String;

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 177
    :cond_3
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mBottomRound:Z

    .line 178
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mTopRound:Z

    .line 179
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v13, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mDivider:Z

    goto :goto_4

    .line 184
    :cond_4
    sput-object v10, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 58
    sget-object v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    .line 60
    .local v0, row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    iget v1, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 66
    .end local v0           #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 63
    .restart local v0       #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iget v2, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 66
    .end local v0           #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 70
    sget-object v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    .line 72
    .local v0, row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    iget v1, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 73
    int-to-long v1, p1

    .line 78
    .end local v0           #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 75
    .restart local v0       #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iget v2, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 78
    .end local v0           #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    sget-object v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    sget-object v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    iget v0, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x2080700

    .line 93
    sget-object v4, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le p1, v4, :cond_1

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    invoke-virtual {v4, p1, p2, p3}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 132
    :goto_0
    return-object v2

    .line 98
    :cond_1
    sget-object v4, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    .line 99
    .local v1, row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    iget v4, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-nez v4, :cond_6

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, holder:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;
    const/4 v2, 0x0

    .line 103
    .local v2, statusLabelView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;

    if-eqz v4, :cond_2

    .line 106
    move-object v2, p2

    move-object v0, v3

    .line 107
    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;

    .line 111
    .end local v3           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    .line 112
    new-instance v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;

    .end local v0           #holder:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;-><init>()V

    .line 113
    .restart local v0       #holder:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090056

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 114
    const v4, 0x2020020

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    :cond_3
    invoke-static {}, Lcom/htc/htccalendarwidgets/CalendarConstants;->isEnableTheme()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    :goto_1
    iget-object v4, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_4
    invoke-static {}, Lcom/htc/htccalendarwidgets/CalendarConstants;->isEnableSkin()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 131
    .end local v0           #holder:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$ViewHolder;
    .end local v2           #statusLabelView:Landroid/view/View;
    :cond_6
    iget v4, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 132
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;

    iget v5, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v4, v5, p2, p3}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown event type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 220
    sget-object v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 221
    sget-object v2, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    .line 222
    .local v0, row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    iget v2, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 224
    .end local v0           #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 222
    .restart local v0       #row:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
