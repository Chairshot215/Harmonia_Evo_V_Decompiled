.class public Lcom/android/providers/downloads/ui/DownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "DownloadAdapter.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDescriptionColumnId:I

.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field private final mFileNameColumnId:I

.field private final mIdColumnId:I

.field private final mMediaTypeColumnId:I

.field private final mReasonColumnId:I

.field private mResources:Landroid/content/res/Resources;

.field private final mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mTitleColumnId:I

.field private final mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 2
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x3

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 67
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 68
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 69
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    .line 70
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 71
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 73
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    .line 74
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    .line 75
    const-string v0, "description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDescriptionColumnId:I

    .line 76
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    .line 77
    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    .line 78
    const-string v0, "total_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    .line 79
    const-string v0, "media_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    .line 80
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    .line 82
    const-string v0, "local_filename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    .line 84
    return-void
.end method

.method private getDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 122
    .local v0, date:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSizeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 140
    .local v1, totalBytes:J
    const-string v0, ""

    .line 141
    .local v0, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 131
    .local v0, today:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 135
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getStatusStringId()I
    .locals 5

    .prologue
    const v1, 0x7f070008

    .line 148
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :sswitch_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    const v1, 0x7f07000a

    .line 172
    :goto_0
    :sswitch_1
    return v1

    .line 153
    :pswitch_0
    const v1, 0x7f07000c

    goto :goto_0

    .line 160
    :sswitch_2
    const v1, 0x7f070009

    goto :goto_0

    .line 167
    :sswitch_3
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 168
    .local v0, reason:I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 170
    :pswitch_1
    const v1, 0x7f070007

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 151
    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private retrieveAndSetIcon(Landroid/view/View;)V
    .locals 12
    .parameter "convertView"

    .prologue
    const/4 v11, 0x0

    .line 179
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, mediaType:Ljava/lang/String;
    const v8, 0x7f090007

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 183
    .local v2, iconView:Landroid/widget/ImageView;
    const v8, 0x7f090008

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 184
    .local v5, lockIcon:Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    if-nez v6, :cond_0

    .line 220
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v8, "application/vnd.oma.drm.message"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 194
    const v8, 0x7f020001

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    :cond_1
    :goto_1
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "file"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 200
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/high16 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 202
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 204
    const/high16 v8, 0x7f02

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 206
    :cond_3
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v8, "content://drm/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    const v8, 0x7f020003

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTextForView(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .parameter "parent"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 223
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 224
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 7
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 94
    instance-of v0, p1, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v0, :cond_0

    .line 118
    .end local p1
    :goto_0
    return-void

    .line 98
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .local v1, downloadId:J
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/DownloadItem;->setData(JILjava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->retrieveAndSetIcon(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    :cond_1
    const v0, 0x7f090009

    invoke-direct {p0, p1, v0, v6}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 111
    const v0, 0x7f09000a

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDescriptionColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 112
    const v0, 0x7f09000d

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 113
    const v0, 0x7f09000c

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 114
    const v0, 0x7f09000b

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 116
    check-cast p1, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/DownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 236
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;I)V

    .line 237
    return-void
.end method

.method public newView()Landroid/view/View;
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    .line 89
    .local v0, view:Lcom/android/providers/downloads/ui/DownloadItem;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadItem;->setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 90
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
