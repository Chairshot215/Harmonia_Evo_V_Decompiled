.class public Lcom/android/mms/ui/SearchResultActivity;
.super Lcom/htc/app/HtcListActivity;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static final SEARCH_TOKEN:I = 0x6a6

.field private static final TAG:Ljava/lang/String; = "SearchResultActivity"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5


# instance fields
.field private isQueryChanged:Z

.field private mBaseUri:Landroid/net/Uri;

.field private mCallfromOutside:Z

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private final mEditorHandler:Landroid/os/Handler;

.field private mHighLight:Ljava/lang/String;

.field private mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;

.field private mMsgType:Ljava/lang/String;

.field private mNormalLayout:Landroid/widget/LinearLayout;

.field private mProjection:[Ljava/lang/String;

.field private mQuery:[Ljava/lang/String;

.field private mQueryHandler:Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;

.field private mQueryIntent:Landroid/content/Intent;

.field private mQueryString:Ljava/lang/String;

.field private mQueryToken:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleShadow:Landroid/widget/TextView;

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursorLock:Ljava/lang/Object;

    .line 96
    const-string v0, "sms"

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mMsgType:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lcom/android/mms/ui/SearchResultActivity;->mCallfromOutside:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/mms/ui/SearchResultActivity;->isQueryChanged:Z

    .line 457
    new-instance v0, Lcom/android/mms/ui/SearchResultActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchResultActivity$2;-><init>(Lcom/android/mms/ui/SearchResultActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 465
    new-instance v0, Lcom/android/mms/ui/SearchResultActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchResultActivity$3;-><init>(Lcom/android/mms/ui/SearchResultActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mEditorHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchResultActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mHighLight:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchResultActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SearchResultActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchResultActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SearchResultActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SearchResultActivity;)Lcom/android/mms/ui/SearchResultListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SearchResultActivity;Lcom/android/mms/ui/SearchResultListAdapter;)Lcom/android/mms/ui/SearchResultListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SearchResultActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SearchResultActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mTitleShadow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SearchResultActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initNormalQueryArgs()V
    .locals 3

    .prologue
    .line 313
    const-string v0, "content://mms-sms/suggestion/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mBaseUri:Landroid/net/Uri;

    .line 314
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mQuery:[Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mProjection:[Ljava/lang/String;

    .line 316
    const/16 v0, 0x6a5

    iput v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryToken:I

    .line 317
    return-void
.end method

.method private openThread(JLjava/lang/String;I)V
    .locals 7
    .parameter "threadId"
    .parameter "address"
    .parameter "rowid"

    .prologue
    .line 362
    move-object v5, p3

    .line 363
    .local v5, fAddress:Ljava/lang/String;
    move-wide v2, p1

    .line 364
    .local v2, fThreadId:J
    move v4, p4

    .line 365
    .local v4, fRowId:I
    new-instance v6, Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-direct {v6}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    .line 366
    .local v6, handler:Lcom/android/mms/util/MmsAsyncWorkHandler;
    new-instance v0, Lcom/android/mms/ui/SearchResultActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SearchResultActivity$1;-><init>(Lcom/android/mms/ui/SearchResultActivity;JILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method private startAsyncQuery()V
    .locals 10

    .prologue
    .line 321
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryHandler:Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryHandler:Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryToken:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchResultActivity;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/SearchResultActivity;->mProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/SearchResultActivity;->mQuery:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    monitor-exit v9

    .line 329
    :goto_0
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 326
    :catch_0
    move-exception v8

    .line 327
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public displayInfo()V
    .locals 2

    .prologue
    const v1, 0x7f09015a

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mTitleShadow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 448
    return-void
.end method

.method protected handleCreationIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/mms/ui/SearchResultActivity;->initNormalQueryArgs()V

    .line 221
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 269
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/SearchResultActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    .line 107
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, queryAction:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 111
    .local v5, queryUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    if-eqz v7, :cond_0

    .line 112
    const-string v7, "SearchResultActivity"

    const-string v8, "mQueryIntent!=null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v8, "query"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    .line 114
    const-string v7, "SearchResultActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQueryString:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 122
    .local v0, _id:J
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mHighLight:Ljava/lang/String;

    .line 123
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    const-string v7, "mms"

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mMsgType:Ljava/lang/String;

    .line 126
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v8, "intent_extra_data_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 127
    .local v6, rowidPos:I
    const/4 v7, 0x0

    invoke-direct {p0, v0, v1, v7, v6}, Lcom/android/mms/ui/SearchResultActivity;->openThread(JLjava/lang/String;I)V

    .line 128
    iput-boolean v10, p0, Lcom/android/mms/ui/SearchResultActivity;->mCallfromOutside:Z

    .line 161
    .end local v0           #_id:J
    .end local v6           #rowidPos:I
    :goto_0
    return-void

    .line 152
    :cond_2
    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 153
    .local v2, builder:Landroid/net/Uri$Builder;
    const-string v7, "search"

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const-class v9, Lcom/android/mms/ui/MessageSearch;

    invoke-direct {v3, v7, v8, p0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v3, it:Landroid/content/Intent;
    const-string v7, "searchKey"

    iget-object v8, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/high16 v7, 0x400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 296
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 302
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 304
    iget-boolean v1, p0, Lcom/android/mms/ui/SearchResultActivity;->mCallfromOutside:Z

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->finish()V

    .line 310
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 338
    iget-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 340
    iget-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 341
    .local v3, thread_id:J
    iget-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "recipient_address"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "suggest_intent_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, str:Ljava/lang/String;
    const/16 v5, 0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mHighLight:Ljava/lang/String;

    .line 345
    iget-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "msgtype"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    const-string v5, "mms"

    iput-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mMsgType:Ljava/lang/String;

    .line 348
    :cond_0
    const/4 v1, -0x1

    .line 350
    .local v1, rowidPos:I
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    const-string v7, "suggest_intent_extra_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/mms/ui/SearchResultActivity;->openThread(JLjava/lang/String;I)V

    .line 356
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #rowidPos:I
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #thread_id:J
    :cond_1
    return-void

    .line 351
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #rowidPos:I
    .restart local v2       #str:Ljava/lang/String;
    .restart local v3       #thread_id:J
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    .line 176
    const-string v7, "SearchResultActivity"

    const-string v8, "mQueryIntent!=null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v8, "query"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    .line 178
    const-string v7, "SearchResultActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mQueryString:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, queryAction:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 186
    .local v5, queryUri:Landroid/net/Uri;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 188
    .local v0, _id:J
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mHighLight:Ljava/lang/String;

    .line 189
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    const-string v7, "mms"

    iput-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mMsgType:Ljava/lang/String;

    .line 192
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v8, "intent_extra_data_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 193
    .local v6, rowidPos:I
    const/4 v7, 0x0

    invoke-direct {p0, v0, v1, v7, v6}, Lcom/android/mms/ui/SearchResultActivity;->openThread(JLjava/lang/String;I)V

    .line 194
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/SearchResultActivity;->mCallfromOutside:Z

    .line 216
    .end local v0           #_id:J
    .end local v6           #rowidPos:I
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-object v7, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 201
    .local v2, builder:Landroid/net/Uri$Builder;
    const-string v7, "search"

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const-class v9, Lcom/android/mms/ui/MessageSearch;

    invoke-direct {v3, v7, v8, p0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v3, it:Landroid/content/Intent;
    const-string v7, "searchKey"

    iget-object v8, p0, Lcom/android/mms/ui/SearchResultActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v7, 0x400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchResultActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCallfromOutside:Z

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchResultActivity;->isQueryChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/mms/ui/SearchResultActivity;->startAsyncQuery()V

    .line 245
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SearchResultActivity;->isQueryChanged:Z

    .line 246
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 243
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->requery(Landroid/content/Context;Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SearchResultListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;

    .line 283
    :cond_1
    monitor-exit v1

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refreshContactName()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity;->mEditorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SearchResultActivity;->mEditorHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    return-void
.end method
