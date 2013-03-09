.class public Lcom/android/mms/ui/ForwardDetailView;
.super Lcom/htc/app/HtcListActivity;
.source "ForwardDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;,
        Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_VVM_FORWARD:I = 0x1

.field public static final MODE_FORWARD:I = 0x0

.field public static final MODE_SHARE_SMS:I = 0x1

.field protected static final QUERY_TOKEN:I = 0x0

.field public static final REQUEST_CODE_SEND:I = 0x46

.field private static final TAG:Ljava/lang/String; = "ForwardDetailView"

.field public static isSupportDescOrder:Z


# instance fields
.field private mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

.field private mCategory:I

.field public mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

.field private mContactId:J

.field private mCurrent_pos:I

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private mMode:I

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

.field protected mUri:Landroid/net/Uri;

.field private mVvmForwardOnClickListener:Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

.field private msg:Lcom/android/mms/ui/MessageItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ForwardDetailView;->isSupportDescOrder:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mCursorLock:Ljava/lang/Object;

    .line 86
    iput-object v1, p0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mCurrent_pos:I

    .line 90
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iput-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 91
    iput-object v1, p0, Lcom/android/mms/ui/ForwardDetailView;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 99
    iput-object v1, p0, Lcom/android/mms/ui/ForwardDetailView;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

    .line 834
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ForwardDetailView;)Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ForwardDetailView;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ForwardDetailView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ForwardDetailView;)Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ForwardDetailView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ForwardDetailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ForwardDetailView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/ui/ForwardDetailView;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ForwardDetailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mCurrent_pos:I

    return v0
.end method

