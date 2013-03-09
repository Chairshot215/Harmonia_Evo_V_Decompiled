.class public Lcom/android/htccontacts/group/GroupDetailView;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;,
        Lcom/android/htccontacts/group/GroupDetailView$GroupContentObserver;,
        Lcom/android/htccontacts/group/GroupDetailView$QueryException;,
        Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;,
        Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;,
        Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;
    }
.end annotation


# static fields
.field public static final CONTENT_EMAIL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_PHONE_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field protected static final DELETE_TOKEN:I = 0x3

.field private static final DIALOG_PROGRESS:I = 0x1

.field private static final MENU_DELETE_GROUP:I = 0x2

.field private static final MENU_EDIT_GROUP:I = 0x1

.field private static final MENU_EDIT_SMART_GROUP:I = 0x3

.field protected static final QUERY_GET_NOADDRESS_TOKEN:I = 0x1

.field protected static final QUERY_TOKEN:I = 0x0

.field protected static final QUERY_TOKEN_MEMBER:I = 0x2

.field protected static final RESULT_EDIT_SMART_GROUP:I = 0x270f

.field private static final TAG:Ljava/lang/String; = "HtcGroupDetailView"

.field protected static final TOKEN_QUERY_PHOTO:I = 0x4


# instance fields
.field private final ACTIVITY_HINT_LAUNCH:I

.field private INDEX_ITEM_SEND_EMAIL:I

.field private INDEX_ITEM_SEND_MESSAGE:I

.field private final MAX_DEPTH:I

.field protected final REQUEST_EDIT_GROUP:I

.field private volatile bIsPause:Z

.field protected mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressList:Ljava/lang/String;

.field private mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

.field mGetGroupPrimaryMailRunnable:Ljava/lang/Runnable;

.field mGetGroupPrimaryNumbersRunnable:Ljava/lang/Runnable;

.field mGroupContentObserver:Landroid/database/ContentObserver;

.field protected mGroupId:J

.field protected mGroupIsReadOnly:I

.field protected mGroupName:Ljava/lang/String;

.field private mGroupPhotoBitmap:Landroid/graphics/Bitmap;

.field protected mGroupSyncId:Ljava/lang/String;

.field private mGroupSystemId:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mIsDirty:Z

.field mIsSmartGroup:Z

.field mIsSyncable:Z

.field private mLaunchKey:Ljava/lang/String;

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mMemberCount:I

.field private mMemberIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mMyActionHandler:Landroid/os/Handler;

.field private mNoAddressMemberIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

.field private mQueryToken:Ljava/lang/Object;

.field mReActionSendGroupMailRunnable:Ljava/lang/Runnable;

.field mReActionSendGroupMessageRunnable:Ljava/lang/Runnable;

.field protected mResolver:Landroid/content/ContentResolver;

.field mRunningProgress:Lcom/htc/app/HtcProgressDialog;

