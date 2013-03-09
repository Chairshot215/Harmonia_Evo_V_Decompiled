.class public Lcom/android/mms/ui/MessageSearch;
.super Lcom/htc/app/HtcListActivity;
.source "MessageSearch.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageSearch$QueryHandler;,
        Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static idIDX:I

.field private static senderIDX:I

.field private static subjectIDX:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private clearText:Z

.field list:Lcom/htc/widget/HtcListView;

.field private mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

.field private mBarInput:Lcom/htc/widget/HeaderBarInput;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHighLight:Ljava/lang/String;

.field private mID:J

.field private mMsgType:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mQueryHandler:Lcom/android/mms/ui/MessageSearch$QueryHandler;

.field private mSearchEditor:Landroid/widget/EditText;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUri:Landroid/net/Uri;

.field markId:J

.field searchKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/MessageSearch;->idIDX:I

    .line 78
    const/4 v0, 0x6

    sput v0, Lcom/android/mms/ui/MessageSearch;->subjectIDX:I

    .line 79
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/ui/MessageSearch;->senderIDX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 54
    const-string v0, "MessageSearch"

    iput-object v0, p0, Lcom/android/mms/ui/MessageSearch;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageSearch;->clearText:Z

    .line 64
    iput-object v1, p0, Lcom/android/mms/ui/MessageSearch;->mProgressBar:Landroid/widget/ProgressBar;

    .line 65
    iput-object v1, p0, Lcom/android/mms/ui/MessageSearch;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "sms"

    iput-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mMsgType:Ljava/lang/String;

    .line 489
    new-instance v0, Lcom/android/mms/ui/MessageSearch$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageSearch$2;-><init>(Lcom/android/mms/ui/MessageSearch;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mTextWatcher:Landroid/text/TextWatcher;

    .line 527
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageSearch;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/android/mms/ui/MessageSearch;->mID:J

    return-wide p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/mms/ui/MessageSearch;->idIDX:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageSearch;)Lcom/htc/widget/HeaderBarInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mBarInput:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mQueryHandler:Lcom/android/mms/ui/MessageSearch$QueryHandler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/mms/ui/MessageSearch;->subjectIDX:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/mms/ui/MessageSearch;->senderIDX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/MessageSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/MessageSearch;->mHighLight:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessageSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/MessageSearch;->mMsgType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageSearch;JLjava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageSearch;->openThread(JLjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageSearch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageSearch;->clearText:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MessageSearch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageSearch;->clearText:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageSearch;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method private displayProgress(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_0
    if-eqz p1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private getBoxName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msgBox"
    .parameter "msgType"

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 436
    const-string v0, "MessageSearch"

    const-string v1, "Invalid SMS box type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v0, ""

    :goto_0
    return-object v0

    .line 418
    :pswitch_0
    const-string v0, "inbox"

    goto :goto_0

    .line 420
    :pswitch_1
    if-eqz p2, :cond_1

    .line 421
    const-string v0, "sms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "draft"

    goto :goto_0

    .line 424
    :cond_0
    const-string v0, "drafts"

    goto :goto_0

    .line 428
    :cond_1
    :pswitch_2
    const-string v0, "outbox"

    goto :goto_0

    .line 430
    :pswitch_3
    const-string v0, "failed"

    goto :goto_0

    .line 432
    :pswitch_4
    const-string v0, "sent"

    goto :goto_0

    .line 434
    :pswitch_5
    const-string v0, "queued"

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private openThread(JLjava/lang/String;II)V
    .locals 13
    .parameter "threadId"
    .parameter "address"
    .parameter "rowid"
    .parameter "folder"

    .prologue
    .line 444
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v9, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "content://mms-sms-v2/get-contactID"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 448
    .local v12, threadIdUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 451
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 456
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v12           #threadIdUri:Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 458
    .local v11, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_mms_thread_mode"

    const/4 v2, 0x1

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 460
    .local v8, flag:Z
    if-nez v8, :cond_1

    .line 461
    new-instance v10, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct {v10, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v10, intent1:Landroid/content/Intent;
    const-string v1, "thread_id"

    invoke-virtual {v10, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 463
    const-string v1, "msg_Id"

    move/from16 v0, p4

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v1, "msg_type"

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch;->mMsgType:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "folder"

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch;->mMsgType:Ljava/lang/String;

    move/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/MessageSearch;->getBoxName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "category"

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessageSearch;->startActivity(Landroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->finish()V

    .line 485
    .end local v8           #flag:Z
    .end local v10           #intent1:Landroid/content/Intent;
    .end local v11           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 474
    :cond_1
    const-string v1, "thread_id"

    invoke-virtual {v9, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 475
    const-string v1, "category"

    sget v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v1, "select_id"

    move/from16 v0, p4

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch;->mHighLight:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v1, "select_msg_type"

    iget-object v2, p0, Lcom/android/mms/ui/MessageSearch;->mMsgType:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    const-string v1, "address"

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageSearch;->startActivity(Landroid/content/Intent;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->finish()V

    goto :goto_0
.end method

.method private runTraditionMode()V
    .locals 11

    .prologue
    .line 388
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 389
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 390
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_mms_thread_mode"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 392
    .local v0, flag:Z
    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 394
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "notify_MsgURI"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, uri:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 396
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v3, intent1:Landroid/content/Intent;
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, index:I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 399
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, msg_id:Ljava/lang/String;
    const-string v7, "thread_id"

    const-string v8, "thread_id"

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 401
    const-string v7, "msg_Id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 402
    const-string v8, "msg_type"

    const-string v7, "sms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "sms"

    :goto_0
    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v7, "folder"

    const-string v8, "inbox"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v7, "category"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageSearch;->startActivity(Landroid/content/Intent;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->finish()V

    .line 413
    .end local v0           #flag:Z
    .end local v1           #index:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intent1:Landroid/content/Intent;
    .end local v4           #msg_id:Ljava/lang/String;
    .end local v5           #pref:Landroid/content/SharedPreferences;
    .end local v6           #uri:Ljava/lang/String;
    :cond_0
    return-void

    .line 402
    .restart local v0       #flag:Z
    .restart local v1       #index:I
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #intent1:Landroid/content/Intent;
    .restart local v4       #msg_id:Ljava/lang/String;
    .restart local v5       #pref:Landroid/content/SharedPreferences;
    .restart local v6       #uri:Ljava/lang/String;
    :cond_1
    const-string v7, "mms"

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 305
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 199
    const-string v9, "MessageSearch"

    const-string v10, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageSearch;->requestWindowFeature(I)Z

    .line 204
    iput-object p0, p0, Lcom/android/mms/ui/MessageSearch;->mContext:Landroid/content/Context;

    .line 207
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 209
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    const/4 v9, 0x1

    new-array v6, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/mms/util/CommonActivityLayout$BarImage;

    sget-object v11, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    const v12, 0x7f020142

    const/4 v13, -0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/android/mms/util/CommonActivityLayout$BarImage;-><init>(Lcom/android/mms/util/CommonActivityLayout$BarImageType;II)V

    aput-object v10, v6, v9

    .line 213
    .local v6, left:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    const/4 v9, 0x1

    new-array v0, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/mms/util/CommonActivityLayout$BarInputField;

    sget-object v11, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SEARCHBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-direct {v10, v11}, Lcom/android/mms/util/CommonActivityLayout$BarInputField;-><init>(Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;)V

    aput-object v10, v0, v9

    .line 216
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 217
    iput-object v6, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 218
    sget-object v9, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v9, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 220
    const/4 v3, 0x0

    .line 222
    .local v3, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 223
    .local v2, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v7

    .line 224
    .local v7, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v7}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageSearch;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v9, v7, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v9, Lcom/htc/widget/HeaderBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 227
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    .line 228
    .local v4, img:Lcom/htc/widget/HeaderBarImage;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 236
    new-instance v9, Lcom/android/mms/ui/MessageSearch$QueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/mms/ui/MessageSearch$QueryHandler;-><init>(Lcom/android/mms/ui/MessageSearch;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mQueryHandler:Lcom/android/mms/ui/MessageSearch$QueryHandler;

    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 239
    .local v5, it:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mUri:Landroid/net/Uri;

    .line 240
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mUri:Landroid/net/Uri;

    if-nez v9, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->finish()V

    .line 276
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    if-nez v9, :cond_1

    .line 246
    new-instance v9, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10, p0}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;-><init>(Lcom/android/mms/ui/MessageSearch;Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    .line 248
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->notifyDataSetChanged()V

    .line 250
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageSearch;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v9}, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding()V

    .line 252
    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v9}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;

    .line 253
    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HeaderBarInput;

    iput-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mBarInput:Lcom/htc/widget/HeaderBarInput;

    .line 255
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/mms/ui/MessageSearch;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 256
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;

    const v10, 0x7f090157

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessageSearch;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    const v9, 0x7f0e000f

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageSearch;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;

    .line 260
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "searchKey"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, searchKey:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 262
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 275
    :cond_2
    const-string v9, "MessageSearch"

    const-string v10, "onCreate() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 264
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v9, p0, Lcom/android/mms/ui/MessageSearch;->mEmptyView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final onDestroy()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "MessageSearch"

    const-string v1, "onDestroy() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 285
    :cond_0
    const-string v0, "MessageSearch"

    const-string v1, "onDestroy() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 309
    const-string v0, "MessageSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageSearch;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 333
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 334
    iget-object v3, p0, Lcom/android/mms/ui/MessageSearch;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 336
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-nez v3, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    .line 344
    .local v0, h:Lcom/android/mms/util/MmsAsyncWorkHandler;
    if-eqz v0, :cond_1

    .line 345
    move v2, p3

    .line 347
    .local v2, pos:I
    new-instance v3, Lcom/android/mms/ui/MessageSearch$1;

    invoke-direct {v3, p0, v2}, Lcom/android/mms/ui/MessageSearch$1;-><init>(Lcom/android/mms/ui/MessageSearch;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/mms/util/MmsAsyncWorkHandler;->runInUIthread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "MessageSearch"

    const-string v1, "onResume() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 292
    const-string v0, "MessageSearch"

    const-string v1, "onResume() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method
