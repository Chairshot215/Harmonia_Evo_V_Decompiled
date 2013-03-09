.class public Lcom/android/mms/ui/ConversationList;
.super Lcom/android/mms/ui/ConversationListBaseActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$DeleteMessageListener;,
        Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$UIHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    }
.end annotation


# static fields
.field static final I_DELETE:I = 0x0

.field static final I_DRAFT:I = 0x1

.field static final I_NEW:I = 0x2

.field static final I_PREFERENCE:I = 0x5

.field static final I_TOTAL:I = 0x6

.field static final I_UNDELIVER:I = 0x3

.field static final I_WAP:I = 0x4

.field public static final MESSAGE_PREVIEW:Ljava/lang/String; = "pref_key_msg_preview"

.field public static final PREFS_KEY_CATEGORY:Ljava/lang/String; = "category"

.field public static final PREFS_NAME_CATEGORY:Ljava/lang/String; = "htc_messages_category"

.field private static final TAG:Ljava/lang/String; = "ConversationList"

.field private static bUnreadCountQueryRunning:Z

.field private static fakeCursorObj:Ljava/lang/Object;

.field private static mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

.field private static mOldIndex:I

.field public static search_category:I


# instance fields
.field private RunQueryList:Ljava/lang/Runnable;

.field private ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

.field private keypad:Lcom/android/mms/ui/MsgHWkeypad;

.field private mBaseUri:Landroid/net/Uri;

.field private mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCountDirty:Z

.field private final mCursorLock:Ljava/lang/Object;

.field private mFilter:Ljava/lang/String;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListPos:I

.field private mMenu:Landroid/view/Menu;