.field myQueryThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data/phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/group/GroupDetailView;->CONTENT_PHONE_URI:Landroid/net/Uri;

    .line 117
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data/emails"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/group/GroupDetailView;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    .line 102
    iput v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->ACTIVITY_HINT_LAUNCH:I

    .line 103
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->REQUEST_EDIT_GROUP:I

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "myQueryThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->myQueryThread:Landroid/os/HandlerThread;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryToken:Ljava/lang/Object;

    .line 120
    iput-boolean v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupContentObserver:Landroid/database/ContentObserver;

    .line 125
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->MAX_DEPTH:I

    .line 126
    iput v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->INDEX_ITEM_SEND_MESSAGE:I

    .line 127
    iput v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->INDEX_ITEM_SEND_EMAIL:I

    .line 128
    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSyncable:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSmartGroup:Z

    .line 132
    iput v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberCount:I

    .line 595
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupDetailView$2;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mReActionSendGroupMessageRunnable:Ljava/lang/Runnable;

    .line 612
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupDetailView$3;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGetGroupPrimaryNumbersRunnable:Ljava/lang/Runnable;

    .line 629
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupDetailView$4;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mReActionSendGroupMailRunnable:Ljava/lang/Runnable;

    .line 648
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupDetailView$5;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGetGroupPrimaryMailRunnable:Ljava/lang/Runnable;

    .line 1282
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/htccontacts/group/GroupDetailView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberCount:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/group/GroupDetailView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/group/GroupDetailView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getParentCacheTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/group/GroupDetailView;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/group/GroupDetailView;->launchHintActivity(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/group/GroupDetailView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->bIsPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->sendMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/group/GroupDetailView;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupDetailView$QueryException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupDetailView;->getGroupMessageAddressList(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->sendMail()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupDetailView$QueryException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getGroupEmailList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/group/GroupDetailView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/htccontacts/group/GroupDetailView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getGroupEmailList()Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupDetailView$QueryException;
        }
    .end annotation

    .prologue
    .line 937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 938
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .local v12, idList:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v7, addressList:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 942
    :cond_0
    const/4 v1, 0x0

    .line 1007
    :goto_0
    return-object v1

    .line 945
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 947
    .local v17, size:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 948
    const/4 v13, 0x0

    .line 949
    .local v13, index:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v16, selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    .line 951
    rem-int/lit16 v1, v13, 0x320

    if-nez v1, :cond_2

    .line 952
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #idList:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .restart local v12       #idList:Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 956
    .local v18, value:Ljava/lang/Integer;
    if-eqz v18, :cond_3

    .line 957
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 958
    .local v11, id:I
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 959
    const/16 v1, 0x2c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 960
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    .end local v11           #id:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 965
    .end local v18           #value:Ljava/lang/Integer;
    :cond_4
    const/4 v15, -0x1

    .line 967
    .local v15, person:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    .line 968
    .local v8, builder:Ljava/lang/StringBuilder;
    move-object v12, v8

    .line 970
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 971
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 973
    :cond_6
    const/4 v1, 0x0

    const-string v2, "is_super_primary = 1 AND  contact_id  IN ( "

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v1, " )  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/group/GroupDetailView;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "contact_id"

    aput-object v5, v3, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 979
    .local v9, cmCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 981
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 983
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 984
    .local v14, mail:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 985
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    const/16 v1, 0x3b

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 988
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 990
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_7

    .line 993
    .end local v14           #mail:Ljava/lang/String;
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 999
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v9           #cmCursor:Landroid/database/Cursor;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #index:I
    .end local v15           #person:I
    .end local v16           #selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 1000
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1002
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_c

    .line 1003
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1007
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getGroupMessageAddressList(Z)Ljava/lang/String;
    .locals 24
    .parameter "isCludeEmail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupDetailView$QueryException;
        }
    .end annotation

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 671
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v1

    const/4 v1, 0x1

    const-string v6, "display_name"

    aput-object v6, v3, v1

    const/4 v1, 0x2

    const-string v6, "contact_id"

    aput-object v6, v3, v1

    const/4 v1, 0x3

    const-string v6, "mimetype"

    aput-object v6, v3, v1

    const/4 v1, 0x4

    const-string v6, "data1"

    aput-object v6, v3, v1

    const/4 v1, 0x5

    const-string v6, "data7"

    aput-object v6, v3, v1

    .line 680
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "( mimetype = ?  OR mimetype = ? ) AND  ( is_super_primary = 1 OR ( mimetype = \'vnd.android.cursor.item/phone_v2\' AND data7 = 1 ))"

    .line 687
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    const-string v1, "vnd.android.cursor.item/email_v2"

    :goto_0
    aput-object v1, v5, v6

    .line 692
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v1, "content://com.android.contacts/group/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 693
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "mimetype DESC "

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 695
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 696
    .local v14, dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 698
    .local v22, personSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v12, :cond_6

    .line 699
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 700
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 701
    .local v16, id:J
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 702
    .local v21, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 703
    .local v10, contactId:J
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 704
    .local v19, mimetype:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 705
    .local v13, data:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 706
    .local v20, msgPrimary:Ljava/lang/String;
    const-string v1, "HtcGroupDetailView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "test ---> "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v23, "  "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 709
    const/16 v18, 0x0

    .line 710
    .local v18, isMsgPrimary:Z
    if-eqz v20, :cond_1

    .line 712
    :try_start_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    const/16 v18, 0x1

    .line 713
    :goto_2
    if-eqz v18, :cond_1

    .line 714
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    long-to-int v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 721
    :cond_1
    :goto_3
    if-nez v18, :cond_0

    .line 722
    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 725
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    long-to-int v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 739
    .end local v10           #contactId:J
    .end local v13           #data:Ljava/lang/String;
    .end local v16           #id:J
    .end local v18           #isMsgPrimary:Z
    .end local v19           #mimetype:Ljava/lang/String;
    .end local v20           #msgPrimary:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_2

    .line 740
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_2
    throw v1

    .line 687
    .end local v2           #uri:Landroid/net/Uri;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v22           #personSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_3
    const-string v1, "vnd.android.cursor.item/phone_v2"

    goto/16 :goto_0

    .line 712
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #contactId:J
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #data:Ljava/lang/String;
    .restart local v14       #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v16       #id:J
    .restart local v18       #isMsgPrimary:Z
    .restart local v19       #mimetype:Ljava/lang/String;
    .restart local v20       #msgPrimary:Ljava/lang/String;
    .restart local v21       #name:Ljava/lang/String;
    .restart local v22       #personSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 729
    .end local v18           #isMsgPrimary:Z
    :cond_5
    :try_start_3
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    long-to-int v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 739
    .end local v10           #contactId:J
    .end local v13           #data:Ljava/lang/String;
    .end local v16           #id:J
    .end local v19           #mimetype:Ljava/lang/String;
    .end local v20           #msgPrimary:Ljava/lang/String;
    .end local v21           #name:Ljava/lang/String;
    :cond_6
    if-eqz v12, :cond_7

    .line 740
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 745
    :cond_7
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 746
    .local v8, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 747
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 748
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 753
    .end local v7           #address:Ljava/lang/String;
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 754
    .local v9, bufferLen:I
    if-lez v9, :cond_a

    .line 755
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 757
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 718
    .end local v8           #buffer:Ljava/lang/StringBuffer;
    .end local v9           #bufferLen:I
    .end local v15           #i$:Ljava/util/Iterator;
    .restart local v10       #contactId:J
    .restart local v13       #data:Ljava/lang/String;
    .restart local v16       #id:J
    .restart local v18       #isMsgPrimary:Z
    .restart local v19       #mimetype:Ljava/lang/String;
    .restart local v20       #msgPrimary:Ljava/lang/String;
    .restart local v21       #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method private getGroupMessageListWithoutMsgPrimary()Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupDetailView$QueryException;
        }
    .end annotation

    .prologue
    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 762
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .local v15, idList:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .local v9, addressList:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 766
    :cond_0
    const/4 v2, 0x0

    .line 857
    :goto_0
    return-object v2

    .line 769
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 771
    .local v22, size:I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 772
    .local v12, dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 774
    .local v20, personSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 775
    const/16 v16, 0x0

    .line 776
    .local v16, index:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v21, selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 778
    move/from16 v0, v16

    rem-int/lit16 v2, v0, 0x320

    if-nez v2, :cond_2

    .line 779
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15           #idList:Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .restart local v15       #idList:Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 783
    .local v23, value:Ljava/lang/Integer;
    if-eqz v23, :cond_3

    .line 784
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 785
    .local v14, id:I
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 786
    const/16 v2, 0x2c

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    .end local v14           #id:I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 792
    .end local v23           #value:Ljava/lang/Integer;
    :cond_4
    const-wide/16 v18, -0x1

    .line 796
    .local v18, person:J
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    .line 797
    .local v10, builder:Ljava/lang/StringBuilder;
    move-object v15, v10

    .line 799
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 800
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 802
    :cond_6
    const/4 v2, 0x0

    const-string v3, "is_super_primary = 1 AND  contact_id  IN ( "

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v2, " )  "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string v2, " AND "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string v2, "( mimetype = \'vnd.android.cursor.item/phone_v2\' OR mimetype = \'vnd.android.cursor.item/email_v2\' ) "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "mimetype DESC "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 814
    .local v11, cmCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 816
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 818
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 819
    .local v17, mail:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 821
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 822
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    move-wide/from16 v0, v18

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    move-wide/from16 v0, v18

    long-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 831
    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 834
    .end local v17           #mail:Ljava/lang/String;
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 841
    .end local v10           #builder:Ljava/lang/StringBuilder;
    .end local v11           #cmCursor:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #index:I
    .end local v18           #person:J
    .end local v21           #selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    :cond_b
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 842
    .local v8, address:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 843
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 849
    .end local v8           #address:Ljava/lang/String;
    :cond_d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_e

    .line 850
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 852
    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_f

    .line 853
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 857
    :cond_f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getGroupPrimaryNumberList()Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupDetailView$QueryException;
        }
    .end annotation

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 863
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v12, idList:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .local v7, addressList:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 867
    :cond_0
    const/4 v1, 0x0

    .line 932
    :goto_0
    return-object v1

    .line 870
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 872
    .local v17, size:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 873
    const/4 v13, 0x0

    .line 874
    .local v13, index:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v16, selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    .line 876
    rem-int/lit16 v1, v13, 0x320

    if-nez v1, :cond_2

    .line 877
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #idList:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .restart local v12       #idList:Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 881
    .local v18, value:Ljava/lang/Integer;
    if-eqz v18, :cond_3

    .line 882
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 883
    .local v11, id:I
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 884
    const/16 v1, 0x2c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    .end local v11           #id:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 890
    .end local v18           #value:Ljava/lang/Integer;
    :cond_4
    const/4 v15, -0x1

    .line 892
    .local v15, person:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    .line 893
    .local v8, builder:Ljava/lang/StringBuilder;
    move-object v12, v8

    .line 895
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 896
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 898
    :cond_6
    const/4 v1, 0x0

    const-string v2, "is_super_primary = 1 AND  contact_id  IN ( "

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const-string v1, " )  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/group/GroupDetailView;->CONTENT_PHONE_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "contact_id"

    aput-object v5, v3, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 904
    .local v9, cmCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 906
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 908
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 909
    .local v14, mail:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 910
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    const/16 v1, 0x3b

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 915
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_7

    .line 918
    .end local v14           #mail:Ljava/lang/String;
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 924
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v9           #cmCursor:Landroid/database/Cursor;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #index:I
    .end local v15           #person:I
    .end local v16           #selectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 925
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 927
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_c

    .line 928
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 932
    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getParentCacheTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 308
    .local v0, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    return-object v1
