.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/IMECursorAdapter;
.source "RecipientsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;,
        Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;,
        Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    }
.end annotation


# static fields
.field public static final CL_CONTACTID_IDX:I = 0x6

.field public static final CL_DATA_IDX:I = 0x5

.field public static final CL_DISPLAYNAME_IDX:I = 0x0

.field public static final CL_ID_IDX:I = 0x1

.field public static final CL_LAVEL_IDX:I = 0x4

.field public static final CL_NUMBER_IDX:I = 0x2

.field public static final CL_TYPE_IDX:I = 0x3

.field public static final DATA_INDEX:I = 0x1

.field private static final EMAIL_COLUMN_COUNT:I = 0x7

.field public static final KIND_INDEX:I = 0x5

.field public static final LABEL_INDEX:I = 0x4

.field private static final LOCAL_LOGV:Z = true

.field private static final MSG_QUERY_AGAIN:I = 0x1

.field private static final MSG_QUERY_GROUP_COUNT:I = 0x2

.field public static final NAME_INDEX:I = 0x0

.field public static final NUMBER_INDEX:I = 0x2

.field public static final PERSON_ID_INDEX:I = 0x6

.field private static final PROJECTION_MMS_LOG:[Ljava/lang/String; = null

.field private static final PROJECTION_PHONE:[Ljava/lang/String; = null

.field private static final SORT_ORDER:Ljava/lang/String; = "display_name"

.field private static final TAG:Ljava/lang/String; = "RecipientsAdapter"

.field public static final TYPE_INDEX:I = 0x3

.field private static mAllCatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallCatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;",
            ">;"
        }
    .end annotation
.end field

.field private static mContactCatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentIsPhoneConstraint:Z

.field private static mGroupCatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;",
            ">;"
        }
    .end annotation
.end field

.field private static mMsgCatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;",
            ">;"
        }
    .end annotation
.end field

.field private static mPhonePadCatch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCallHistoryConstraint:Z

.field private final mContactsQueryLimit:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mCorrectionQueryLimit:I

.field private mMessageHistoryConstraint:Z

.field private mPhoneConstraint:Z

.field private mPhonecursorcount:I

.field private mResultHandler:Landroid/os/Handler;

.field private mSecondQueryHandler:Landroid/os/Handler;