.field mMsgCcList:[Ljava/lang/String;

.field mMsgFromList:Ljava/lang/String;

.field mMsgToList:Ljava/lang/String;

.field private final mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mQuery:Ljava/lang/String;

.field private mQueryToken:I

.field private mSearchImg:Landroid/widget/Button;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleShadow:Landroid/widget/TextView;

.field private mUnreadCount:I

.field private mUnreadCountView:Landroid/widget/TextView;

.field private mUnreadThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    sput-boolean v0, Lcom/android/mms/ui/ConversationList;->bUnreadCountQueryRunning:Z

    .line 251
    sput v0, Lcom/android/mms/ui/ConversationList;->search_category:I

    .line 263
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/ConversationList;->mOldIndex:I

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationList;->fakeCursorObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mCursorLock:Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mListPos:I

    .line 219
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMenu:Landroid/view/Menu;

    .line 221
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    .line 223
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCountView:Landroid/widget/TextView;

    .line 224
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentObserver:Landroid/database/ContentObserver;

    .line 229
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMsgToList:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMsgCcList:[Ljava/lang/String;

    .line 231
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMsgFromList:Ljava/lang/String;

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mCountDirty:Z

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCount:I

    .line 254
    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadThreads:Ljava/util/ArrayList;

    .line 345
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    .line 667
    new-instance v0, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->RunQueryList:Ljava/lang/Runnable;

    .line 1307
    new-instance v0, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1819
    new-instance v0, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    .line 2466
    new-instance v0, Lcom/android/mms/ui/ConversationList$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$9;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCount:I

    return p1
.end method

.method static synthetic access$712(Lcom/android/mms/ui/ConversationList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->updateCountText(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadThreads:Ljava/util/ArrayList;

    return-object v0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 8
    .parameter "listener"
    .parameter "deleteAll"

    .prologue
    const/4 v7, 0x0

    .line 1280
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1282
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f030005

    invoke-static {p0, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1283
    .local v2, contents:Landroid/view/View;
    const v5, 0x7f0e0025

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .local v1, checkbox:Landroid/widget/CheckBox;
    move-object v5, p1

    .line 1284
    check-cast v5, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1285
    new-instance v5, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1290
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1292
    const v5, 0x20c01fc

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1293
    const v5, 0x7f0200d1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1294
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1295
    const v5, 0x20c015f

    invoke-virtual {v0, v5, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1296
    const v5, 0x20c0164

    invoke-virtual {v0, v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1298
    if-eqz p2, :cond_0

    const v3, 0x7f0900ac

    .line 1301
    .local v3, nID:I
    :goto_0
    const v5, 0x7f0e0024

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1302
    .local v4, textDelete:Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1305
    return-void

    .line 1298
    .end local v3           #nID:I
    .end local v4           #textDelete:Landroid/widget/TextView;
    :cond_0
    const v3, 0x7f0900ae

    goto :goto_0
.end method

.method private createSendACardItem()Landroid/view/View;
    .locals 7

    .prologue
    .line 1430
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x2090055

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1433
    .local v3, v:Landroid/view/View;
    const v4, 0x20200fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1435
    .local v0, btn:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    const v4, 0x2020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1438
    .local v2, text:Landroid/widget/TextView;
    const-string v4, "Send-A-Card"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    new-instance v1, Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;

    invoke-direct {v1}, Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;-><init>()V

    .line 1442
    .local v1, firstItem:Lcom/android/mms/ui/ConversationListBaseActivity$HtcListItem;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1444
    return-object v3
.end method

.method private getAddress(J)Ljava/lang/String;
    .locals 4
    .parameter "threadId"

    .prologue
    .line 1146
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1148
    .local v2, threadCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1149
    .local v0, address:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->isSimpleMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1150
    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    :goto_0
    return-object v0

    .line 1152
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, msgType:Ljava/lang/String;
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1154
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1156
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDraftMsgID(Landroid/content/Context;JI)Lcom/android/mms/util/DraftResult;
    .locals 39
    .parameter "context"
    .parameter "threadID"
    .parameter "category"

    .prologue
    .line 1602
    new-instance v35, Lcom/android/mms/util/DraftResult;

    invoke-direct/range {v35 .. v35}, Lcom/android/mms/util/DraftResult;-><init>()V

    .line 1604
    .local v35, result:Lcom/android/mms/util/DraftResult;
    sget-object v3, Lcom/android/mms/util/QueryURI;->GET_THREAD_ID_V2_URI:Landroid/net/Uri;

    .line 1605
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "recipient_address"

    aput-object v6, v4, v2

    .line 1610
    .local v4, thread_projection:[Ljava/lang/String;
    const-string v38, "_id IN (SELECT thread_id FROM contacts WHERE contact_id in (%s))"

    .line 1611
    .local v38, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    move-object/from16 v0, v38

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1615
    .local v5, select:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1616
    .local v22, cursor:Landroid/database/Cursor;
    if-nez v22, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return-object v35

    .line 1617
    :cond_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1619
    :cond_2
    const/16 v16, 0x1

    .line 1621
    .local v16, addrIdx:I
    const-string v2, "recipient_address"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1622
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1623
    .local v34, recipient_addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1624
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1625
    .local v15, addr:Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1627
    .end local v15           #addr:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1631
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    .line 1632
    .local v37, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 1633
    .local v36, s:Ljava/lang/String;
    const-string v2, ";"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1634
    const-string v2, ";"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1636
    .local v17, addr_arr:[Ljava/lang/String;
    const/16 v29, 0x0

    .local v29, i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_4

    .line 1637
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 1638
    const-string v2, "\'"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v17, v29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :goto_4
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 1641
    :cond_5
    const-string v2, ", "

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v17, v29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1646
    .end local v17           #addr_arr:[Ljava/lang/String;
    .end local v29           #i:I
    :cond_6
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1647
    const-string v2, "\'"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1650
    :cond_7
    const-string v2, ", "

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1657
    .end local v36           #s:Ljava/lang/String;
    :cond_8
    sget-object v3, Lcom/android/mms/util/QueryURI;->GET_PDU_ADDR_V2_URI:Landroid/net/Uri;

    .line 1658
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "msg_id"

    aput-object v6, v8, v2

    const/4 v2, 0x1

    const-string v6, "address"

    aput-object v6, v8, v2

    .line 1659
    .local v8, addr_projection:[Ljava/lang/String;
    const-string v38, "address IN (%s)"

    .line 1660
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    move-object/from16 v0, v38

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1661
    const-string v2, "ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 1669
    :goto_5
    if-nez v22, :cond_9

    .line 1670
    const-string v2, "ConversationList"

    const-string v6, "select address = null"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1665
    :catch_0
    move-exception v28

    .line 1666
    .local v28, e:Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1674
    .end local v28           #e:Ljava/lang/Exception;
    :cond_9
    const/16 v32, 0x0

    .line 1675
    .local v32, pduAddrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/mms/util/DraftResult;>;"
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_c

    .line 1676
    const-string v2, "ConversationList"

    const-string v6, "select pdu address count = 0"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1707
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    .line 1708
    .local v20, builder:Landroid/net/Uri$Builder;
    const/4 v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_b

    .line 1709
    const-string v2, "category"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1710
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lcom/android/mms/ui/ConversationList;->PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, " normalized_date DESC "

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1711
    if-eqz v22, :cond_0

    .line 1713
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_e

    .line 1714
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1679
    .end local v20           #builder:Landroid/net/Uri$Builder;
    :cond_c
    const/16 v31, 0x0

    .line 1680
    .local v31, msgIDIdx:I
    const/16 v19, 0x0

    .line 1681
    .local v19, addressIdx:I
    const/16 v21, 0x0

    .line 1682
    .local v21, curMsgID:I
    const/16 v18, 0x0

    .line 1683
    .local v18, address:Ljava/lang/String;
    const-string v2, "msg_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 1684
    const-string v2, "address"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1685
    new-instance v32, Ljava/util/HashMap;

    .end local v32           #pduAddrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/mms/util/DraftResult;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 1687
    .restart local v32       #pduAddrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/mms/util/DraftResult;>;"
    :goto_6
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1688
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1689
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1691
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1692
    new-instance v33, Lcom/android/mms/util/DraftResult;

    invoke-direct/range {v33 .. v33}, Lcom/android/mms/util/DraftResult;-><init>()V

    .line 1693
    .local v33, r:Lcom/android/mms/util/DraftResult;
    move/from16 v0, v21

    int-to-long v6, v0

    move-object/from16 v0, v33

    iput-wide v6, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    .line 1694
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1698
    .end local v33           #r:Lcom/android/mms/util/DraftResult;
    :cond_d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/mms/util/DraftResult;

    .line 1699
    .restart local v33       #r:Lcom/android/mms/util/DraftResult;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1718
    .end local v18           #address:Ljava/lang/String;
    .end local v19           #addressIdx:I
    .end local v21           #curMsgID:I
    .end local v31           #msgIDIdx:I
    .end local v33           #r:Lcom/android/mms/util/DraftResult;
    .restart local v20       #builder:Landroid/net/Uri$Builder;
    :cond_e
    const-string v27, ""

    .line 1719
    .local v27, draft_type:Ljava/lang/String;
    const-string v26, ""

    .line 1720
    .local v26, draft_subject:Ljava/lang/String;
    const-string v24, ""

    .line 1721
    .local v24, draft_body:Ljava/lang/String;
    const-string v23, ""

    .line 1723
    .local v23, draft_addr:Ljava/lang/String;
    :cond_f
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1724
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1725
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1726
    .local v25, draft_id:I
    const/16 v2, 0x9

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1727
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1728
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1729
    const-string v2, "mms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1730
    if-eqz v32, :cond_f

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/DraftResult;

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Lcom/android/mms/ui/ConversationList;->isMatchPduAddr(Ljava/util/ArrayList;Lcom/android/mms/util/DraftResult;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1731
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/mms/util/DraftResult;->mMsgType:Ljava/lang/String;

    .line 1732
    move/from16 v0, v25

    int-to-long v6, v0

    move-object/from16 v0, v35

    iput-wide v6, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    .line 1733
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/mms/util/DraftResult;->mSubject:Ljava/lang/String;

    .line 1744
    .end local v25           #draft_id:I
    :cond_10
    :goto_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1737
    .restart local v25       #draft_id:I
    :cond_11
    const-string v2, "sms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->isContainSmsAddr(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1738
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/mms/util/DraftResult;->mMsgType:Ljava/lang/String;

    .line 1739
    move/from16 v0, v25

    int-to-long v6, v0

    move-object/from16 v0, v35

    iput-wide v6, v0, Lcom/android/mms/util/DraftResult;->mMsgID:J

    .line 1740
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/mms/util/DraftResult;->mMsgBody:Ljava/lang/String;

    goto :goto_7
.end method

.method private gotoCorrectConversationMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2302
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2303
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2304
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_thread_mode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2305
    .local v0, flag:Z
    if-nez v0, :cond_0

    .line 2306
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2307
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.TraditionalList"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2308
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2309
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 2310
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->finish()V

    .line 2315
    .end local v0           #flag:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initMemberFields(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mListPos:I

    .line 393
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mCountDirty:Z

    .line 396
    sput-boolean v0, Lcom/android/mms/ui/ConversationList;->bUnreadCountQueryRunning:Z

    .line 399
    iput v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    .line 400
    if-eqz p1, :cond_0

    .line 401
    const-string v0, "base_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    .line 402
    const-string v0, "search_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    .line 403
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mFilter:Ljava/lang/String;

    .line 404
    const-string v0, "query_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryToken:I

    .line 407
    const-string v0, "ConversationList"

    const-string v1, "Get values from savedInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    return-void
.end method

.method private initNormalQueryArgs()V
    .locals 3

    .prologue
    .line 897
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    sget-object v1, Lcom/android/mms/util/QueryURI;->CONVERSATION_V2_COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 903
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 905
    const/16 v1, 0x2713

    iput v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryToken:I

    .line 907
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    const-string v1, "SortbyDate2"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 910
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    .line 912
    return-void

    .line 900
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    sget-object v1, Lcom/android/mms/util/QueryURI;->CONVERSATION_COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0
.end method

.method private initTitleComposeButton(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-static {}, Lcom/android/mms/util/ResIdManager;->getInstance()Lcom/android/mms/util/ResIdManager;

    move-result-object v1

    .line 358
    .local v1, idMgr:Lcom/android/mms/util/ResIdManager;
    const/16 v3, 0x7d1

    invoke-virtual {v1, v3, p1}, Lcom/android/mms/util/ResIdManager;->findViewById(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 369
    :goto_0
    return-void

    :cond_0
    move-object v0, v2

    .line 361
    check-cast v0, Landroid/widget/Button;

    .line 362
    .local v0, composeBtn:Landroid/widget/Button;
    const v3, 0x7f020010

    invoke-virtual {v0, v4, v3, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 363
    const v3, 0x7f09001a

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 364
    new-instance v3, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static isContainSmsAddr(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter "addr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, addr_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 1770
    const/4 v5, 0x0

    .line 1773
    .local v5, res:Z
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1791
    .end local v5           #res:Z
    :cond_0
    :goto_0
    return v5

    .line 1775
    .restart local v5       #res:Z
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1776
    .local v6, s:Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1777
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, addr_arr:[Ljava/lang/String;
    array-length v2, v0

    .line 1779
    .local v2, count:I
    const/4 v1, 0x1

    .line 1780
    .local v1, b:Z
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 1781
    aget-object v8, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    and-int/2addr v1, v8

    .line 1780
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1783
    :cond_3
    if-eqz v1, :cond_2

    move v5, v7

    goto :goto_0

    .line 1785
    .end local v0           #addr_arr:[Ljava/lang/String;
    .end local v1           #b:Z
    .end local v2           #count:I
    .end local v4           #idx:I
    :cond_4
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1786
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v7

    .line 1787
    goto :goto_0
.end method

.method private static isMatchPduAddr(Ljava/util/ArrayList;Lcom/android/mms/util/DraftResult;)Z
    .locals 9
    .parameter
    .parameter "draftAddr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/mms/util/DraftResult;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, addr_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 1749
    const/4 v4, 0x0

    .line 1751
    .local v4, res:Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1752
    .local v5, s:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_3

    .line 1753
    const/4 v1, 0x1

    .line 1754
    .local v1, b:Z
    iget-object v6, p1, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1755
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    and-int/2addr v1, v6

    goto :goto_0

    .line 1757
    .end local v0           #addr:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    move v4, v7

    .line 1766
    .end local v1           #b:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #res:Z
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    :goto_1
    return v4

    .line 1759
    .restart local v4       #res:Z
    .restart local v5       #s:Ljava/lang/String;
    :cond_3
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 1760
    iget-object v6, p1, Lcom/android/mms/util/DraftResult;->mAddrList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v7

    .line 1761
    goto :goto_1
.end method

.method private lazyCreate()V
    .locals 5

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 1454
    .local v0, listView:Lcom/htc/widget/HtcListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 1456
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->registerForContextMenu(Landroid/view/View;)V

    .line 1457
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1470
    new-instance v1, Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 1473
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->addGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 1477
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1480
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->removeGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 1483
    :cond_1
    return-void
.end method

.method public static preloadFakeCursor()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 2395
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2396
    sget-object v1, Lcom/android/mms/util/QueryURI;->CONVERSATION_V2_COMMON_URI:Landroid/net/Uri;

    .line 2400
    .local v1, BaseUri:Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2414
    :goto_1
    const-string v0, "Jerry"

    const-string v2, "start to preload cursor >>>>>>>"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2416
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2417
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2418
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2420
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/ConversationList;->fakeCursorObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2421
    :try_start_1
    new-instance v0, Lcom/android/mms/util/FakeCursorWrapper;

    invoke-direct {v0, v8}, Lcom/android/mms/util/FakeCursorWrapper;-><init>(Landroid/database/Cursor;)V

    sput-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    .line 2422
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2425
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2426
    const/4 v9, 0x0

    .local v9, count:I
    move v10, v9

    .line 2427
    .end local v9           #count:I
    .local v10, count:I
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .end local v10           #count:I
    .restart local v9       #count:I
    const/16 v0, 0xa

    if-ge v10, v0, :cond_0

    .line 2428
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2429
    .local v6, address:Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2431
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v6, v3, v4}, Lcom/android/mms/util/ContactNameCache;->getCacheContactInfo(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/provider/Telephony$namephoto;

    .line 2432
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2437
    .end local v6           #address:Ljava/lang/String;
    :cond_0
    const-string v0, "Jerry"

    const-string v2, "end to preload cursor <<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2442
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2454
    .end local v9           #count:I
    :cond_1
    :goto_3
    return-void

    .line 2398
    .end local v1           #BaseUri:Landroid/net/Uri;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/android/mms/util/QueryURI;->CONVERSATION_COMMON_URI:Landroid/net/Uri;

    .restart local v1       #BaseUri:Landroid/net/Uri;
    goto :goto_0

    .line 2406
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2407
    sget-object v0, Lcom/android/mms/util/QueryURI;->CONVERSATION_V2_COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2410
    .local v7, builder:Landroid/net/Uri$Builder;
    :goto_4
    const-string v0, "category"

    const-string v2, "0"

    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2411
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2412
    goto/16 :goto_1

    .line 2409
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :cond_4
    sget-object v0, Lcom/android/mms/util/QueryURI;->CONVERSATION_COMMON_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .restart local v7       #builder:Landroid/net/Uri$Builder;
    goto :goto_4

    .line 2422
    .end local v7           #builder:Landroid/net/Uri$Builder;
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2438
    :catch_0
    move-exception v11

    .line 2439
    .local v11, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2442
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v11           #e:Ljava/lang/Exception;
    .restart local v6       #address:Ljava/lang/String;
    .restart local v9       #count:I
    :cond_5
    move v10, v9

    .line 2435
    .end local v9           #count:I
    .restart local v10       #count:I
    goto :goto_2

    .line 2442
    .end local v6           #address:Ljava/lang/String;
    .end local v10           #count:I
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2445
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v1}, Lcom/android/mms/category/CategorySelector;->getCategoryTitle()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposeMsgAtTitle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mTitleShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_1
    return-void
.end method

.method private updateCountText(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1575
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUnreadCountCountTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    if-eqz v1, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->activityComposer:Lcom/android/mms/util/CommonActivityLayout;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v1

    iget-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 1579
    .local v0, bar:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 1581
    if-gtz p1, :cond_1

    .line 1582
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    .line 1597
    .end local v0           #bar:Lcom/htc/widget/HeaderBar;
    :cond_0
    :goto_0
    return-void

    .line 1584
    .restart local v0       #bar:Lcom/htc/widget/HeaderBar;
    :cond_1
    const/16 v1, 0x63

    if-le p1, v1, :cond_2

    .line 1585
    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setBubbleText(Ljava/lang/String;)V

    .line 1588
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setBubbleVisibility(I)V

    goto :goto_0

    .line 1587
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBar;->setBubbleCount(I)V

    goto :goto_1
.end method


# virtual methods
.method addQueryLimitExtra(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 2457
    const-string v0, "query_order"

    const-string v1, "date DESC"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2458
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2459
    const-string v0, "query_limit"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget v1, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2461
    :cond_0
    return-void
.end method

.method protected delteMessage(J)V
    .locals 7
    .parameter "msgId"

    .prologue
    .line 2339
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ConversationList;J)V

    .line 2340
    .local v2, l:Lcom/android/mms/ui/ConversationList$DeleteMessageListener;
    const v3, 0x20c01fc

    .line 2341
    .local v3, titleId:I
    const v0, 0x7f0900ad

    .line 2343
    .local v0, bodyId:I
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2344
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c015f

    invoke-virtual {v4, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c0164

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 2350
    return-void
.end method

.method protected delteThread(JJ)V
    .locals 2
    .parameter "threadId"
    .parameter "htcThreadId"

    .prologue
    .line 1275
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationList;J)V

    .line 1276
    .local v0, l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1277
    return-void
.end method

.method protected extractContextMenuDataFromCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;)V
    .locals 2
    .parameter "threadCursor"
    .parameter "iInfo"

    .prologue
    .line 1167
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->reset()V

    .line 1168
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    .line 1169
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadtype:I

    .line 1170
    iget-wide v0, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->getAddress(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    .line 1171
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->unreadCount:I

    .line 1172
    return-void
.end method

.method protected getListCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method protected getMoveToGeneralBoxIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1024
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const v2, 0x7f0902e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string v1, "isThread"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1026
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1027
    const-string v1, "mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1028
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v1, "projection"

    sget-object v2, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    return-object v0
.end method

.method protected getMoveToSecureBoxIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const v2, 0x7f0902e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    const-string v1, "mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const-string v1, "isThread"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1008
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1009
    const-string v1, "category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    const-string v1, "projection"

    sget-object v2, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    return-object v0
.end method

.method protected getMultipleDeleteIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 972
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 973
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v1}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 985
    const-string v1, "title"

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 989
    :goto_0
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 992
    const-string v1, "projection"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    const-string v1, "htc_category"

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    return-object v0

    .line 976
    :pswitch_0
    const-string v1, "title"

    const v2, 0x7f090288

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 979
    :pswitch_1
    const-string v1, "title"

    const v2, 0x7f090334

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 982
    :pswitch_2
    const-string v1, "title"

    const v2, 0x7f0902d2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 988
    :cond_0
    const-string v1, "title"

    const v2, 0x7f09010c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getThreadsCount()I
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    .line 953
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getThreadsCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getUnreadCount()I
    .locals 1

    .prologue
    .line 2363
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadCount:I

    return v0
.end method

.method protected hasDraft()Z
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->hasDraft()Z

    move-result v0

    return v0
.end method

.method initCategorySelector(Landroid/view/View;)V
    .locals 3
    .parameter "title2"

    .prologue
    .line 298
    const v1, 0x2020058

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 299
    .local v0, categoryButton:Landroid/widget/ImageView;
    new-instance v1, Lcom/android/mms/category/CategorySelector;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/category/CategorySelector;-><init>(Landroid/content/Context;Lcom/android/mms/category/Category;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    .line 302
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v1, v0, p1}, Lcom/android/mms/category/CategorySelector;->setSelectorButtonView(Landroid/view/View;Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->setOnCategoryChangeListener(Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;)V

    .line 305
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    sget-object v2, Lcom/android/mms/category/Category;->ALL:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->enableCategories(Ljava/util/List;)V

    .line 306
    return-void
.end method

.method protected initCommonResources(Landroid/view/View;)V
    .locals 3
    .parameter "title2"

    .prologue
    const/4 v2, 0x0

    .line 1526
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setVisibility(I)V

    .line 1536
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 1538
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    if-nez v1, :cond_0

    .line 1539
    invoke-static {v2}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 1541
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1543
    sget-boolean v1, Lcom/android/mms/ui/ConversationList;->IsFromBackey:Z

    if-eqz v1, :cond_1

    .line 1544
    invoke-static {}, Lcom/android/mms/category/CategorySelectorAdapter;->getCurrentCategory()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 1547
    :cond_1
    new-instance v1, Lcom/android/mms/category/CategorySelector;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/category/CategorySelector;-><init>(Landroid/content/Context;Lcom/android/mms/category/Category;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    .line 1548
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    sget-object v2, Lcom/android/mms/category/Category;->ALL:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->DropDownCategoryChoice(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1549
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/mms/category/CategorySelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/category/CategorySelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->categoryAdapter:Lcom/android/mms/category/CategorySelectorAdapter;

    .line 1551
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->categoryAdapter:Lcom/android/mms/category/CategorySelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1552
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->SetOnItemListener(Lcom/htc/widget/HeaderBarDropDown;)V

    .line 1553
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v2, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1560
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mCategoryChangeListener:Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/category/CategorySelector;->setOnCategoryChangeListener(Lcom/android/mms/category/CategorySelector$OnCategoryChangeListener;)V

    .line 1564
    .end local v0           #items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->initCommonResources(Landroid/view/View;)V

    .line 1566
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1567
    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->setTitleText(I)V

    .line 1571
    :goto_0
    return-void

    .line 1569
    :cond_3
    const v1, 0x7f09010c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->setTitleText(I)V

    goto :goto_0
.end method

.method protected markAllAsRead()V
    .locals 3

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v2, 0x4e2e

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2368
    return-void
.end method

.method protected moveToGeneralFolder(J)V
    .locals 9
    .parameter "threadId"

    .prologue
    const/4 v8, 0x0

    .line 1241
    const/4 v2, 0x0

    .line 1243
    .local v2, moveSelection:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1244
    .local v3, moveUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1245
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "htc_category=1"

    .line 1246
    const-string v6, "htc_category"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-eqz v6, :cond_1

    .line 1249
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1250
    .local v1, baseUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1251
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 1252
    :cond_0
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1257
    .end local v1           #baseUri:Landroid/net/Uri;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v7, 0x4e2c

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1259
    .local v4, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 1260
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 1262
    iput-object v8, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 1263
    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 1264
    iput-object v8, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 1265
    iput-object v8, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 1266
    iput-object v5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 1267
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1268
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1271
    return-void

    .line 1254
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected moveToSecureFolder(J)V
    .locals 9
    .parameter "threadId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1205
    const/4 v2, 0x0

    .line 1207
    .local v2, moveSelection:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1208
    .local v3, moveUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1209
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "htc_category"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    const-string v2, "htc_category=0"

    .line 1212
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-eqz v6, :cond_1

    .line 1213
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1214
    .local v1, baseUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1215
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 1216
    :cond_0
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1221
    .end local v1           #baseUri:Landroid/net/Uri;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v7, 0x4e2f

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1223
    .local v4, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 1224
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 1226
    iput-object v8, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 1227
    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 1228
    iput-object v8, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 1229
    iput-object v8, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 1230
    iput-object v5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 1231
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1232
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    invoke-virtual {v6, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1237
    return-void

    .line 1218
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2321
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 2327
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->gotoCorrectConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ConversationList;->IsFromBackey:Z

    .line 2334
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->closeContextMenu()V

    .line 389
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAllowTextMessagingStatus(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->finish()V

    .line 441
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.close.mmsapp"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v7, i:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 449
    .end local v7           #i:Landroid/content/Intent;
    :cond_0
    const-string v0, "ConversationList"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 453
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->gotoCorrectConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ConversationList;->initMemberFields(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 458
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->IsFromBackey:Z

    if-nez v0, :cond_4

    .line 462
    sget v0, Lcom/android/mms/ui/ConversationList;->search_category:I

    if-eqz v0, :cond_3

    .line 464
    sput v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    .line 465
    sget-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-virtual {v0}, Lcom/android/mms/util/FakeCursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    sget-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 467
    sput-object v3, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    .line 469
    :cond_2
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 471
    :cond_3
    sget v0, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v0}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    .line 489
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/mms/ui/ConversationList$UIHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/ConversationList$UIHandler;-><init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    .line 491
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "msgWorkingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 493
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;-><init>(Landroid/os/Looper;Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    .line 495
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->lazyCreate()V

    .line 497
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->IsFromBackey:Z

    if-eqz v0, :cond_5

    .line 501
    sput-boolean v2, Lcom/android/mms/ui/ConversationList;->IsFromBackey:Z

    .line 502
    invoke-static {}, Lcom/android/mms/category/CategorySelectorAdapter;->getCurrentCategory()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->switchCategory(Lcom/android/mms/category/Category;)V

    .line 504
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate Switch Category to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/category/CategorySelectorAdapter;->getCurrentCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MsgHWkeypad;->isSupportSense20HWkey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 509
    new-instance v0, Lcom/android/mms/ui/MsgHWkeypad;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    const-wide/16 v3, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MsgHWkeypad;-><init>(Landroid/app/Activity;Lcom/android/mms/category/Category;JLcom/htc/widget/HtcListView;Landroid/widget/CursorAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    .line 514
    :cond_6
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 518
    const-string v0, "ConversationList"

    const-string v1, "[ATS][com.android.mms][press_widget][successful]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mOnListScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 528
    const-string v0, "ConversationList"

    const-string v1, "onCreate() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 473
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    sget v0, Lcom/android/mms/ui/ConversationList;->search_category:I

    if-eqz v0, :cond_9

    .line 476
    sput v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    .line 477
    sget-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-virtual {v0}, Lcom/android/mms/util/FakeCursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 478
    sget-object v0, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 479
    sput-object v3, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    .line 481
    :cond_8
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 483
    :cond_9
    sget v0, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v0}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 1182
    const/4 v2, 0x0

    .line 1184
    .local v2, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    instance-of v3, v3, Lcom/android/mms/util/FakeCursorWrapper;

    if-eqz v3, :cond_0

    .line 1192
    sget-object v3, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    iget v4, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/mms/util/FakeCursorWrapper;->isValidPos(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v1

    .line 1186
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "ConversationList"

    const-string v4, "fail on create context menu"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1196
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 2243
    const-string v0, "ConversationList"

    const-string v1, "on create options menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 837
    const-string v1, "ConversationList"

    const-string v2, "onDestroy() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onDestroy()V

    .line 840
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 841
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->unregisterForContextMenu(Landroid/view/View;)V

    .line 842
    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Lcom/htc/widget/HtcListView;

    .end local v0           #v:Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 844
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 847
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    if-eqz v1, :cond_2

    .line 848
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 849
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v2, 0x2716

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 850
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v2, 0x4e2b

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_3

    .line 855
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->close()V

    .line 859
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    if-eqz v1, :cond_4

    .line 860
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->removeMessages(I)V

    .line 861
    iput-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    .line 863
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 864
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 868
    :cond_5
    const-string v1, "ConversationList"

    const-string v2, "onDestroy() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public onDraftChanged()V
    .locals 2

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->post(Ljava/lang/Runnable;)Z

    .line 2381
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 536
    const/16 v6, 0x54

    if-ne p1, v6, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->onSearchRequested()Z

    .line 563
    :cond_0
    :goto_0
    return v5

    .line 540
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MsgHWkeypad;->hWKeyboardShow(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 541
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MsgHWkeypad;->executeKeyCode(I)Z

    move-result v1

    .line 543
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 547
    sparse-switch p1, :sswitch_data_0

    .line 563
    .end local v1           #result:Z
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/ConversationListBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 549
    .restart local v1       #result:Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->executeContextMenuForward()V

    goto :goto_0

    .line 552
    :sswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 553
    .local v2, threadCursor:Landroid/database/Cursor;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 554
    .local v3, threadId:J
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationList;J)V

    .line 555
    .local v0, l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    invoke-direct {p0, v0, v7}, Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 547
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 25
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1038
    const-string v2, "ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick: position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v2, :cond_0

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 1055
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1056
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 1140
    :cond_1
    :goto_0
    return-void

    .line 1066
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v21

    .line 1067
    .local v21, hCnt:I
    sub-int v23, p3, v21

    .line 1068
    .local v23, pos:I
    if-gez v23, :cond_5

    .line 1070
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1071
    :cond_3
    new-instance v22, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MmsListActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1072
    .local v22, intent:Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1080
    .end local v22           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 1081
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_1

    .line 1082
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .restart local v22       #intent:Landroid/content/Intent;
    const-string v2, "http://waprd.telstra.com/redirect?target=greetings-g"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1084
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1090
    .end local v22           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    instance-of v2, v2, Lcom/android/mms/util/FakeCursorWrapper;

    if-eqz v2, :cond_6

    .line 1092
    sget-object v2, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/mms/util/FakeCursorWrapper;->isValidPos(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1096
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/ui/ConversationHeader;

    .line 1101
    .local v20, ch:Lcom/android/mms/ui/ConversationHeader;
    const-string v2, "ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor id >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    if-nez v20, :cond_7

    .line 1104
    const-string v2, "ConversationList"

    const-string v3, "getTag null can\'t open thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1107
    :cond_7
    const-string v2, "ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view id >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-eqz v2, :cond_9

    .line 1109
    const-string v2, "ConversationList"

    const-string v3, "Error handling for cursor id not equal to view id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "recipient_address"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "unread_count"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1112
    .local v24, threadCursor:Landroid/database/Cursor;
    if-eqz v24, :cond_1

    .line 1113
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1114
    const-string v2, "recipient_address"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1115
    .local v7, address:Ljava/lang/String;
    const-string v2, "type"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1116
    .local v9, threadType:I
    const-string v2, "unread_count"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1122
    .local v10, unreadCount:I
    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v5, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/mms/ui/ConversationList;->openThread(JJLjava/lang/String;ZII)V

    .line 1124
    .end local v7           #address:Ljava/lang/String;
    .end local v9           #threadType:I
    .end local v10           #unreadCount:I
    :cond_8
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1133
    .end local v24           #threadCursor:Landroid/database/Cursor;
    :cond_9
    const-wide/16 v12, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v14

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationHeader;->getThreadBroadcastType()I

    move-result v18

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationHeader;->getUnreadCount()I

    move-result v19

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v19}, Lcom/android/mms/ui/ConversationList;->openThread(JJLjava/lang/String;ZII)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 416
    const-string v0, "ConversationList"

    const-string v1, "onNewIntent>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/Category;->getCategory(I)Lcom/android/mms/category/Category;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    invoke-static {}, Lcom/android/mms/category/CategorySelectorAdapter;->getCurrentCategory()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0}, Lcom/android/mms/category/Category;->value()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    .line 423
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->initCommonResources(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->switchCategory(Lcom/android/mms/category/Category;)V

    .line 431
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/android/mms/ui/ConversationList;->initMemberFields(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 706
    const/16 v0, 0x7b

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->setVisible(Z)V

    .line 712
    :cond_0
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onPause()V

    .line 713
    const-string v0, "ConversationList"

    const-string v1, "onPause() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->cancelOperation(I)V

    .line 758
    :cond_1
    const-wide/16 v0, -0x4

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->updateCurrentThreadID(J)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 760
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->updateCurrentThreadID(J)J

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 767
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 769
    sget-object v0, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 770
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->finish()V

    .line 775
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mDeleteProgressDialog:Landroid/app/Dialog;

    .line 781
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v0, :cond_6

    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    invoke-virtual {v0}, Lcom/android/mms/category/CategorySelector;->dismissDialog()V

    .line 784
    :cond_6
    const-string v0, "ConversationList"

    const-string v1, "onPause() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2239
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 574
    const/16 v3, 0x7b

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->setVisible(Z)V

    .line 578
    :cond_0
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onResume()V

    .line 579
    const-string v3, "ConversationList"

    const-string v4, "onResume() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v3, "ConversationList"

    const-string v4, "[HTC_MESSAGES] - ConversationList: onResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->gotoCorrectConversationMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    :goto_0
    return-void

    .line 586
    :cond_1
    sget-object v4, Lcom/android/mms/ui/ConversationList;->fakeCursorObj:Ljava/lang/Object;

    monitor-enter v4

    .line 587
    :try_start_0
    sget-object v3, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-virtual {v3}, Lcom/android/mms/util/FakeCursorWrapper;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 589
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    sget-object v5, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 590
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 592
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 596
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 597
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_msg_preview"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, mSize:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, mIndex:I
    sget v3, Lcom/android/mms/ui/ConversationList;->mOldIndex:I

    if-eq v0, v3, :cond_3

    .line 601
    sput v0, Lcom/android/mms/ui/ConversationList;->mOldIndex:I

    .line 602
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    .end local v0           #mIndex:I
    .end local v1           #mSize:Ljava/lang/String;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const-string v3, "ConversationList"

    const-string v4, "onResume() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 679
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 681
    const-string v0, "base_uri"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 682
    const-string v0, "query_token"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryToken:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    const-string v0, "search_flag"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v0, :cond_1

    .line 689
    const-string v0, "category"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v1}, Lcom/android/mms/category/Category;->value()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 789
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onStop()V

    .line 790
    const-string v1, "ConversationList"

    const-string v2, "onStop() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 796
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 797
    instance-of v1, v0, Lcom/android/mms/util/FakeCursorWrapper;

    if-nez v1, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 800
    new-instance v1, Lcom/android/mms/util/FakeCursorWrapper;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mms/util/FakeCursorWrapper;-><init>(Landroid/database/Cursor;)V

    sput-object v1, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    .line 823
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-nez v1, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 832
    :cond_1
    const-string v1, "ConversationList"

    const-string v2, "onStop() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void

    .line 811
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/mms/util/FakeCursorWrapper;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-virtual {v0}, Lcom/android/mms/util/FakeCursorWrapper;->isFromFirstPosition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 812
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    goto :goto_0
.end method

.method protected openMessage()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    .line 2250
    iget-object v10, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2251
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2252
    .local v6, msgId:J
    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2253
    .local v0, address:Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2254
    .local v2, date:J
    const/4 v10, 0x3

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2255
    .local v8, subject:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_0

    move v5, v9

    .line 2256
    .local v5, isRead:Z
    :goto_0
    const-string v10, "ConversationList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msg id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2258
    invoke-static {p0, v9}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 2268
    :goto_1
    return-void

    .line 2255
    .end local v5           #isRead:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2260
    .restart local v5       #isRead:Z
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.android.mms.ui.action.VIEW_SMS_MESSAGE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2261
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "msg_id"

    invoke-virtual {v4, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2262
    const-string v9, "address"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const-string v9, "is_read"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2264
    const-string v9, "msg_date"

    invoke-virtual {v4, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2265
    const-string v9, "subject"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2266
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setRightButtonImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "composeBtn"

    .prologue
    .line 373
    const v0, 0x7f020010

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    new-instance v0, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void
.end method

.method protected startAsnycQueryCMAS()V
    .locals 6

    .prologue
    const/16 v5, 0x2716

    .line 612
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v2

    iget-boolean v1, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    .line 615
    .local v1, valid:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->isQuerying:Z

    .line 616
    .local v0, isQuerying:Z
    const-string v2, "ConversationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAsnycQueryCMAS: valid> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isQuerying> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 620
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method startAsyncQuery()V
    .locals 6

    .prologue
    .line 916
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initNormalQueryArgs()V

    .line 918
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v4, 0x2713

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 919
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x2713

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 920
    const/16 v3, 0x2713

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 922
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 923
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 925
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 926
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 927
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 928
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 929
    const-string v3, "date2 DESC"

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 932
    :goto_0
    iget-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/ui/ConversationList;->ModifySortCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 933
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 934
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 936
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    if-eqz v3, :cond_0

    .line 937
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    const/16 v4, 0x2713

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->removeMessages(I)V

    .line 938
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 939
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v3, :cond_0

    .line 940
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 947
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 931
    .restart local v0       #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .restart local v2       #msg:Landroid/os/Message;
    :cond_1
    const-string v3, "date DESC"

    iput-object v3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 944
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 945
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method

.method protected startQueryConversation()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 629
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    if-nez v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 630
    :cond_0
    const/16 v0, 0x1f4

    .line 631
    .local v0, delayTime:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 647
    sget-object v1, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/ui/ConversationList;->mFakeCursor:Lcom/android/mms/util/FakeCursorWrapper;

    invoke-virtual {v1}, Lcom/android/mms/util/FakeCursorWrapper;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    goto :goto_0

    .line 651
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->IsSortDifferent(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 654
    const/16 v0, 0x1f4

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->RunQueryList:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method switchCategory(Lcom/android/mms/category/Category;)V
    .locals 4
    .parameter "category"

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 313
    const-string v2, "htc_messages_category"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "category"

    invoke-virtual {p1}, Lcom/android/mms/category/Category;->value()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    .line 322
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 324
    const v2, 0x7f09010c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->setTitleText(I)V

    .line 325
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    sput v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    .line 326
    sget v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v2}, Lcom/android/mms/category/CategorySelectorAdapter;->setCurrentCategory(I)V

    .line 329
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->removeGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 332
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/16 v3, 0x1f4

    iput v3, v2, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    .line 336
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 337
    return-void
.end method

.method protected updateStatusNotification()V
    .locals 1

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 1809
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 1812
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1816
    return-void
.end method