.method private getMsgListQueryProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->HTC_PROJECTION:[Ljava/lang/String;

    .line 429
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getPduPersister()Lcom/google/android/mms/pdu/PduPersister;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 190
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_0
.end method

.method private getThreadUri()Landroid/net/Uri;
    .locals 8

    .prologue
    .line 399
    const-string v4, "ForwardDetailView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContactId> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mContactId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-wide v1, p0, Lcom/android/mms/ui/ForwardDetailView;->mContactId:J

    .line 403
    .local v1, id:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    sget-object v4, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 405
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 416
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 417
    const-string v4, "category"

    iget v5, p0, Lcom/android/mms/ui/ForwardDetailView;->mCategory:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 418
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 419
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "ForwardDetailView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThreadUri >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-object v3

    .line 410
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 413
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0
.end method

.method private prepareQueryParameters()V
    .locals 2

    .prologue
    .line 337
    new-instance v0, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ForwardDetailView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    .line 338
    new-instance v0, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;-><init>(Lcom/android/mms/ui/ForwardDetailView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ForwardDetailView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 340
    return-void
.end method

.method private startAsyncQuery()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 343
    iget-object v8, p0, Lcom/android/mms/ui/ForwardDetailView;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 344
    :try_start_0
    sget-boolean v0, Lcom/android/mms/ui/ForwardDetailView;->isSupportDescOrder:Z

    if-eqz v0, :cond_0

    const-string v7, " normalized_date DESC "

    .line 345
    .local v7, orderBy:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->cancelOperation(I)V

    .line 346
    iget v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-nez v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->getThreadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->getMsgListQueryProjection()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "(m_type ISNULL OR m_type != 130) "

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/mms/ui/ForwardDetailView;->isSupportDescOrder:Z

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTranscriptMode(I)V

    .line 363
    :cond_2
    monitor-exit v8

    .line 364
    return-void

    .line 351
    :cond_3
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-ne v0, v1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->getThreadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->getMsgListQueryProjection()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "(transport_type = \'sms\') "

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v7           #orderBy:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 434
    const/16 v0, 0x46

    if-ne p1, v0, :cond_0

    .line 435
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->finish()V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ForwardDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, v12}, Lcom/android/mms/ui/ForwardDetailView;->requestWindowFeature(I)Z

    .line 109
    sget-object v6, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-static {p0, v6, v11, v11}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v2

    .line 111
    .local v2, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 114
    .local v1, contentView:Landroid/view/ViewGroup;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ForwardDetailView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f030017

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, loadingLayout:Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v4, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    const v7, 0x7f0e000b

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ForwardDetailView;->setContentView(Landroid/view/View;)V

    .line 123
    const v6, 0x7f0e002b

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ForwardDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CONTACT_ID"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mContactId:J

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CURRENT_POS"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mCurrent_pos:I

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "category"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mCategory:I

    .line 129
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "DESCORDER"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/ui/ForwardDetailView;->isSupportDescOrder:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    .line 131
    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->prepareQueryParameters()V

    .line 132
    const-string v6, "ForwardDetailView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ForwardDetailView onResume, mContactId>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/mms/ui/ForwardDetailView;->mContactId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getHeaderBarComposer()Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    move-result-object v0

    .line 136
    .local v0, composer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    iget-object v6, v0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarText;

    .line 137
    .local v5, view:Lcom/htc/widget/HeaderBarText;
    iget v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-nez v6, :cond_3

    .line 138
    const v6, 0x7f0902dd

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {v5, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 148
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 153
    :cond_2
    const-string v6, "ForwardDetailView"

    const-string v7, "ForwardDetailView onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 139
    :cond_3
    iget v6, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-ne v12, v6, :cond_1

    .line 140
    const v6, 0x7f090372

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 376
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 371
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060026

    iget-object v2, p0, Lcom/android/mms/ui/ForwardDetailView;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v0, "ForwardDetailView"

    const-string v1, "onDestroy >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 182
    iput-object v2, p0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    .line 183
    iput-object v2, p0, Lcom/android/mms/ui/ForwardDetailView;->mCursor:Landroid/database/Cursor;

    .line 184
    iput-object v2, p0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    .line 185
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 332
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 328
    :pswitch_0
    iget v1, p0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0xe3
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 21
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mQueryHandler:Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ForwardDetailView$ThreadListQueryHandler;->cancelOperation(I)V

    .line 196
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ForwardDetailView;->mCurrent_pos:I

    .line 197
    const/16 v19, 0x0

    .line 198
    .local v19, uri:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "compose_mode"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const-string v2, "Forward_msg"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/MessageItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ForwardDetailView;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 207
    :catch_0
    move-exception v9

    .line 208
    .local v9, e:Lcom/google/android/mms/MmsException;
    const-string v2, "ForwardDetailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to new msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-nez v2, :cond_2

    .line 216
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 219
    .local v17, subject:Ljava/lang/String;
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v2, "msg_type"

    const-string v3, "sms"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const/16 v2, 0x46

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/mms/ui/ForwardDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 222
    .end local v17           #subject:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ForwardDetailView;->mMode:I

    if-ne v2, v3, :cond_0

    .line 225
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.socialnetwork.chinasns/link"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "android.intent.category.HTC"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "com.htc.socialnetwork.chinasns"

    const-string v3, "com.htc.socialnetwork.chinasns.ChinaSNSWallInput"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/ForwardDetailView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->finish()V

    goto/16 :goto_1

    .line 231
    :catch_1
    move-exception v9

    .line 232
    .local v9, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 237
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 238
    new-instance v16, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 241
    .local v16, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageItem;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v14

    .line 242
    .local v14, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {}, Lcom/android/mms/MmsApp;->isRestrictedMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/mms/ui/MessageUtils;->isInCoreContentDomain(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)I

    move-result v15

    .line 244
    .local v15, result:I
    if-eqz v15, :cond_4

    .line 245
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_1

    .line 247
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0903d1

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/model/CarrierContentRestriction;->getMaxResolutionString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 253
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0903d0

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 263
    .end local v15           #result:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isRelatedMMS()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 267
    new-instance v8, Lcom/android/mms/msg/util/MessageDataAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mAdapter:Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ForwardDetailView$MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 270
    .local v8, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, p4

    long-to-int v3, v0

    invoke-static {v2, v8, v3}, Lcom/android/mms/msg/AbstractMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v12

    .line 271
    .local v12, mmi:Lcom/android/mms/msg/AbstractMessage;
    move-object v0, v12

    check-cast v0, Lcom/android/mms/msg/MultimediaMessage;

    move-object v13, v0

    .line 272
    .local v13, mms:Lcom/android/mms/msg/MultimediaMessage;
    invoke-virtual {v13}, Lcom/android/mms/msg/MultimediaMessage;->willDiscardAttachmentWhileForwading()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    const v2, 0x7f090308

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    .end local v12           #mmi:Lcom/android/mms/msg/AbstractMessage;
    .end local v13           #mms:Lcom/android/mms/msg/MultimediaMessage;
    :cond_5
    :goto_3
    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    .line 284
    .end local v8           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getPrefix(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 286
    .restart local v17       #subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 288
    .local v10, encstr:Ljava/lang/String;
    const-string v18, ""

    .line 289
    .local v18, substr:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 290
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 293
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 298
    .end local v10           #encstr:Ljava/lang/String;
    .end local v18           #substr:Ljava/lang/String;
    :cond_8
    :goto_4
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 303
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ForwardDetailView;->getPduPersister()Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 309
    :goto_5
    const-string v2, "msg_uri"

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    const-string v2, "subject"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "msg_type"

    const-string v3, "mms"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const/16 v2, 0x46

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/mms/ui/ForwardDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 276
    .end local v17           #subject:Ljava/lang/String;
    .restart local v8       #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    :catch_2
    move-exception v9

    .line 278
    .local v9, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v9}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_3

    .line 296
    .end local v8           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    .restart local v10       #encstr:Ljava/lang/String;
    .restart local v17       #subject:Ljava/lang/String;
    .restart local v18       #substr:Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v10

    goto :goto_4

    .line 304
    .end local v10           #encstr:Ljava/lang/String;
    .end local v18           #substr:Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 305
    .restart local v9       #e:Lcom/google/android/mms/MmsException;
    const-string v2, "ForwardDetailView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    const v2, 0x7f09005f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 313
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    .end local v14           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v16           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v17           #subject:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isVVM()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->msg:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v2, Lcom/android/mms/ui/MessageItem;->vvmId:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 315
    .local v20, vvm_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;-><init>(Lcom/android/mms/ui/ForwardDetailView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ForwardDetailView;->mVvmForwardOnClickListener:Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ForwardDetailView$DialogVVMForwardOnClickListener;->setVVmId(Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ForwardDetailView;->showDialog(I)V

    goto/16 :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "ForwardDetailView"

    const-string v1, "onResume >>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 160
    invoke-direct {p0}, Lcom/android/mms/ui/ForwardDetailView;->startAsyncQuery()V

    .line 161
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 175
    return-void
.end method
