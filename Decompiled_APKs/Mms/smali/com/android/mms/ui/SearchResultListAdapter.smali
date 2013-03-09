.class public Lcom/android/mms/ui/SearchResultListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchResultListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;
    }
.end annotation


# static fields
.field static final COLUMN_BODY:I = 0x3

.field static final COLUMN_DATE:I = 0x1

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MSG_TYPE:I = 0x4

.field static final COLUMN_RECIPIENT_ADDRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SearchResultListAdapter"


# instance fields
.field private mAddrView:Landroid/widget/TextView;

.field private mBodyView:Landroid/widget/TextView;

.field private mCheckIcon:Landroid/widget/ImageView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListView:Lcom/htc/widget/HtcListView;

.field private mPhotoIcon:Landroid/widget/ImageView;

.field private mTimeStamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "listView"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 88
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    iput-object p3, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 91
    return-void
.end method

.method private bindThreadView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 142
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, address:Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 145
    const-string v11, ";"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, values:[Ljava/lang/String;
    const-string v6, ""

    .line 147
    .local v6, result:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v11, v10

    if-ge v5, v11, :cond_2

    .line 148
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 149
    if-nez v5, :cond_1

    .line 150
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v12

    aget-object v13, v10, v5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v12

    aget-object v13, v10, v5

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 155
    :cond_2
    move-object v2, v6

    .line 160
    .end local v5           #i:I
    .end local v6           #result:Ljava/lang/String;
    .end local v10           #values:[Ljava/lang/String;
    .local v2, contact:Ljava/lang/String;
    :goto_2
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, subject:Ljava/lang/String;
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 163
    .local v3, date:J
    const/4 v11, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, type:Ljava/lang/String;
    const-string v11, "mms"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 165
    const-wide/16 v11, 0x3e8

    mul-long/2addr v3, v11

    .line 168
    :cond_3
    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 170
    .local v8, timestamp:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mAddrView:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v11, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mBodyView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 173
    iget-object v11, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v11, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mTimeStamp:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 158
    .end local v2           #contact:Ljava/lang/String;
    .end local v3           #date:J
    .end local v7           #subject:Ljava/lang/String;
    .end local v8           #timestamp:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #contact:Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;

    .line 98
    .local v0, cache:Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;
    iget-object v1, v0, Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;->mAddrView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mAddrView:Landroid/widget/TextView;

    .line 99
    iget-object v1, v0, Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;->mBodyView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mBodyView:Landroid/widget/TextView;

    .line 100
    iget-object v1, v0, Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;->mTimeStamp:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mTimeStamp:Landroid/widget/TextView;

    .line 101
    iget-object v1, v0, Lcom/android/mms/ui/SearchResultListAdapter$ListItemCache;->mPhotoIcon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mPhotoIcon:Landroid/widget/ImageView;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SearchResultListAdapter;->bindThreadView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 108
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/mms/ui/SearchResultListAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 134
    return-void
.end method