.end method

.method private isHTCSystemGroup()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 352
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    iget v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    invoke-static {v1, v2}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchHintActivity(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/htccontacts/group/SendGroupMessageHint;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 553
    const-string v1, "caller"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v1, "namelist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 555
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 556
    return-void
.end method

.method private launchSmartGroup()V
    .locals 2

    .prologue
    .line 1223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1224
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1225
    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1226
    return-void
.end method

.method private readParentCache()V
    .locals 7

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 1295
    .local v2, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    invoke-virtual {v2}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->getCache()Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    move-result-object v0

    .line 1296
    .local v0, cache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/GroupDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 1298
    .local v1, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-eqz v0, :cond_2

    .line 1299
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    iget v5, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    iget v6, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->count:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/htccontacts/group/GroupDetailView;->initTitle(Ljava/lang/String;II)V

    .line 1300
    iget v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->count:I

    iput v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberCount:I

    .line 1301
    iget-boolean v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->hasPhoto:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1302
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v3

    .line 1303
    .local v3, resId:I
    invoke-virtual {v1, v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    .line 1311
    .end local v3           #resId:I
    :goto_0
    return-void

    .line 1305
    :cond_1
    iget-object v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1309
    :cond_2
    const v4, 0x2080251

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    goto :goto_0
.end method

.method private registerFrequencyObserver()V
    .locals 4

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1259
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1260
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 1261
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 1262
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    if-nez v3, :cond_0

    .line 1263
    new-instance v3, Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    .line 1264
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->registerObserver(Ljava/lang/Object;)V

    .line 1267
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method

.method private sendMail()V
    .locals 7

    .prologue
    .line 577
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 592
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    .line 581
    .local v2, mailList:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 585
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 586
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const v3, 0x7f0a0111

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 4

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 574
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    .line 563
    .local v1, numberList:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 566
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupDetailView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 572
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const v2, 0x7f0a0110

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private unregisterFrequencyObserver()V
    .locals 4

    .prologue
    .line 1270
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    if-eqz v3, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1272
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1273
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 1274
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 1276
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 1277
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupDetailView$FrequencyConfigObserver;

    .line 1280
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doDeleteGroup(JLjava/lang/String;)V
    .locals 3
    .parameter "groupId"
    .parameter "groupName"

    .prologue
    .line 470
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a019c

    new-instance v2, Lcom/android/htccontacts/group/GroupDetailView$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupDetailView$1;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a019d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 511
    return-void
.end method

.method protected doOpenGroup()V
    .locals 4

    .prologue
    .line 463
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 465
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 467
    return-void
.end method

.method protected doOpenGroup(JLjava/lang/String;I)V
    .locals 4
    .parameter "groupId"
    .parameter "groupName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 453
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 455
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "GROUP_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 457
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v1, "GROUP_IS_READ_ONLY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 460
    return-void
.end method

.method public initTitle(Ljava/lang/String;II)V
    .locals 3
    .parameter "title"
    .parameter "groupIsReadOnly"
    .parameter "count"

    .prologue
    .line 1314
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 1315
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1317
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderPrimaryText(Ljava/lang/String;)V

    .line 1319
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 414
    const/16 v2, 0x64

    if-ne v2, p1, :cond_1

    if-ne p2, v3, :cond_1

    .line 416
    if-eqz p3, :cond_0

    .line 417
    const-string v2, "title"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    iput-boolean v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 421
    .local v0, activity:Landroid/app/Activity;
    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    .line 422
    instance-of v2, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    if-eqz v2, :cond_0

    .line 424
    check-cast v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .end local v0           #activity:Landroid/app/Activity;
    iput-object v1, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    .line 449
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-ne p1, v4, :cond_4

    .line 430
    if-ne p2, v3, :cond_2

    .line 431
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->sendMessage()V

    .line 441
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    const-string v3, "mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->sendMail()V

    goto :goto_1

    .line 443
    :cond_4
    const/16 v2, 0x270f

    if-ne p1, v2, :cond_0

    .line 444
    if-ne p2, v3, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupDetailView;->setContentView(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->setTitleBar()V

    .line 140
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mListView:Lcom/htc/widget/HtcListView;

    .line 142
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->resolveIntent()V

    .line 143
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f03002c

    invoke-direct {v0, p0, v1, v2}, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionAdapter;-><init>(Lcom/android/htccontacts/group/GroupDetailView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 144
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->setupActionList()V

    .line 145
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupDetailView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    .line 149
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    .line 150
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->myQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->myQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMyActionHandler:Landroid/os/Handler;

    .line 154
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    iget v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/group/GroupDetailView;->initTitle(Ljava/lang/String;II)V

    .line 155
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->readParentCache()V

    .line 157
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailView$GroupContentObserver;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupDetailView$GroupContentObserver;-><init>(Lcom/android/htccontacts/group/GroupDetailView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupContentObserver:Landroid/database/ContentObserver;

    .line 158
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 257
    packed-switch p1, :pswitch_data_0

    .line 267
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 261
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x2080324

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    const v0, 0x7f0a01a6

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 358
    const/4 v0, 0x2

    const v1, 0x7f0a01a8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 361
    const/4 v0, 0x3

    const v1, 0x7f0a0322

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->myQueryThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->myQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->myQueryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 241
    .local v0, looper:Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 244
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupContentObserver:Landroid/database/ContentObserver;

    .line 250
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->unregisterFrequencyObserver()V

    .line 251
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 252
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 531
    invoke-static {p0}, Lcom/android/htccontacts/util/MessageUtil;->getMaxSMSRecipientNumber(Landroid/content/Context;)I

    move-result v0

    .line 532
    .local v0, mMaxSMS:I
    iget v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->INDEX_ITEM_SEND_MESSAGE:I

    if-ne p3, v2, :cond_2

    .line 533
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMyActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryToken:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    iget v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberCount:I

    if-le v2, v0, :cond_1

    .line 535
    const v2, 0x7f0a014d

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/group/GroupDetailView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, text:Ljava/lang/String;
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 548
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/GroupDetailView;->showDialog(I)V

    .line 539
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMyActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGetGroupPrimaryNumbersRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryToken:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 543
    :cond_2
    iget v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->INDEX_ITEM_SEND_EMAIL:I

    if-ne p3, v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMyActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryToken:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/GroupDetailView;->showDialog(I)V

    .line 546
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMyActionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGetGroupPrimaryMailRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryToken:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 407
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 390
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupDetailView]Edit group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-wide v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupId:J

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    iget v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/htccontacts/group/GroupDetailView;->doOpenGroup(JLjava/lang/String;I)V

    goto :goto_0

    .line 395
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupDetailView]Delete group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-wide v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupId:J

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/htccontacts/group/GroupDetailView;->doDeleteGroup(JLjava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_2
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupDetailView]Edit smart group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->launchSmartGroup()V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->bIsPause:Z

    .line 233
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 234
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 368
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 370
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupSystemId:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->isHTCSystemGroup()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSyncable:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_1

    .line 376
    iget-boolean v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSyncable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 380
    .local v0, editsmartItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 381
    iget-boolean v2, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSmartGroup:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    :cond_2
    return v3

    .line 371
    .end local v0           #editsmartItem:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v1, "launchkey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    .line 172
    const-string v1, "addresslist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "noaddressMemberlist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_0
    const-string v1, "memberIdList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 205
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->bIsPause:Z

    .line 207
    iget-boolean v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z

    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getParentCacheTitle()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->startQuery()V

    .line 213
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->startQueryGroupPhoto()V

    .line 214
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->startQueryMember()V

    .line 216
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    const-string v2, "Frequent Contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSmartGroup:Z

    .line 224
    :goto_0
    iget-boolean v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSmartGroup:Z

    if-eqz v1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailView;->registerFrequencyObserver()V

    .line 228
    .end local v0           #title:Ljava/lang/String;
    :cond_1
    return-void

    .line 221
    .restart local v0       #title:Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupDetailView;->mIsSmartGroup:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "launchkey"

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mLaunchKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "addresslist"

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAddressList:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "noaddressMemberlist"

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mNoAddressMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    const-string v0, "memberIdList"

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mMemberIdList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    :cond_0
    return-void
.end method

.method protected removeGroups(Ljava/lang/String;)V
    .locals 7
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 516
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupDetailView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 517
    .local v6, message:Ljava/lang/CharSequence;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v2, v6, v0, v1}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    .line 519
    const-string v0, "title"

    invoke-static {v0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method protected resolveIntent()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GROUP_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupId:J

    .line 300
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    .line 301
    const-string v1, "group_is_read_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupIsReadOnly:I

    .line 304
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 163
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 164
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 165
    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderSecondaryLeftText(I)V

    .line 166
    return-void
.end method

.method protected setupActionList()V
    .locals 5

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, index:I
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportComposeMessage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;

    const v3, 0x7f020078

    const v4, 0x7f0a01a3

    invoke-direct {v2, p0, v3, v4}, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;-><init>(Lcom/android/htccontacts/group/GroupDetailView;II)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 281
    iput v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->INDEX_ITEM_SEND_MESSAGE:I

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportSendEmail(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupDetailView;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;

    const v3, 0x7f020075

    const v4, 0x7f0a01a4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/htccontacts/group/GroupDetailView$GroupDetailActionItem;-><init>(Lcom/android/htccontacts/group/GroupDetailView;II)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 292
    iput v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->INDEX_ITEM_SEND_EMAIL:I

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 295
    :cond_1
    return-void
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->cancelOperation(I)V

    .line 313
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 314
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 316
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method protected startQueryGroupPhoto()V
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->cancelOperation(I)V

    .line 327
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 328
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    iget-object v6, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 0 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo"

    aput-object v7, v4, v6

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startQueryMember()V
    .locals 9

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->cancelOperation(I)V

    .line 342
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "group_with_favorite"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 344
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 347
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method