.field private mTempPhoneNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_MMS_LOG:[Ljava/lang/String;

    .line 203
    sput-boolean v3, Lcom/android/mms/ui/RecipientsAdapter;->mCurrentIsPhoneConstraint:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-direct {p0, p1, v2, v1}, Landroid/widget/IMECursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 197
    iput-object v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    .line 200
    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCallHistoryConstraint:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mMessageHistoryConstraint:Z

    .line 210
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContactsQueryLimit:I

    .line 212
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCorrectionQueryLimit:I

    .line 218
    iput-object v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    .line 1903
    new-instance v1, Lcom/android/mms/ui/RecipientsAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientsAdapter$1;-><init>(Lcom/android/mms/ui/RecipientsAdapter;)V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mResultHandler:Landroid/os/Handler;

    .line 253
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 257
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 262
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecipientAsyncQueryThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 265
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 266
    new-instance v1, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;-><init>(Lcom/android/mms/ui/RecipientsAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    .line 269
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    return-void
.end method

.method private ChangeNewCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1105
    if-nez p1, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-object v4

    .line 1109
    :cond_1
    sget-object v5, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v3, wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_1
    sget-object v4, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1114
    sget-object v4, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget v1, v4, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_pos:I

    .line 1115
    .local v1, originalpos:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    .local v2, result:Ljava/util/ArrayList;
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1129
    .end local v1           #originalpos:I
    .end local v2           #result:Ljava/util/ArrayList;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1130
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1131
    const/4 p1, 0x0

    .line 1134
    :cond_3
    new-instance v4, Lcom/android/mms/ui/ArrayListCursor;

    sget-object v5, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/android/mms/ui/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientsAdapter;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->isValidConstraint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RecipientsAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->buildCatch(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/RecipientsAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/RecipientsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/RecipientsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/RecipientsAdapter;->removeAllMessageInQueue()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/RecipientsAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private buildCalllogCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 711
    if-nez p1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-object v9

    .line 723
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_0

    .line 724
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v8, wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 729
    :cond_2
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, displayname:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 731
    .local v3, id:I
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 732
    .local v5, number:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 733
    .local v7, type:I
    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 734
    .local v4, lavel:I
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, data:Ljava/lang/String;
    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 737
    .local v0, contactid:I
    if-nez v2, :cond_3

    .line 738
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 740
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v6, result:Ljava/util/ArrayList;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 752
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 753
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 754
    const/4 p1, 0x0

    .line 757
    :cond_4
    new-instance v9, Lcom/android/mms/ui/ArrayListCursor;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/android/mms/ui/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized buildCatch(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "cursor"

    .prologue
    .line 1448
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1449
    const/4 v10, 0x0

    .line 1637
    :goto_0
    monitor-exit p0

    return-object v10

    .line 1452
    :cond_0
    :try_start_0
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1453
    :cond_1
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1454
    :cond_2
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1455
    :cond_3
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1456
    :cond_4
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1457
    :cond_5
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1460
    :cond_6
    if-eqz p1, :cond_24

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_24

    .line 1461
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1468
    :cond_7
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1469
    .local v5, name:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1470
    .local v6, number:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1471
    .local v9, type:I
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 1472
    .local v7, pos:I
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, kind:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    iget v11, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    if-ge v10, v11, :cond_a

    .line 1479
    new-instance v8, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    invoke-direct {v8, p0, v7, v5, v6}, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;-><init>(Lcom/android/mms/ui/RecipientsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1481
    .local v8, tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    if-nez v10, :cond_8

    .line 1482
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    .line 1483
    :cond_8
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1528
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    if-nez v10, :cond_9

    .line 1529
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    .line 1534
    :cond_9
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_12

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_12

    .line 1535
    const/4 v3, 0x0

    .local v3, jj:I
    :goto_2
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_12

    .line 1536
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1487
    .end local v3           #jj:I
    .end local v8           #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    :cond_a
    const/16 v10, 0x16

    if-ne v9, v10, :cond_c

    .line 1488
    new-instance v8, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    invoke-direct {v8, p0, v7, v5, v6}, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;-><init>(Lcom/android/mms/ui/RecipientsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1490
    .restart local v8       #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    if-nez v10, :cond_b

    .line 1491
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    .line 1492
    :cond_b
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1448
    .end local v4           #kind:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #pos:I
    .end local v8           #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    .end local v9           #type:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1496
    .restart local v4       #kind:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #pos:I
    .restart local v9       #type:I
    :cond_c
    const/16 v10, 0x15

    if-ne v9, v10, :cond_e

    .line 1497
    :try_start_1
    new-instance v8, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    invoke-direct {v8, p0, v7, v5, v6}, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;-><init>(Lcom/android/mms/ui/RecipientsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1499
    .restart local v8       #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    if-nez v10, :cond_d

    .line 1500
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    .line 1501
    :cond_d
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1505
    .end local v8           #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    :cond_e
    if-nez v4, :cond_10

    .line 1506
    new-instance v8, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    invoke-direct {v8, p0, v7, v5, v6}, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;-><init>(Lcom/android/mms/ui/RecipientsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1508
    .restart local v8       #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    if-nez v10, :cond_f

    .line 1509
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    .line 1510
    :cond_f
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1515
    .end local v8           #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    :cond_10
    new-instance v8, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    invoke-direct {v8, p0, v7, v5, v6}, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;-><init>(Lcom/android/mms/ui/RecipientsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1517
    .restart local v8       #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    if-nez v10, :cond_11

    .line 1518
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    .line 1519
    :cond_11
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1540
    :cond_12
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_13

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_13

    .line 1541
    const/4 v3, 0x0

    .restart local v3       #jj:I
    :goto_3
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_13

    .line 1542
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1547
    .end local v3           #jj:I
    :cond_13
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1548
    .local v2, comparelimit:I
    const/4 v1, 0x0

    .line 1549
    .local v1, bskip:Z
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_19

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_19

    .line 1550
    const/4 v3, 0x0

    .restart local v3       #jj:I
    :goto_4
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_19

    .line 1551
    const/4 v1, 0x0

    .line 1553
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    if-eqz v10, :cond_17

    .line 1555
    iget v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .local v0, allid:I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 1556
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1558
    const/4 v1, 0x1

    .line 1572
    :cond_14
    :goto_6
    if-nez v1, :cond_15

    .line 1573
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1555
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1565
    .end local v0           #allid:I
    :cond_17
    iget v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .restart local v0       #allid:I
    :goto_7
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_14

    .line 1566
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1567
    const/4 v1, 0x1

    .line 1568
    goto :goto_6

    .line 1565
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1581
    .end local v0           #allid:I
    .end local v3           #jj:I
    :cond_19
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1582
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_1e

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1e

    .line 1583
    const/4 v3, 0x0

    .restart local v3       #jj:I
    :goto_8
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1e

    .line 1584
    const/4 v1, 0x0

    .line 1587
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    if-eqz v10, :cond_1d

    .line 1588
    iget v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .restart local v0       #allid:I
    :goto_9
    if-ge v0, v2, :cond_1a

    .line 1589
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1590
    const/4 v1, 0x1

    .line 1599
    .end local v0           #allid:I
    :cond_1a
    :goto_a
    if-nez v1, :cond_1b

    .line 1600
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1588
    .restart local v0       #allid:I
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1597
    .end local v0           #allid:I
    :cond_1d
    const/4 v1, 0x1

    goto :goto_a

    .line 1608
    .end local v3           #jj:I
    :cond_1e
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    if-eqz v10, :cond_24

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_24

    .line 1609
    const/4 v3, 0x0

    .restart local v3       #jj:I
    :goto_b
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_24

    .line 1610
    const/4 v1, 0x0

    .line 1612
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    if-eqz v10, :cond_22

    .line 1613
    iget v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .restart local v0       #allid:I
    :goto_c
    if-ge v0, v2, :cond_1f

    .line 1615
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1617
    const/4 v1, 0x1

    .line 1632
    :cond_1f
    :goto_d
    if-nez v1, :cond_20

    .line 1633
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1613
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1624
    .end local v0           #allid:I
    :cond_22
    iget v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .restart local v0       #allid:I
    :goto_e
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_1f

    .line 1625
    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    if-nez v10, :cond_23

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v11, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;

    iget-object v10, v10, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1627
    const/4 v1, 0x1

    .line 1628
    goto :goto_d

    .line 1624
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1637
    .end local v0           #allid:I
    .end local v1           #bskip:Z
    .end local v2           #comparelimit:I
    .end local v3           #jj:I
    .end local v4           #kind:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #pos:I
    .end local v8           #tcatchobj:Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
    .end local v9           #type:I
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->ChangeNewCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    goto/16 :goto_0
.end method

.method private buildGroupCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 808
    if-nez p1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-object v9

    .line 811
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    .line 812
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v8, wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 814
    .local v0, groupIDIdx:I
    const-string v10, "title"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 815
    .local v6, groupNameIdx:I
    const-string v10, "summ_count"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 816
    .local v4, groupMemberCountIdx:I
    const-wide/16 v1, 0x0

    .line 818
    .local v1, groupId:J
    const/4 v3, -0x1

    .line 820
    .local v3, groupMemberCount:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 822
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 823
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 824
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 828
    .local v5, groupName:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v7, result:Ljava/util/ArrayList;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 845
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 846
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 847
    const/4 p1, 0x0

    .line 850
    :cond_3
    new-instance v9, Lcom/android/mms/ui/ArrayListCursor;

    sget-object v10, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/android/mms/ui/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 854
    .end local v0           #groupIDIdx:I
    .end local v1           #groupId:J
    .end local v3           #groupMemberCount:I
    .end local v4           #groupMemberCountIdx:I
    .end local v5           #groupName:Ljava/lang/String;
    .end local v6           #groupNameIdx:I
    .end local v7           #result:Ljava/util/ArrayList;
    .end local v8           #wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_4
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 855
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 856
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getGroupStrings(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 25
    .parameter "displayName"

    .prologue
    .line 978
    const/16 v19, 0x0

    .line 980
    .local v19, out:Landroid/text/SpannableString;
    const-string v2, "content://com.android.contacts/group/data/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 981
    .local v3, queryuri:Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v2, "("

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    sget-boolean v2, Lcom/android/mms/ui/RecipientsAdapter;->mCurrentIsPhoneConstraint:Z

    if-eqz v2, :cond_0

    .line 984
    const-string v2, "mimetype"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v2, "\') AND ("

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_0
    const-string v2, "is_primary"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v2, ")"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 993
    .local v9, groupCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 994
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 995
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 996
    .local v20, personIds:[Ljava/lang/String;
    const-string v22, ""

    .line 998
    .local v22, recipients:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v15

    .line 999
    .local v15, maxRecipients:I
    const/4 v12, 0x0

    .line 1001
    .local v12, idx:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1003
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1004
    .local v16, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1005
    .local v18, number:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1006
    .local v21, person_id:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/ui/RecipientList$Recipient;->buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1007
    .local v17, nameAndNumber:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-lez v2, :cond_1

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1009
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1010
    add-int/lit8 v13, v12, 0x1

    .end local v12           #idx:I
    .local v13, idx:I
    aput-object v21, v20, v12

    .line 1011
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lt v13, v15, :cond_7

    .line 1013
    :cond_2
    new-instance v19, Landroid/text/SpannableString;

    .end local v19           #out:Landroid/text/SpannableString;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1014
    .restart local v19       #out:Landroid/text/SpannableString;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v2, v15, :cond_3

    move v14, v15

    .line 1015
    .local v14, max:I
    :goto_1
    const/16 v23, 0x0

    .local v23, start:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v14, :cond_5

    .line 1016
    move/from16 v11, v23

    .line 1017
    .local v11, idStart:I
    const-string v2, "<"

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 1018
    .local v8, end:I
    if-gtz v8, :cond_4

    .line 1019
    const-string v2, "RecipientsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "char \'<\' NOT FOUND in string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1014
    .end local v8           #end:I
    .end local v10           #i:I
    .end local v11           #idStart:I
    .end local v14           #max:I
    .end local v23           #start:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    goto :goto_1

    .line 1023
    .restart local v8       #end:I
    .restart local v10       #i:I
    .restart local v11       #idStart:I
    .restart local v14       #max:I
    .restart local v23       #start:I
    :cond_4
    new-instance v2, Landroid/text/Annotation;

    const-string v4, "name"

    add-int/lit8 v5, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v8, -0x1

    const/16 v5, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1024
    add-int/lit8 v23, v8, 0x1

    .line 1025
    const-string v2, ">"

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 1026
    new-instance v2, Landroid/text/Annotation;

    const-string v4, "number"

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1027
    new-instance v2, Landroid/text/Annotation;

    const-string v4, "person_id"

    aget-object v5, v20, v10

    invoke-direct {v2, v4, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x21

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11, v8, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1028
    const-string v2, ";"

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v23, v2, 0x1

    goto :goto_3

    .line 1032
    .end local v8           #end:I
    .end local v10           #i:I
    .end local v11           #idStart:I
    .end local v13           #idx:I
    .end local v14           #max:I
    .end local v15           #maxRecipients:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #nameAndNumber:Ljava/lang/String;
    .end local v18           #number:Ljava/lang/String;
    .end local v20           #personIds:[Ljava/lang/String;
    .end local v21           #person_id:Ljava/lang/String;
    .end local v22           #recipients:Ljava/lang/String;
    .end local v23           #start:I
    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1033
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1034
    const/4 v9, 0x0

    .line 1038
    :cond_6
    return-object v19

    .restart local v13       #idx:I
    .restart local v15       #maxRecipients:I
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #nameAndNumber:Ljava/lang/String;
    .restart local v18       #number:Ljava/lang/String;
    .restart local v20       #personIds:[Ljava/lang/String;
    .restart local v21       #person_id:Ljava/lang/String;
    .restart local v22       #recipients:Ljava/lang/String;
    :cond_7
    move v12, v13

    .end local v13           #idx:I
    .restart local v12       #idx:I
    goto/16 :goto_0
.end method

.method public static getGroupStrings(Ljava/lang/String;Lcom/android/mms/ui/RecipientList;Landroid/content/Context;)Lcom/android/mms/ui/RecipientList;
    .locals 16
    .parameter "displayName"
    .parameter "rl"
    .parameter "context"

    .prologue
    .line 936
    const-string v2, "content://com.android.contacts/group/data/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 937
    .local v3, queryuri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 938
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .local v15, where:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    sget-boolean v2, Lcom/android/mms/ui/RecipientsAdapter;->mCurrentIsPhoneConstraint:Z

    if-eqz v2, :cond_0

    .line 941
    const-string v2, "mimetype"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    const-string v2, "\') AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    :cond_0
    const-string v2, "is_primary"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 948
    .local v8, groupCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 949
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 950
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v10

    .line 951
    .local v10, maxRecipients:I
    const/4 v9, 0x0

    .line 956
    .local v9, idx:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 958
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 959
    .local v11, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 960
    .local v12, number:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 961
    .local v13, person_id:Ljava/lang/String;
    invoke-static {v13, v11, v12}, Lcom/android/mms/ui/RecipientsAdapter;->getRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v14

    .line 963
    .local v14, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v2, v14, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 964
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v14, Lcom/android/mms/ui/RecipientList$Recipient;->buttonView:Landroid/view/ViewGroup;

    .line 966
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/android/mms/ui/RecipientList;->add(Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 967
    add-int/lit8 v9, v9, 0x1

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lt v9, v10, :cond_1

    .line 970
    .end local v9           #idx:I
    .end local v10           #maxRecipients:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #person_id:Ljava/lang/String;
    .end local v14           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_3
    invoke-static {v8}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 973
    :cond_4
    return-object p1
.end method

.method public static getRecipient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 4
    .parameter "person_id"
    .parameter "name"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 921
    new-instance v0, Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-direct {v0}, Lcom/android/mms/ui/RecipientList$Recipient;-><init>()V

    .line 922
    .local v0, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object p1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    .line 923
    const-string v1, ""

    iput-object v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->label:Ljava/lang/CharSequence;

    .line 924
    iput-boolean v3, v0, Lcom/android/mms/ui/RecipientList$Recipient;->bcc:Z

    .line 925
    iput-object p2, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 926
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 931
    :goto_0
    iput-boolean v3, v0, Lcom/android/mms/ui/RecipientList$Recipient;->isFromSIM:Z

    .line 932
    return-object v0

    .line 929
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    goto :goto_0
.end method

.method private isValidConstraint(Ljava/lang/String;)Z
    .locals 2
    .parameter "cons"

    .prologue
    const/4 v0, 0x0

    .line 1977
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1978
    if-eqz p1, :cond_2

    .line 1982
    :cond_0
    :goto_0
    return v0

    .line 1979
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1982
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeAllMessageInQueue()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1988
    :goto_0
    return-void

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cons"

    .prologue
    .line 1816
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1818
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 1819
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1821
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 1818
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 1827
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    .line 1830
    :cond_3
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 1834
    :cond_4
    const/4 v3, 0x0

    .line 1837
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;

    .line 459
    .local v4, it:Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;
    iget-object v2, v4, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;->group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 460
    .local v2, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v10, v4, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 461
    .local v10, stamp:Lcom/htc/widget/HtcListItem2LineStamp;
    iget-object v12, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 465
    .local v12, txt:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, displayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, groupname:Ljava/lang/String;
    invoke-virtual {v12, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 472
    if-nez v1, :cond_0

    .line 474
    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 480
    :cond_0
    const/4 v14, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 483
    .local v13, type:I
    const/4 v14, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, kind:Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v14, "email"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 487
    const/4 v6, 0x0

    .line 488
    .local v6, labelArray:[Ljava/lang/String;
    const-string v9, "exchange_mailTypes"

    .line 489
    .local v9, resourceName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 491
    .local v7, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.htc"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 494
    :goto_0
    if-eqz v7, :cond_1

    .line 495
    const-string v14, "array"

    const-string v15, "com.htc"

    invoke-virtual {v7, v9, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 496
    .local v8, resid:I
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 497
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 520
    .end local v6           #labelArray:[Ljava/lang/String;
    .end local v7           #r:Landroid/content/res/Resources;
    .end local v8           #resid:I
    .end local v9           #resourceName:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v5, :cond_8

    .line 521
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 534
    :goto_2
    return-void

    .line 503
    :cond_2
    if-nez v5, :cond_3

    .line 504
    const v14, 0x7f0902e0

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(I)V

    goto :goto_1

    .line 506
    :cond_3
    const/16 v14, 0x15

    if-ne v13, v14, :cond_4

    .line 507
    const v14, 0x7f0902fb

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(I)V

    goto :goto_1

    .line 508
    :cond_4
    const/16 v14, 0x16

    if-ne v13, v14, :cond_5

    .line 509
    const v14, 0x7f0902fc

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(I)V

    goto :goto_1

    .line 510
    :cond_5
    if-lez v13, :cond_6

    .line 511
    invoke-static {v13}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(I)V

    goto :goto_1

    .line 512
    :cond_6
    if-nez v13, :cond_7

    .line 513
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(I)V

    goto :goto_1

    .line 516
    :cond_7
    const-string v14, " "

    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSendCallLog()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 524
    const/4 v14, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 525
    .local v11, t:Ljava/lang/String;
    if-eqz v11, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ltz v14, :cond_9

    .line 526
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 528
    :cond_9
    const-string v14, ""

    invoke-virtual {v12, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_2

    .line 531
    .end local v11           #t:Ljava/lang/String;
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 492
    .restart local v6       #labelArray:[Ljava/lang/String;
    .restart local v7       #r:Landroid/content/res/Resources;
    .restart local v9       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 2020
    :goto_0
    return-void

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1998
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2000
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2001
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2004
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;

    .line 2005
    if-eqz p1, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2007
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2008
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRowIDColumn:I

    .line 2009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mDataValid:Z

    .line 2011
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2013
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mRowIDColumn:I

    .line 2014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mDataValid:Z

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1939
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1940
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1941
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1942
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1943
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1944
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1945
    sput-object v2, Lcom/android/mms/ui/RecipientsAdapter;->mContactCatch:Ljava/util/ArrayList;

    .line 1947
    :cond_0
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1948
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1949
    sput-object v2, Lcom/android/mms/ui/RecipientsAdapter;->mPhonePadCatch:Ljava/util/ArrayList;

    .line 1951
    :cond_1
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1952
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1953
    sput-object v2, Lcom/android/mms/ui/RecipientsAdapter;->mMsgCatch:Ljava/util/ArrayList;

    .line 1955
    :cond_2
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1956
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1957
    sput-object v2, Lcom/android/mms/ui/RecipientsAdapter;->mCallCatch:Ljava/util/ArrayList;

    .line 1959
    :cond_3
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1960
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1961
    sput-object v2, Lcom/android/mms/ui/RecipientsAdapter;->mGroupCatch:Ljava/util/ArrayList;

    .line 1963
    :cond_4
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1964
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1965
    sput-object v2, Lcom/android/mms/ui/RecipientsAdapter;->mAllCatch:Ljava/util/ArrayList;

    .line 1968
    :cond_5
    iput-object v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    .line 1969
    iput-object v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 1971
    :cond_6
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 23
    .parameter "cursor"

    .prologue
    .line 311
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, name:Ljava/lang/String;
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 318
    .local v19, type:I
    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, number:Ljava/lang/String;
    const/16 v20, 0x16

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 324
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 327
    .local v11, numbers:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 328
    .local v10, numberlist:Ljava/lang/String;
    const/16 v17, 0x0

    .line 332
    .local v17, subnumberlen:I
    const/4 v4, 0x0

    .local v4, ii:I
    :goto_0
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_1

    .line 333
    aget-object v16, v11, v4

    .line 335
    .local v16, subnumber:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 336
    move-object/from16 v10, v16

    .line 332
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 338
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 339
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 342
    .end local v16           #subnumber:Ljava/lang/String;
    :cond_1
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 343
    .local v12, out:Landroid/text/SpannableString;
    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 347
    .local v6, len:I
    const/4 v15, 0x0

    .line 349
    .local v15, spanstart:I
    const/4 v4, 0x0

    :goto_2
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v4, v0, :cond_5

    .line 350
    aget-object v16, v11, v4

    .line 351
    .restart local v16       #subnumber:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 352
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 353
    .local v18, tname:Ljava/lang/String;
    add-int v20, v15, v17

    add-int/lit8 v14, v20, 0x1

    .line 356
    .local v14, spanend:I
    if-le v14, v6, :cond_2

    .line 357
    move v14, v6

    .line 361
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 362
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v15, v14, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 374
    :goto_3
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "number"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v15, v14, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 377
    move v15, v14

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 365
    :cond_3
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v15, v14, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 381
    .end local v4           #ii:I
    .end local v6           #len:I
    .end local v10           #numberlist:Ljava/lang/String;
    .end local v11           #numbers:[Ljava/lang/String;
    .end local v12           #out:Landroid/text/SpannableString;
    .end local v14           #spanend:I
    .end local v15           #spanstart:I
    .end local v16           #subnumber:Ljava/lang/String;
    .end local v17           #subnumberlen:I
    .end local v18           #tname:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_6

    .line 382
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 398
    const-string v3, " "

    .line 407
    .local v3, displayLabel:Ljava/lang/CharSequence;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_8

    move-object v12, v9

    .line 436
    .end local v3           #displayLabel:Ljava/lang/CharSequence;
    :cond_5
    :goto_4
    return-object v12

    .line 385
    :cond_6
    const/16 v20, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, kind:Ljava/lang/String;
    if-nez v5, :cond_7

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/RecipientsAdapter;->getGroupString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_4

    .line 390
    :cond_7
    const-string v12, ""

    goto :goto_4

    .line 413
    .end local v5           #kind:Ljava/lang/String;
    .restart local v3       #displayLabel:Ljava/lang/CharSequence;
    :cond_8
    invoke-static {v7, v9}, Lcom/android/mms/ui/RecipientList$Recipient;->buildNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, nameAndNumber:Ljava/lang/String;
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 417
    .restart local v12       #out:Landroid/text/SpannableString;
    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 419
    .restart local v6       #len:I
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 420
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 428
    :goto_5
    const/16 v20, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 429
    .local v13, person_id:Ljava/lang/String;
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "person_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 431
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "label"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 433
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "number"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 423
    .end local v13           #person_id:Ljava/lang/String;
    :cond_9
    new-instance v20, Landroid/text/Annotation;

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5
.end method

.method protected doReQueryFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "cons"
    .parameter "keypadStr"

    .prologue
    const/16 v6, 0x32

    .line 1144
    const-string v2, "RecipientsAdapter"

    const-string v3, "do requery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 1147
    invoke-virtual {p0, p1, v6}, Lcom/android/mms/ui/RecipientsAdapter;->getPhoneContactsWithGroupCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1162
    .local v0, contactsCursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 1163
    const-string v2, "RecipientsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doReQueryFilter count> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/RecipientsAdapter;->getConvertKeypadLettersToDigitsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1169
    .local v1, phoneNumCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1170
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v2

    .line 1171
    .end local v0           #contactsCursor:Landroid/database/Cursor;
    :cond_1
    return-object v0

    .line 1155
    .end local v1           #phoneNumCursor:Landroid/database/Cursor;
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    if-eqz v2, :cond_3

    .line 1156
    invoke-virtual {p0, p1, v6}, Lcom/android/mms/ui/RecipientsAdapter;->getPhoneContactsCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .restart local v0       #contactsCursor:Landroid/database/Cursor;
    goto :goto_0

    .line 1158
    .end local v0           #contactsCursor:Landroid/database/Cursor;
    :cond_3
    iget-boolean v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    invoke-virtual {p0, v2, p1, v6}, Lcom/android/mms/ui/RecipientsAdapter;->getContactsCursor(ZLjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .restart local v0       #contactsCursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public doRunQueryOnBackgroundThreadFilter(Ljava/lang/CharSequence;I)Landroid/database/Cursor;
    .locals 12
    .parameter "constraint"
    .parameter "tryCount"

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1177
    const/4 v0, 0x0

    .line 1179
    .local v0, cons:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    .line 1190
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x4000

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_4

    .line 1191
    if-ne p2, v11, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/android/mms/ui/RecipientsAdapter;->getPhoneContactsWithGroupCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1208
    .local v1, contactsCursor:Landroid/database/Cursor;
    :goto_1
    if-ne p2, v11, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1209
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1210
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1211
    .local v2, message:Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1212
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x64

    invoke-virtual {v4, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1216
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    iput v6, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .line 1217
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1219
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsAdapter;->getConvertKeypadLettersToDigitsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1220
    .local v3, phoneNumCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 1221
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .line 1222
    new-instance v4, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    aput-object v3, v5, v6

    aput-object v1, v5, v11

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v1, v4

    .line 1225
    .end local v1           #contactsCursor:Landroid/database/Cursor;
    .end local v3           #phoneNumCursor:Landroid/database/Cursor;
    :cond_1
    :goto_2
    return-object v1

    .line 1183
    :cond_2
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v4, v6

    .line 1191
    goto :goto_0

    .line 1199
    :cond_4
    iget-boolean v4, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    if-eqz v4, :cond_6

    .line 1200
    if-ne p2, v11, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {p0, v0, v4}, Lcom/android/mms/ui/RecipientsAdapter;->getPhoneContactsCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1       #contactsCursor:Landroid/database/Cursor;
    goto :goto_1

    .end local v1           #contactsCursor:Landroid/database/Cursor;
    :cond_5
    move v4, v6

    goto :goto_3

    .line 1202
    :cond_6
    iget-boolean v7, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    if-ne p2, v11, :cond_7

    move v4, v5

    :goto_4
    invoke-virtual {p0, v7, v0, v4}, Lcom/android/mms/ui/RecipientsAdapter;->getContactsCursor(ZLjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1       #contactsCursor:Landroid/database/Cursor;
    goto :goto_1

    .end local v1           #contactsCursor:Landroid/database/Cursor;
    :cond_7
    move v4, v6

    goto :goto_4
.end method

.method public doRunQueryOnBackgroundThreadFilterSense21(Ljava/lang/CharSequence;I)Landroid/database/Cursor;
    .locals 17
    .parameter "constraint"
    .parameter "tryCount"

    .prologue
    .line 1228
    const/4 v6, 0x0

    .line 1230
    .local v6, cons:Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 1231
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1232
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    .line 1237
    const/4 v7, 0x0

    .line 1238
    .local v7, contactsCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1239
    .local v10, msgHistoryCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1240
    .local v5, callHistoryCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1241
    .local v2, GroupCursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1242
    .local v12, totalcountNoGroup:I
    const/4 v13, 0x0

    .line 1243
    .local v13, totalcountwithGroup:I
    const/4 v8, 0x0

    .line 1247
    .local v8, currentQuerylimit:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mMessageHistoryConstraint:Z

    if-eqz v14, :cond_0

    .line 1248
    const/4 v14, 0x1

    move/from16 v0, p2

    if-le v0, v14, :cond_9

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/mms/ui/RecipientsAdapter;->getMessageHistoryCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 1249
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1253
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mCallHistoryConstraint:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move/from16 v0, p2

    if-gt v0, v14, :cond_1

    const/16 v14, 0x18

    if-ge v12, v14, :cond_2

    .line 1254
    :cond_1
    const/4 v14, 0x1

    move/from16 v0, p2

    if-le v0, v14, :cond_b

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Lcom/android/mms/ui/RecipientsAdapter;->getCallHistoryCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v5

    .line 1255
    if-eqz v5, :cond_c

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v14

    :goto_3
    add-int/2addr v12, v14

    .line 1258
    :cond_2
    const/4 v14, 0x1

    move/from16 v0, p2

    if-gt v0, v14, :cond_3

    const/16 v14, 0x18

    if-ge v12, v14, :cond_4

    .line 1268
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    const/4 v14, 0x1

    move/from16 v0, p2

    if-le v0, v14, :cond_d

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v14}, Lcom/android/mms/ui/RecipientsAdapter;->getContactsCursor(ZLjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1269
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    :goto_5
    add-int/2addr v12, v14

    .line 1274
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/mms/ui/RecipientsAdapter;->getGroupCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 1275
    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    :goto_6
    add-int v13, v12, v14

    .line 1276
    move-object v3, v10

    .line 1278
    .local v3, allDBCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_10

    if-eqz v5, :cond_10

    .line 1279
    new-instance v4, Landroid/database/MergeCursor;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/database/Cursor;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-direct {v4, v14}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1284
    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .local v4, allDBCursor:Landroid/database/Cursor;
    :goto_7
    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    .line 1285
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/database/Cursor;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-direct {v3, v14}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v4           #allDBCursor:Landroid/database/Cursor;
    .restart local v3       #allDBCursor:Landroid/database/Cursor;
    move-object v4, v3

    .line 1290
    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .restart local v4       #allDBCursor:Landroid/database/Cursor;
    :cond_5
    :goto_8
    if-eqz v4, :cond_12

    if-eqz v7, :cond_12

    .line 1291
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/database/Cursor;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    invoke-direct {v3, v14}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1295
    .end local v4           #allDBCursor:Landroid/database/Cursor;
    .restart local v3       #allDBCursor:Landroid/database/Cursor;
    :goto_9
    move-object v7, v3

    .line 1298
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_13

    if-eqz v7, :cond_13

    const/16 v14, 0x18

    if-ne v12, v14, :cond_13

    .line 1299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1301
    .local v9, message:Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const-wide/16 v15, 0x3e8

    move-wide v0, v15

    invoke-virtual {v14, v9, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1310
    .end local v9           #message:Landroid/os/Message;
    :cond_6
    :goto_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .line 1311
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_7

    .line 1313
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/RecipientsAdapter;->getConvertKeypadLettersToDigitsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1314
    .local v11, phoneNumCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 1315
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mPhonecursorcount:I

    .line 1316
    new-instance v14, Landroid/database/MergeCursor;

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/database/Cursor;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    invoke-direct {v14, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v7, v14

    .line 1319
    .end local v2           #GroupCursor:Landroid/database/Cursor;
    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .end local v5           #callHistoryCursor:Landroid/database/Cursor;
    .end local v7           #contactsCursor:Landroid/database/Cursor;
    .end local v8           #currentQuerylimit:I
    .end local v10           #msgHistoryCursor:Landroid/database/Cursor;
    .end local v11           #phoneNumCursor:Landroid/database/Cursor;
    .end local v12           #totalcountNoGroup:I
    .end local v13           #totalcountwithGroup:I
    :cond_7
    :goto_b
    return-object v7

    .line 1234
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    .line 1235
    const/4 v7, 0x0

    goto :goto_b

    .line 1248
    .restart local v2       #GroupCursor:Landroid/database/Cursor;
    .restart local v5       #callHistoryCursor:Landroid/database/Cursor;
    .restart local v7       #contactsCursor:Landroid/database/Cursor;
    .restart local v8       #currentQuerylimit:I
    .restart local v10       #msgHistoryCursor:Landroid/database/Cursor;
    .restart local v12       #totalcountNoGroup:I
    .restart local v13       #totalcountwithGroup:I
    :cond_9
    const/16 v14, 0x18

    goto/16 :goto_0

    .line 1249
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1254
    :cond_b
    rsub-int/lit8 v14, v12, 0x18

    goto/16 :goto_2

    .line 1255
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1268
    :cond_d
    rsub-int/lit8 v14, v12, 0x18

    goto/16 :goto_4

    .line 1269
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1275
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 1280
    .restart local v3       #allDBCursor:Landroid/database/Cursor;
    :cond_10
    if-eqz v5, :cond_16

    .line 1281
    move-object v3, v5

    move-object v4, v3

    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .restart local v4       #allDBCursor:Landroid/database/Cursor;
    goto/16 :goto_7

    .line 1286
    :cond_11
    if-eqz v2, :cond_5

    .line 1287
    move-object v3, v2

    .end local v4           #allDBCursor:Landroid/database/Cursor;
    .restart local v3       #allDBCursor:Landroid/database/Cursor;
    move-object v4, v3

    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .restart local v4       #allDBCursor:Landroid/database/Cursor;
    goto/16 :goto_8

    .line 1292
    :cond_12
    if-eqz v7, :cond_15

    .line 1293
    move-object v3, v7

    .end local v4           #allDBCursor:Landroid/database/Cursor;
    .restart local v3       #allDBCursor:Landroid/database/Cursor;
    goto/16 :goto_9

    .line 1304
    :cond_13
    const/4 v14, 0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_14

    const/4 v14, 0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_6

    :cond_14
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lez v14, :cond_6

    .line 1305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1307
    .restart local v9       #message:Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/RecipientsAdapter;->mSecondQueryHandler:Landroid/os/Handler;

    const-wide/16 v15, 0x514

    move-wide v0, v15

    invoke-virtual {v14, v9, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .end local v9           #message:Landroid/os/Message;
    .restart local v4       #allDBCursor:Landroid/database/Cursor;
    :cond_15
    move-object v3, v4

    .end local v4           #allDBCursor:Landroid/database/Cursor;
    .restart local v3       #allDBCursor:Landroid/database/Cursor;
    goto/16 :goto_9

    :cond_16
    move-object v4, v3

    .end local v3           #allDBCursor:Landroid/database/Cursor;
    .restart local v4       #allDBCursor:Landroid/database/Cursor;
    goto/16 :goto_7
.end method

.method protected getCallHistoryCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 13
    .parameter "constraint"
    .parameter "withLimit"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 764
    .local v10, searchWord:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 766
    const-string v0, "content://call_log/mms_search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 767
    .local v1, queryuriCall:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 768
    .local v6, builder:Landroid/net/Uri$Builder;
    if-lez p2, :cond_4

    .line 769
    const-string v0, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 774
    :goto_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object v10, v4, v12

    .line 776
    .local v4, mQuery:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v5, "display_name ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 779
    .local v7, calllogCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 780
    .local v8, calllogCursor_new:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 781
    .local v11, updatename:Z
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 782
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 784
    :cond_0
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 786
    .local v9, display_name:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 787
    const/4 v11, 0x1

    .line 789
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    if-eqz v11, :cond_2

    .line 792
    invoke-direct {p0, v7}, Lcom/android/mms/ui/RecipientsAdapter;->buildCalllogCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 796
    .end local v9           #display_name:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 797
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 798
    const/4 v7, 0x0

    .line 801
    :cond_3
    if-eqz v8, :cond_5

    .end local v8           #calllogCursor_new:Landroid/database/Cursor;
    :goto_1
    return-object v8

    .line 771
    .end local v4           #mQuery:[Ljava/lang/String;
    .end local v7           #calllogCursor:Landroid/database/Cursor;
    .end local v11           #updatename:Z
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .restart local v4       #mQuery:[Ljava/lang/String;
    .restart local v7       #calllogCursor:Landroid/database/Cursor;
    .restart local v8       #calllogCursor_new:Landroid/database/Cursor;
    .restart local v11       #updatename:Z
    :cond_5
    move-object v8, v3

    .line 801
    goto :goto_1
.end method

.method protected getContactsCursor(ZLjava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "isPhoneConstraint"
    .parameter "cons"
    .parameter "withLimit"

    .prologue
    const/4 v2, 0x0

    .line 1052
    if-nez p2, :cond_0

    .line 1069
    :goto_0
    return-object v2

    .line 1054
    :cond_0
    const/4 v6, 0x0

    .line 1055
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1058
    if-eqz p1, :cond_2

    .line 1059
    const-string v0, "content://com.android.contacts/contacts/filter_phone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1063
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    if-lez p3, :cond_3

    .line 1064
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1067
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    move-object v2, v6

    .line 1069
    goto :goto_0

    .line 1061
    :cond_2
    const-string v0, "content://com.android.contacts/contacts/filter_message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 1066
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2
.end method

.method protected getConvertKeypadLettersToDigitsCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cons"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 1073
    if-nez p1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-object v3

    .line 1074
    :cond_1
    const-string v0, ""

    .line 1076
    .local v0, phone:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1077
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1079
    const-string v0, ""

    .line 1086
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v1, result:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string v3, "\u00a0"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    const-string v3, "noType"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v2, wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v3, Lcom/android/mms/ui/ArrayListCursor;

    sget-object v4, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/mms/ui/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1081
    .end local v1           #result:Ljava/util/ArrayList;
    .end local v2           #wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected getGroupCount(Ljava/lang/String;)I
    .locals 10
    .parameter "displayName"

    .prologue
    const/4 v4, 0x0

    .line 895
    const/4 v6, -0x1

    .line 897
    .local v6, count:I
    const-string v0, "content://com.android.contacts/group/data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 898
    .local v1, queryuri:Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    const-string v0, "mimetype"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v0, "\') AND ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v0, "is_primary"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 908
    .local v7, groupCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 909
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 911
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 914
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v8

    .line 915
    .local v8, maxRecipients:I
    if-le v6, v8, :cond_1

    move v6, v8

    .line 916
    :cond_1
    return v6
.end method

.method protected getGroupCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .parameter "constraint"
    .parameter "trycount"

    .prologue
    const/4 v2, 0x0

    .line 863
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 866
    .local v9, searchWord:Ljava/lang/String;
    const/4 v6, 0x0

    .line 867
    .local v6, groupCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 868
    .local v8, makeCursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    const-string v0, "content://com.android.contacts/groups_name_summary_search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 871
    .local v1, groupqueryuri:Landroid/net/Uri;
    :goto_0
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 872
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 874
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "display_name ASC "

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 878
    :cond_0
    if-eqz v6, :cond_1

    .line 880
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 882
    .local v7, groupNameIdx:I
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RecipientsAdapter;->buildGroupCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 885
    .end local v7           #groupNameIdx:I
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 887
    const/4 v6, 0x0

    .line 891
    :cond_2
    if-eqz v8, :cond_4

    .end local v8           #makeCursor:Landroid/database/Cursor;
    :goto_1
    return-object v8

    .line 868
    .end local v1           #groupqueryuri:Landroid/net/Uri;
    .restart local v8       #makeCursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "content://com.android.contacts/groups_name_search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .restart local v1       #groupqueryuri:Landroid/net/Uri;
    :cond_4
    move-object v8, v2

    .line 891
    goto :goto_1
.end method

.method protected getGroupString(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "displayName"

    .prologue
    .line 1042
    const-string v0, "group:"

    .line 1043
    .local v0, groupAnnotation:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, groupName:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1045
    .local v2, out:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/Annotation;

    const-string v4, "group:"

    invoke-direct {v3, v4, p1}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1046
    return-object v2
.end method

.method protected getMessageHistoryAndMerge(Ljava/lang/String;ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "constraint"
    .parameter "withLimit"
    .parameter "phoneCursor"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 665
    if-nez p1, :cond_1

    .line 682
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 666
    .restart local p3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 668
    .local v9, searchWord:Ljava/lang/String;
    const-string v0, "content://mms-sms/suggestion/suggest_format"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 669
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 670
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "category"

    sget v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 671
    new-array v4, v11, [Ljava/lang/String;

    aput-object v9, v4, v10

    .line 674
    .local v4, mQuery:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_MMS_LOG:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "display_name ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 677
    .local v8, mmsCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 678
    new-instance v7, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    aput-object v8, v0, v10

    aput-object p3, v0, v11

    invoke-direct {v7, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v7, c2:Landroid/database/Cursor;
    move-object p3, v7

    .line 679
    goto :goto_0
.end method

.method protected getMessageHistoryCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .parameter "constraint"
    .parameter "withLimit"

    .prologue
    const/4 v3, 0x0

    .line 687
    if-nez p1, :cond_0

    .line 705
    :goto_0
    return-object v3

    .line 688
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 689
    .local v8, searchWord:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 691
    const-string v0, "content://mms-sms/suggestion/suggest_format"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 692
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 693
    .local v6, builder:Landroid/net/Uri$Builder;
    if-lez p2, :cond_1

    .line 694
    const-string v0, "category"

    sget v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 699
    :goto_1
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    .line 702
    .local v4, mQuery:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_MMS_LOG:[Ljava/lang/String;

    const-string v5, "display_name ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 705
    .local v7, mmsCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .end local v7           #mmsCursor:Landroid/database/Cursor;
    :goto_2
    move-object v3, v7

    goto :goto_0

    .line 697
    .end local v4           #mQuery:[Ljava/lang/String;
    :cond_1
    const-string v0, "category"

    sget v2, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .restart local v4       #mQuery:[Ljava/lang/String;
    .restart local v7       #mmsCursor:Landroid/database/Cursor;
    :cond_2
    move-object v7, v3

    .line 705
    goto :goto_2
.end method

.method protected getPhoneContactsCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 17
    .parameter "constraint"
    .parameter "withLimit"

    .prologue
    .line 555
    const-string v1, "RecipientsAdapter"

    const-string v3, "getPhoneContactsCursor> "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-nez p1, :cond_0

    const/4 v14, 0x0

    .line 620
    :goto_0
    return-object v14

    .line 557
    :cond_0
    const/4 v14, 0x0

    .line 558
    .local v14, phoneCursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 559
    .local v15, searchWord:Ljava/lang/String;
    const-string v1, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v15, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "!"

    const-string v5, "!!"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%"

    const-string v5, "!%"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_"

    const-string v5, "!_"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 562
    invoke-static {v15}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x64

    move/from16 v0, p2

    if-le v0, v1, :cond_3

    .line 563
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v1, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " LIKE \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%\' ESCAPE \'!\' OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v1, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " LIKE \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%\' ESCAPE \'!\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v1, ") AND ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, "\')"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v1, "content://com.android.contacts/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 572
    .local v2, queryuri:Landroid/net/Uri;
    if-lez p2, :cond_2

    .line 573
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 574
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "display_name ASC "

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 619
    :goto_1
    const-string v1, "RecipientsAdapter"

    const-string v3, "getPhoneContactsCursor< "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    .end local v2           #queryuri:Landroid/net/Uri;
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_3
    const-string v12, ""

    .line 578
    .local v12, idList:Ljava/lang/String;
    sget-object v1, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "contacts"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 579
    .local v4, idQueryuri:Landroid/net/Uri;
    if-lez p2, :cond_4

    .line 580
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 581
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v13, idWhere:Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, "display_name"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " LIKE \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%\' ESCAPE \'!\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "display_name ASC "

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 587
    .local v11, idCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 588
    const-string v1, "RecipientsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "idCursor count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 591
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 597
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 599
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 600
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 601
    const/4 v11, 0x0

    .line 605
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .restart local v16       #where:Ljava/lang/StringBuilder;
    const-string v1, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, "contact_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v1, ") AND ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, "\')"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, "content://com.android.contacts/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 613
    .restart local v2       #queryuri:Landroid/net/Uri;
    if-lez p2, :cond_8

    .line 614
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 615
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "display_name ASC "

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_1

    .line 594
    .end local v2           #queryuri:Landroid/net/Uri;
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2
.end method

.method protected getPhoneContactsWithGroupCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"
    .parameter "withLimit"

    .prologue
    const/4 v3, 0x0

    .line 626
    const-string v0, "RecipientsAdapter"

    const-string v2, "getPhoneContactsWithGroupCursor> "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-nez p1, :cond_0

    .line 656
    :goto_0
    return-object v3

    .line 628
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, searchWord:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/picker/allmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 645
    .local v1, queryuri:Landroid/net/Uri;
    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    if-eqz v0, :cond_1

    .line 646
    const-string v0, "content://com.android.contacts/contacts/picker/allphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 648
    :cond_1
    if-lez p2, :cond_2

    .line 649
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 653
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v5, "display_name ASC "

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, phoneCursor:Landroid/database/Cursor;
    move-object v3, v6

    .line 656
    goto :goto_0

    .line 651
    .end local v6           #phoneCursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    .line 441
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/ui/HtcListItemComposer;->createStampListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 442
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setVisibility(I)V

    .line 443
    new-instance v2, Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcListItem2LineStamp;-><init>(Landroid/content/Context;)V

    .line 444
    .local v2, st:Lcom/htc/widget/HtcListItem2LineStamp;
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 448
    new-instance v1, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;-><init>(Lcom/android/mms/ui/RecipientsAdapter$1;)V

    .line 449
    .local v1, item:Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;
    iput-object v0, v1, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;->group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 450
    iput-object v2, v1, Lcom/android/mms/ui/RecipientsAdapter$RecipientItem;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 451
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 453
    iget-object v3, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    return-object v3
.end method

.method public reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 542
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->doReQueryFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mTempPhoneNum:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->doReQueryFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    const/4 v3, 0x1

    .line 1643
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSendCallLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1644
    invoke-virtual {p0, p1, v3}, Lcom/android/mms/ui/RecipientsAdapter;->doRunQueryOnBackgroundThreadFilterSense21(Ljava/lang/CharSequence;I)Landroid/database/Cursor;

    move-result-object v1

    .line 1647
    .local v1, tcursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1650
    .local v0, tc:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->buildCatch(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1654
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1655
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1656
    const/4 v1, 0x0

    .line 1665
    .end local v0           #tc:Landroid/database/Cursor;
    .end local v1           #tcursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 1654
    .restart local v0       #tc:Landroid/database/Cursor;
    .restart local v1       #tcursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1655
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1656
    const/4 v1, 0x0

    :cond_1
    throw v2

    .line 1665
    .end local v0           #tc:Landroid/database/Cursor;
    .end local v1           #tcursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/mms/ui/RecipientsAdapter;->doRunQueryOnBackgroundThreadFilter(Ljava/lang/CharSequence;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public runQueryV2OnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 13
    .parameter "constraint"

    .prologue
    .line 1324
    const-string v8, ""

    .line 1325
    .local v8, phone:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1327
    .local v6, cons:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1328
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1330
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1332
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1333
    const-string v8, ""

    .line 1348
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 1349
    .local v9, phoneCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1350
    const-string v0, "content://com.android.contacts/contacts/filter_message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1351
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1353
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1357
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v7, 0x0

    .line 1376
    .local v7, emailCursor:Landroid/database/Cursor;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1377
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v10, result:Ljava/util/ArrayList;
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    const-string v0, "\u00a0"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    const-string v0, "noType"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v12, wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    new-instance v11, Lcom/android/mms/ui/ArrayListCursor;

    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    invoke-direct {v11, v0, v12}, Lcom/android/mms/ui/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1404
    .local v11, translated:Lcom/android/mms/ui/ArrayListCursor;
    if-nez v9, :cond_4

    if-nez v7, :cond_4

    .line 1405
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1420
    .end local v7           #emailCursor:Landroid/database/Cursor;
    .end local v9           #phoneCursor:Landroid/database/Cursor;
    .end local v10           #result:Ljava/util/ArrayList;
    .end local v11           #translated:Lcom/android/mms/ui/ArrayListCursor;
    .end local v12           #wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_1
    return-object v0

    .line 1335
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1339
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1406
    .restart local v7       #emailCursor:Landroid/database/Cursor;
    .restart local v9       #phoneCursor:Landroid/database/Cursor;
    .restart local v10       #result:Ljava/util/ArrayList;
    .restart local v11       #translated:Lcom/android/mms/ui/ArrayListCursor;
    .restart local v12       #wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_4
    if-nez v9, :cond_5

    .line 1407
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    .line 1408
    :cond_5
    if-nez v7, :cond_6

    .line 1409
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    .line 1411
    :cond_6
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    .line 1413
    .end local v10           #result:Ljava/util/ArrayList;
    .end local v11           #translated:Lcom/android/mms/ui/ArrayListCursor;
    .end local v12           #wrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_7
    if-nez v9, :cond_8

    if-nez v7, :cond_8

    .line 1414
    const/4 v0, 0x0

    goto :goto_1

    .line 1415
    :cond_8
    if-nez v9, :cond_9

    .line 1416
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    .line 1417
    :cond_9
    if-nez v7, :cond_a

    .line 1418
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    .line 1420
    :cond_a
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public setCallMessageConstraint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSendCallLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "com.android.mms_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    .local v0, sp:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 300
    const-string v1, "pref_key_call_history"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mCallHistoryConstraint:Z

    .line 301
    const-string v1, "pref_key_sent_history"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mMessageHistoryConstraint:Z

    .line 304
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setPhoneNumberConstraint(Z)V
    .locals 4
    .parameter "bool"

    .prologue
    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 275
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRecipientListEnhance()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "com.android.mms_preferences"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    .local v0, sp:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 279
    const-string v2, "pref_key_email_address"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    .line 280
    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    sput-boolean v1, Lcom/android/mms/ui/RecipientsAdapter;->mCurrentIsPhoneConstraint:Z

    .line 290
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 286
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    .line 287
    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPhoneConstraint:Z

    sput-boolean v1, Lcom/android/mms/ui/RecipientsAdapter;->mCurrentIsPhoneConstraint:Z

    goto :goto_0
.end method
