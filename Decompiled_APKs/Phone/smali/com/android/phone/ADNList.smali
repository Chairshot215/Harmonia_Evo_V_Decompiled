.class public Lcom/android/phone/ADNList;
.super Landroid/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$FdnData;,
        Lcom/android/phone/ADNList$FdnAdapter;,
        Lcom/android/phone/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field protected static final DATA_TYPE_CURSOR:I = 0x1

.field protected static final DATA_TYPE_FDN:I = 0x2

.field protected static final DBG:Z = false

.field protected static final DELETE_TOKEN:I = 0x3

.field protected static final EMAILS_COLUMN:I = 0x2

.field protected static final INSERT_TOKEN:I = 0x1

.field protected static final NAME_COLUMN:I = 0x0

.field protected static final NUMBER_COLUMN:I = 0x1

.field protected static final QUERY_TOKEN:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "ADNList"

.field protected static final UPDATE_TOKEN:I = 0x2

.field private static final VIEW_NAMES:[I


# instance fields
.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

.field protected mFdns:[Lcom/android/phone/ADNList$FdnData;

.field private mHtcContext:Landroid/content/Context;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const-string v1, "emails"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 84
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 458
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ADNList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->setAdapter(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0e036c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 311
    return-void

    .line 307
    :cond_0
    const v0, 0x7f0e036d

    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v2

    .line 202
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/ADNList;->getCursorColumns(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 205
    return-void
.end method

.method private reQuery()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 209
    return-void
.end method

.method private setAdapter(I)V
    .locals 4
    .parameter "nDataType"

    .prologue
    const/4 v3, 0x1

    .line 239
    if-ne p1, v3, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 243
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    :goto_0
    iget v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 249
    iget v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 291
    :cond_0
    :goto_1
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearFocus()V

    .line 258
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_1

    .line 262
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    if-nez v1, :cond_6

    .line 265
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newFdnAdapter()Lcom/android/phone/ADNList$FdnAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 267
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    iget-object v2, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/ADNList$FdnAdapter;->add(Ljava/lang/Object;)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    :cond_5
    iget v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v2, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    invoke-virtual {v2}, Lcom/android/phone/ADNList$FdnAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 278
    iget v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_1

    .line 272
    .end local v0           #i:I
    :cond_6
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    invoke-virtual {v1}, Lcom/android/phone/ADNList$FdnAdapter;->clear()V

    .line 273
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 274
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    iget-object v2, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/ADNList$FdnAdapter;->add(Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 285
    :cond_7
    iget-object v1, p0, Lcom/android/phone/ADNList;->mFdnAdapter:Lcom/android/phone/ADNList$FdnAdapter;

    invoke-virtual {v1}, Lcom/android/phone/ADNList$FdnAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearFocus()V

    .line 287
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    goto/16 :goto_1
.end method


# virtual methods
.method protected getCursorColumns(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 320
    sget-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 412
    const-string v0, "ADNList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ADNList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method protected newCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 6

    .prologue
    .line 295
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->getCursorColumns(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected newFdnAdapter()Lcom/android/phone/ADNList$FdnAdapter;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/android/phone/ADNList$FdnAdapter;

    const v1, 0x1090004

    invoke-direct {v0, p0, p0, v1}, Lcom/android/phone/ADNList$FdnAdapter;-><init>(Lcom/android/phone/ADNList;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 112
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/android/phone/ADNList;->setContentView(I)V

    .line 113
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 114
    new-instance v4, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 117
    new-array v4, v8, [Lcom/android/phone/ADNList$FdnData;

    iput-object v4, p0, Lcom/android/phone/ADNList;->mFdns:[Lcom/android/phone/ADNList$FdnData;

    .line 120
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ADNList;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 133
    new-instance v2, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v2, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v3, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 135
    .local v3, titlebartext:Lcom/htc/widget/HeaderBarText;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 138
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 142
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 143
    .local v1, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 146
    .end local v1           #preferLayout:Landroid/view/ViewGroup;
    .end local v2           #titlebar:Lcom/htc/widget/HeaderBarMiddle;
    .end local v3           #titlebartext:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ADNList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get HtcResource context failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/ADNList;->mHtcContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 155
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 156
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 175
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/ADNList;->mHtcContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/ADNList;->mHtcContext:Landroid/content/Context;

    const v3, 0x20c011e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/ADNList;->mHtcContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/ADNList;->mHtcContext:Landroid/content/Context;

    const v3, 0x20c0120

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    const v2, 0x7f0e0394

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 184
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 187
    :cond_0
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public sortFdnByName([Lcom/android/phone/ADNList$FdnData;Z)V
    .locals 1
    .parameter "fdns"
    .parameter "bSmalltoBig"

    .prologue
    .line 326
    new-instance v0, Lcom/android/phone/ADNList$1;

    invoke-direct {v0, p0, p2}, Lcom/android/phone/ADNList$1;-><init>(Lcom/android/phone/ADNList;Z)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 337
    return-void
.end method
