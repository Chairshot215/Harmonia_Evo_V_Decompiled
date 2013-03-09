.class public Lcom/android/htccontacts/ContactDetailMessageActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ContactDetailMessageActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/TabObserver;
.implements Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;,
        Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;,
        Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;,
        Lcom/android/htccontacts/ContactDetailMessageActivity$MessageListItemCache;
    }
.end annotation


# static fields
.field public static final ALL_MSG_PROJECTION:[Ljava/lang/String; = null

.field public static final ALL_MSG_PROJECTION_VVM:[Ljava/lang/String; = null

.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final DIALOG_PICK_PHONE:I = 0x1388

.field private static final MAX_WHERE_OR_DEPTH:I = 0xf0

.field private static final MENU_DELETE:I = 0x4

.field private static final MENU_EDIT:I = 0x3

.field private static final MENU_SAVE_TO_CONTACTS:I = 0x1

.field private static final MENU_SEND_MESSAGE:I = 0x2

.field private static final MESSAGES_CONTENT_URI:Landroid/net/Uri; = null

.field protected static final QUERY_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactDetailMessageActivity"


# instance fields
.field private mAdapter:Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;

.field private mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field public mIsDirty:Z

.field private mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

.field private mQueryHandler:Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;

.field protected mUri:Landroid/net/Uri;

.field private mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const-string v0, "content://mms-sms/contact/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    .line 115
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "htcthread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vvm_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ptime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_urgent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vvm_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION_VVM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursorLock:Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mIsDirty:Z

    .line 154
    new-instance v0, Lcom/android/htccontacts/ContactDetailMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailMessageActivity$1;-><init>(Lcom/android/htccontacts/ContactDetailMessageActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mHandler:Landroid/os/Handler;

    .line 981
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ContactDetailMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/HtcContactInfoBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailMessageActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->canCompose(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactDetailMessageActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailMessageActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/htccontacts/ContactDetailMessageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ContactDetailMessageActivity;)Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;

    return-object v0
.end method

.method private canCompose(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 961
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 965
    :cond_1
    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 6

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoBase;->isSimType()Z

    move-result v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private indexOfProection([Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "proection"
    .parameter "data"

    .prologue
    .line 919
    const/4 v4, -0x1

    .line 920
    .local v4, result:I
    const/4 v2, 0x0

    .line 921
    .local v2, index:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 922
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 923
    move v4, v2

    .line 925
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 921
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v5           #s:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private prepareQueryParameters()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;

    .line 340
    new-instance v0, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;-><init>(Lcom/android/htccontacts/ContactDetailMessageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;

    .line 341
    new-instance v0, Lcom/htc/widget/InsertNewListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mAdapter:Lcom/android/htccontacts/ContactDetailMessageActivity$MessagesAdapter;

    invoke-direct {v0, v1}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 343
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    return-void
.end method

.method private startAsyncQuery()V
    .locals 30

    .prologue
    .line 348
    const-string v10, "PHONE_NUMBERS_EQUAL"

    .line 349
    .local v10, PHONE_NUMBERS_EQUAL:Ljava/lang/String;
    const/4 v13, 0x0

    .line 350
    .local v13, hasPhone:Z
    const/4 v12, 0x0

    .line 351
    .local v12, hasMail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 352
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 354
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 355
    .local v23, numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 356
    .local v24, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 360
    .local v28, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v28

    if-ge v14, v0, :cond_1

    .line 361
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v0, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 362
    .local v22, number:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    new-instance v2, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 366
    .end local v22           #number:Ljava/lang/String;
    :cond_1
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 367
    .local v20, mailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 368
    .local v21, mails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 371
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v28

    if-ge v14, v0, :cond_3

    .line 372
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v0, v2, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 373
    .local v17, mail:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 374
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 379
    .end local v17           #mail:Ljava/lang/String;
    :cond_3
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v26, phoneSelection:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 381
    .local v11, depth:I
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 382
    const/4 v13, 0x1

    .line 383
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 384
    .local v15, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 385
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;

    .line 386
    .local v25, phone:Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;
    const-string v2, "PHONE_NUMBERS_EQUAL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v2, "( address, "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v2, "\'"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual/range {v25 .. v25}, Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v2, "\'"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v2, "  ) "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    add-int/lit8 v11, v11, 0x1

    .line 394
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xf0

    if-ge v11, v2, :cond_4

    .line 395
    const-string v2, "  OR  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 461
    .end local v11           #depth:I
    .end local v14           #i:I
    .end local v15           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    .end local v20           #mailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #mails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .end local v23           #numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    .end local v24           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .end local v25           #phone:Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;
    .end local v26           #phoneSelection:Ljava/lang/StringBuffer;
    .end local v28           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 398
    .restart local v11       #depth:I
    .restart local v14       #i:I
    .restart local v15       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    .restart local v20       #mailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #mails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .restart local v23       #numberSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    .restart local v24       #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .restart local v26       #phoneSelection:Ljava/lang/StringBuffer;
    .restart local v28       #size:I
    :cond_5
    const/4 v2, 0x0

    :try_start_1
    const-string v3, " ( "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v2, "  )  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    .end local v15           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;>;"
    :cond_6
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 406
    .local v19, mailSelection:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 407
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 408
    const/4 v12, 0x1

    .line 409
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 410
    .local v16, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 411
    const-string v2, "address IN ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 414
    .local v18, mailAddr:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const/16 v2, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 417
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_8

    .line 418
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 420
    :cond_8
    const-string v2, ")  AND msg_type=0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const/4 v2, 0x0

    const-string v3, "("

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string v2, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    .end local v16           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #mailAddr:Ljava/lang/String;
    :cond_9
    if-nez v13, :cond_a

    if-nez v12, :cond_a

    .line 428
    monitor-exit v29

    .line 462
    :goto_3
    return-void

    .line 430
    :cond_a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v27, selection:Ljava/lang/StringBuilder;
    if-eqz v13, :cond_b

    .line 432
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 433
    if-eqz v12, :cond_b

    .line 434
    const-string v2, " OR "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_b
    if-eqz v12, :cond_c

    .line 438
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 440
    :cond_c
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 441
    const-string v2, " (sms_type=1 OR mms_type=130 OR mms_type=132 "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :goto_4
    const/4 v2, 0x1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVVMFlag:Z

    if-ne v2, v3, :cond_e

    .line 448
    const-string v2, " OR transport_type=\'vvm\')"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :goto_5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, selectionStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVVMFlag:Z

    if-ne v5, v6, :cond_f

    const-string v5, "content://allmessages/allmessages"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_6
    const/4 v6, 0x1

    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVVMFlag:Z

    if-ne v6, v8, :cond_10

    sget-object v6, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION_VVM:[Ljava/lang/String;

    :goto_7
    const/4 v8, 0x0

    const-string v9, " date DESC"

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/ContactDetailMessageActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    monitor-exit v29

    goto :goto_3

    .line 443
    .end local v7           #selectionStr:Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    const-string v3, "("

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v2, ") AND (sms_type=1 OR mms_type=130 OR mms_type=132 "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 451
    :cond_e
    const-string v2, ")"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 457
    .restart local v7       #selectionStr:Ljava/lang/String;
    :cond_f
    const-string v5, "content://mms-sms/allmessages"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_6

    :cond_10
    sget-object v6, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method


# virtual methods
.method public afterDelete(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 975
    return-void
.end method

.method public beforeDelete()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 932
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-wide v0, v3, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 933
    .local v0, contactId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/contacts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 934
    .local v2, contactUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v3
.end method

.method protected getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoBase;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 317
    :goto_0
    return-void

    .line 302
    :cond_0
    const/16 v3, 0x2f1

    if-ne v3, p1, :cond_2

    .line 304
    const-string v3, "pure_flickr"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 306
    .local v0, bPureFlickr:Z
    const-string v3, "rollback_contact"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 308
    .local v1, bShouldRollBack:Z
    if-eq v5, v0, :cond_1

    if-ne v5, v1, :cond_2

    .line 309
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 310
    .local v2, uriFixed:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 312
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v3, v2}, Lcom/android/htccontacts/HtcContactInfoBase;->forceContactChange(Landroid/net/Uri;)V

    .line 316
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v2           #uriFixed:Landroid/net/Uri;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 908
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    .local v1, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .end local v1           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :goto_0
    return v2

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ContactDetailMessageActivity"

    const-string v3, "bad menuInfoIn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->setContentView(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->setTitleBar()V

    .line 206
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 207
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    .line 210
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v1, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mUri:Landroid/net/Uri;

    .line 213
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/htccontacts/HtcContactInfoBase;->registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    :cond_0
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->prepareQueryParameters()V

    .line 221
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 896
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-void

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "ContactDetailMessageActivity"

    const-string v4, "bad menuInfoIn"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 1003
    const/4 v1, 0x0

    .line 1004
    .local v1, d:Landroid/app/Dialog;
    const/16 v6, 0x1388

    if-ne v6, p1, :cond_1

    .line 1005
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1006
    .local v5, size:I
    new-array v4, v5, [Ljava/lang/String;

    .line 1007
    .local v4, labelArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v2, v6, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    .line 1008
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1009
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    aput-object v6, v4, v3

    .line 1008
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1011
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v6, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;

    invoke-direct {v6, p0, v4}, Lcom/android/htccontacts/ContactDetailMessageActivity$AddressClickListener;-><init>(Lcom/android/htccontacts/ContactDetailMessageActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1013
    const v6, 0x7f0a0127

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1015
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1017
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    .end local v3           #i:I
    .end local v4           #labelArray:[Ljava/lang/String;
    .end local v5           #size:I
    :cond_1
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 790
    const v0, 0x7f0a00e1

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080331

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 792
    const v0, 0x7f0a0141

    invoke-interface {p1, v2, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 793
    const v0, 0x7f0a013c

    invoke-interface {p1, v2, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 796
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mWrapperAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/InsertNewListAdapter;->close()V

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcContactInfoBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->beforeDelete()V

    .line 273
    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    .line 274
    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 277
    :cond_2
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const v4, 0x20200fd

    .line 281
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 282
    .local v2, obj:Ljava/lang/Object;
    instance-of v3, v2, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 283
    check-cast v1, Landroid/database/Cursor;

    .line 284
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->viewMessage(Landroid/database/Cursor;)V

    .line 295
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 852
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 888
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 854
    :pswitch_0
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[ContactDetailMessageActivity]Save to contacts"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/util/contacts/ContactsUtility;->getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 856
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 864
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[ContactDetailMessageActivity]Send message"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/htccontacts/ContactDetailMessageActivity;->canCompose(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 867
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 869
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 874
    .end local v0           #actionIntent:Landroid/content/Intent;
    .end local v3           #number:Ljava/lang/String;
    :pswitch_2
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[ContactDetailMessageActivity]Edit contact"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v2

    .line 876
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 881
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v5, "ANALYTIC_HtcContacts"

    const-string v6, "[ContactDetailMessageActivity]Delete contact"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 883
    .local v1, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1022
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 802
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 803
    .local v3, item:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 806
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 808
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v6, :cond_0

    .line 810
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 812
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 814
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    iget-object v6, v6, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 816
    .local v1, contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v6, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfoBase;->getNumberType()I

    move-result v6

    invoke-static {v6}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 819
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 829
    .end local v1           #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v2           #i:I
    :cond_0
    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 830
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, number:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ContactDetailMessageActivity;->canCompose(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 832
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 837
    :goto_2
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfoBase;->isAllSocialNetworkAccountTyupe()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 838
    .local v0, bEditable:Z
    :goto_3
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 839
    if-eqz v3, :cond_1

    .line 840
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 842
    :cond_1
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 843
    if-eqz v3, :cond_2

    .line 844
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 847
    :cond_2
    return v5

    .line 812
    .end local v0           #bEditable:Z
    .end local v4           #number:Ljava/lang/String;
    .restart local v1       #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .restart local v2       #i:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 826
    .end local v1           #contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v2           #i:I
    :cond_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 834
    .restart local v4       #number:Ljava/lang/String;
    :cond_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    move v0, v5

    .line 837
    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 233
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mIsDirty:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startAsyncQuery()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mIsDirty:Z

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    const v1, 0x7f0a0121

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMessageActivity;->mContactInfoBase:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 245
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 254
    return-void
.end method

.method public onTabControlPressed(ILjava/lang/String;)V
    .locals 0
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 951
    return-void
.end method

.method public onTabControlReleased(ILjava/lang/String;)V
    .locals 0
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 954
    return-void
.end method

.method public onTabSwitched(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fromTab"
    .parameter "toTab"
    .parameter "fromTabTag"
    .parameter "toTabTag"

    .prologue
    .line 957
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 194
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 195
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 197
    return-void
.end method

.method public viewMessage(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 320
    const/4 v6, 0x1

    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVVMFlag:Z

    if-ne v6, v7, :cond_0

    .line 321
    sget-object v6, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION_VVM:[Ljava/lang/String;

    const-string v7, "transport_type"

    invoke-direct {p0, v6, v7}, Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, transportType:Ljava/lang/String;
    const-string v6, "vvm"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    sget-object v6, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION_VVM:[Ljava/lang/String;

    const-string v7, "vvm_id"

    invoke-direct {p0, v6, v7}, Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, vvmId:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.VoiceMailPlayActivity"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "extra_id"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    .end local v4           #transportType:Ljava/lang/String;
    .end local v5           #vvmId:Ljava/lang/String;
    :goto_0
    return-void

    .line 331
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    sget-object v6, Lcom/android/htccontacts/ContactDetailMessageActivity;->ALL_MSG_PROJECTION:[Ljava/lang/String;

    const-string v7, "thread_id"

    invoke-direct {p0, v6, v7}, Lcom/android/htccontacts/ContactDetailMessageActivity;->indexOfProection([Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 332
    .local v1, threadId:J
    sget-object v6, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 333
    .local v3, threadUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
