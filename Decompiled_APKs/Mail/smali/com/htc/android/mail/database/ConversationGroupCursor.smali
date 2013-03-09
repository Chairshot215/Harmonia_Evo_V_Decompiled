.class public Lcom/htc/android/mail/database/ConversationGroupCursor;
.super Lcom/htc/android/mail/database/AbstractMailCursor;
.source "ConversationGroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;,
        Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;,
        Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;,
        Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;,
        Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENABLE_TRACE:Z = false

.field private static final TAG:Ljava/lang/String; = "GroupCursor"

.field private static final TAG_DELETE:Ljava/lang/String; = "Remove"

.field private static final TRACE_FILE_NAME:Ljava/lang/String; = "mailGroupCursorTrace"


# instance fields
.field private final READ:I

.field private mChildElementDeleteListener:Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;

.field protected mCursorPosition:I

.field protected mDeletedGroupCount:I

.field protected mGroupAccountIdToPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupHeadRealPosition:I

.field protected mMailGroupDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageDeletedPool:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;",
            ">;"
        }
    .end annotation
.end field

.field private mReadStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

.field protected mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

.field protected mUIPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/htc/android/mail/database/AbstractMailCursor;-><init>(Landroid/database/Cursor;)V

    .line 33
    iput v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupHeadRealPosition:I

    .line 34
    iput v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    .line 35
    iput v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mUIPosition:I

    .line 40
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->READ:I

    .line 978
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mChildElementDeleteListener:Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 52
    .local v0, startTime:J
    new-instance v2, Lcom/htc/android/mail/util/SparseArray;

    const/16 v3, 0xfa0

    invoke-direct {v2, v3}, Lcom/htc/android/mail/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    .line 53
    new-instance v2, Lcom/htc/android/mail/util/SparseArray;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/htc/android/mail/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageDeletedPool:Lcom/htc/android/mail/util/SparseArray;

    .line 54
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    .line 55
    new-instance v2, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;-><init>(Lcom/htc/android/mail/database/ConversationGroupCursor;)V

    iput-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    .line 57
    invoke-direct {p0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->updateMessageStatusMap()V

    .line 58
    invoke-direct {p0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->organizingGroupWork()V

    .line 59
    const-string v2, "GroupCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "organize Take: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/database/ConversationGroupCursor;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getRemoveChildPositionList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private clearArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz p1, :cond_0

    .line 1004
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1005
    const/4 p1, 0x0

    .line 1007
    :cond_0
    return-void
.end method

.method private clearHashMap(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    if-eqz p1, :cond_0

    .line 997
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 998
    const/4 p1, 0x0

    .line 1000
    :cond_0
    return-void
.end method

.method private clearSparseArray(Lcom/htc/android/mail/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/util/SparseArray",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 989
    .local p1, array:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<*>;"
    if-eqz p1, :cond_0

    .line 990
    invoke-virtual {p1}, Lcom/htc/android/mail/util/SparseArray;->clear()V

    .line 991
    const/4 p1, 0x0

    .line 993
    :cond_0
    return-void
.end method

.method private debugAllMemberInfo()V
    .locals 20

    .prologue
    .line 936
    sget-boolean v14, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-nez v14, :cond_1

    .line 976
    :cond_0
    return-void

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 941
    .local v9, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v14, "GroupCursor"

    const-string v15, "\n== mGroupAccountIdToPositionMap =="

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v1, ""

    .line 945
    .local v1, accountId:Ljava/lang/String;
    const-string v3, ""

    .line 946
    .local v3, group:Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 947
    .local v4, groupKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 949
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 951
    .local v6, groupPositionInMap:Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 952
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 953
    .local v5, groupPosition:I
    const-string v14, "GroupCursor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Group: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " accountId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " groupPosition: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 955
    .end local v5           #groupPosition:I
    :cond_2
    const-string v14, "GroupCursor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Group: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " accountId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " groupPosition not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    .end local v4           #groupKey:Ljava/lang/String;
    .end local v6           #groupPositionInMap:Ljava/lang/Integer;
    :cond_3
    const-string v14, "GroupCursor"

    const-string v15, "\n\n== mMessageIdToPositionMap =="

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v14}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v13

    .line 962
    .local v13, sizeOfMessageIdToPositionMap:I
    if-lez v13, :cond_4

    .line 965
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_1
    if-ge v8, v13, :cond_4

    .line 966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v14, v8}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v10

    .line 967
    .local v10, messageId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v14, v8}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .line 968
    .local v2, gcpp:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    const-string v14, "GroupCursor"

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, " PositionPair msgId: %4d ==> %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v2}, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 972
    .end local v2           #gcpp:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    .end local v8           #idx:I
    .end local v10           #messageId:J
    :cond_4
    const-string v14, "GroupCursor"

    const-string v15, "\n\n== mMailGroupDataList =="

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    .line 974
    .local v12, mgd:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    const-string v14, "GroupCursor"

    invoke-virtual {v12}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "groupKey"

    .prologue
    .line 928
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->subStringData(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "groupKey"

    .prologue
    .line 932
    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->subStringData(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPositionSkipDeletedItem(ILjava/util/ArrayList;)I
    .locals 5
    .parameter "startPos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, removeChildPostionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v2, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1033
    const-string v2, "GroupCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPositionSkipDeletedItem(startPos, removeChildPostionList)>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1036
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1037
    .local v1, position:Ljava/lang/Integer;
    sget-boolean v2, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1038
    const-string v2, "GroupCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p0, v2, :cond_4

    .line 1047
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #position:Ljava/lang/Integer;
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GroupCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return startPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_3
    return p0

    .line 1043
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #position:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private getRemoveChildPositionList(I)Ljava/util/ArrayList;
    .locals 4
    .parameter "groupPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget-object v3, v3, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 655
    .local v2, sizeOfRemoveGroupList:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 656
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget-object v3, v3, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;

    .line 657
    .local v0, child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    iget v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedGroupPosition:I

    if-ne v3, p1, :cond_0

    .line 658
    iget-object v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;->removedChildPositionList:Ljava/util/ArrayList;

    .line 661
    .end local v0           #child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :goto_1
    return-object v3

    .line 655
    .restart local v0       #child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v0           #child:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemChild;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleReadCachedByMessageId(JZ)Z
    .locals 3
    .parameter "targetMessageId"
    .parameter "readStatusInCursor"

    .prologue
    const/4 v1, 0x1

    .line 912
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mReadStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v0

    .line 913
    .local v0, isReadInCache:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 916
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_1
    move p3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private organizingGroupWork()V
    .locals 27

    .prologue
    .line 277
    const/4 v15, -0x1

    .line 278
    .local v15, groupColumnIdx:I
    const/4 v13, -0x1

    .line 279
    .local v13, accountIdColumnIdx:I
    const/16 v22, -0x1

    .line 280
    .local v22, readColumnIdX:I
    const/16 v18, -0x1

    .line 281
    .local v18, idColumnIdX:I
    const/16 v19, -0x1

    .line 283
    .local v19, msgIdColumnIdx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const-string v25, "_group"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const-string v25, "_account"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const-string v25, "_read"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const-string v25, "_id"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const-string v25, "_messageId"

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 289
    new-instance v24, Ljava/util/ArrayList;

    const/16 v25, 0x7d0

    invoke-direct/range {v24 .. v25}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 292
    const/4 v11, 0x0

    .line 300
    .local v11, itemPosition:I
    const-string v16, ""

    .line 302
    .local v16, groupKey:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 304
    .local v6, nextItemAccountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, nextItemGroup:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 306
    .local v4, nextItemGroupId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 307
    .local v8, nextItemMsgId:J
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v12, 0x1

    .line 309
    .local v12, nextItemIsRead:Z
    :goto_1
    const/16 v20, 0x0

    .line 312
    .local v20, newItemPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v12}, Lcom/htc/android/mail/database/ConversationGroupCursor;->handleReadCachedByMessageId(JZ)Z

    move-result v12

    .line 317
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 320
    .local v17, groupPositionInMap:Ljava/lang/Integer;
    const/16 v21, 0x0

    .line 322
    .local v21, nextGroupDataListPosition:I
    if-nez v17, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 338
    .local v23, sizeOfMailGroup:I
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_1

    .line 341
    :cond_0
    new-instance v3, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    invoke-direct/range {v3 .. v12}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;-><init>(JJJLjava/lang/String;IZ)V

    .line 344
    .local v3, newMailGroupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v3           #newMailGroupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    .line 348
    .local v14, createdMailGroupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    new-instance v20, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .end local v20           #newItemPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    iget-object v0, v14, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;-><init>(II)V

    .line 351
    .restart local v20       #newItemPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 352
    invoke-virtual {v14, v8, v9, v11, v12}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->insertingItem(JIZ)V

    .line 354
    add-int/lit8 v11, v11, 0x1

    .line 355
    goto/16 :goto_0

    .line 307
    .end local v12           #nextItemIsRead:Z
    .end local v14           #createdMailGroupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    .end local v17           #groupPositionInMap:Ljava/lang/Integer;
    .end local v20           #newItemPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    .end local v21           #nextGroupDataListPosition:I
    .end local v23           #sizeOfMailGroup:I
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v12       #nextItemIsRead:Z
    .restart local v17       #groupPositionInMap:Ljava/lang/Integer;
    .restart local v20       #newItemPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    .restart local v21       #nextGroupDataListPosition:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto :goto_2

    .line 356
    .end local v4           #nextItemGroupId:J
    .end local v6           #nextItemAccountId:J
    .end local v8           #nextItemMsgId:J
    .end local v10           #nextItemGroup:Ljava/lang/String;
    .end local v12           #nextItemIsRead:Z
    .end local v17           #groupPositionInMap:Ljava/lang/Integer;
    .end local v20           #newItemPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    .end local v21           #nextGroupDataListPosition:I
    :cond_4
    const-string v24, "GroupCursor"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Total: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->debugAllMemberInfo()V

    .line 358
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    .line 359
    return-void
.end method

.method private subStringData(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 921
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const-string v0, ""

    .line 924
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateMessageStatusMap()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mReadStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 44
    return-void
.end method

.method private updateReadStatusByMessageId(JLcom/htc/android/mail/AbsRequestController$MessageStatus;Z)V
    .locals 8
    .parameter "messageId"
    .parameter "readStatus"
    .parameter "isDeleteMode"

    .prologue
    const/4 v4, 0x1

    .line 838
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 839
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .line 841
    .local v2, pair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    const/4 v3, 0x0

    .line 842
    .local v3, updateReadStatusTo:Z
    if-eqz p4, :cond_2

    .line 843
    const/4 v3, 0x1

    .line 856
    :cond_0
    :goto_0
    if-eqz v2, :cond_7

    .line 857
    iget-object v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    iget v5, v2, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    .line 858
    .local v0, groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    if-eqz v0, :cond_6

    .line 859
    iget v4, v2, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->updateItemReadStatus(JIZ)V

    .line 872
    .end local v0           #groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    .end local v2           #pair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    .end local v3           #updateReadStatusTo:Z
    :cond_1
    :goto_1
    return-void

    .line 844
    .restart local v2       #pair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    .restart local v3       #updateReadStatusTo:Z
    :cond_2
    if-eqz p3, :cond_5

    .line 845
    invoke-virtual {p3, p1, p2}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v1

    .line 846
    .local v1, isReadInCache:I
    sget-boolean v5, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 847
    const-string v5, "GroupCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateReadStatusByMessageId isReadInCache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_3
    if-ne v1, v4, :cond_4

    move v3, v4

    .line 850
    :goto_2
    goto :goto_0

    .line 849
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 851
    .end local v1           #isReadInCache:I
    :cond_5
    sget-boolean v4, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 852
    const-string v4, "GroupCursor"

    const-string v5, "Not delete mode, and readStatus is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    .restart local v0       #groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    :cond_6
    sget-boolean v4, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 863
    const-string v4, "GroupCursor"

    const-string v5, "MailGroupData is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 867
    .end local v0           #groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    :cond_7
    sget-boolean v4, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 868
    const-string v4, "GroupCursor"

    const-string v5, "GroupChildPositionPair is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1011
    invoke-super {p0}, Lcom/htc/android/mail/database/AbstractMailCursor;->close()V

    .line 1012
    sget-boolean v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-nez v0, :cond_0

    .line 1013
    :cond_0
    const-string v0, "GroupCursor"

    const-string v1, "Close all member data"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->clearSparseArray(Lcom/htc/android/mail/util/SparseArray;)V

    .line 1016
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageDeletedPool:Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->clearSparseArray(Lcom/htc/android/mail/util/SparseArray;)V

    .line 1017
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->clearHashMap(Ljava/util/HashMap;)V

    .line 1018
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->clearArrayList(Ljava/util/ArrayList;)V

    .line 1020
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget-object v0, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->removedGroupPositionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1025
    :cond_1
    return-void
.end method

.method public delete(J)V
    .locals 9
    .parameter "messageId"

    .prologue
    const/4 v6, 0x1

    .line 98
    sget-boolean v5, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "GroupCursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .line 102
    .local v1, deletedMailPositionPair:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    if-eqz v1, :cond_4

    .line 103
    iget v3, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    .line 104
    .local v3, groupPosition:I
    iget v0, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    .line 105
    .local v0, childPosition:I
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    iget-object v5, v5, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 106
    .local v2, groupCount:I
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-virtual {v5, v3, v2, v0}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->insertRemovedElement(III)V

    .line 109
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mChildElementDeleteListener:Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mChildElementDeleteListener:Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;

    invoke-interface {v5, p1, p2}, Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;->onChildElementDeleteListener(J)V

    .line 113
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageDeletedPool:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_3

    move v4, v6

    .line 114
    .local v4, inDeletedPool:Z
    :goto_0
    if-nez v4, :cond_2

    .line 115
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/htc/android/mail/database/ConversationGroupCursor;->updateReadStatusByMessageId(JLcom/htc/android/mail/AbsRequestController$MessageStatus;Z)V

    .line 116
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageDeletedPool:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, p1, p2, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 124
    .end local v0           #childPosition:I
    .end local v2           #groupCount:I
    .end local v3           #groupPosition:I
    .end local v4           #inDeletedPool:Z
    :cond_2
    :goto_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 125
    return-void

    .line 113
    .restart local v0       #childPosition:I
    .restart local v2       #groupCount:I
    .restart local v3       #groupPosition:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 119
    .end local v0           #childPosition:I
    .end local v2           #groupCount:I
    .end local v3           #groupPosition:I
    :cond_4
    sget-boolean v5, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 120
    const-string v5, "Remove"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete message fail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAccountIdByMessageId(J)J
    .locals 3
    .parameter "msgId"

    .prologue
    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getMailGroupDateByMessageId(J)Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    move-result-object v0

    .line 819
    .local v0, groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    if-eqz v0, :cond_0

    .line 820
    iget-wide v1, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->accountId:J

    .line 822
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getActualPosition()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    return v0
.end method

.method public getChildCount()I
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    iget-object v1, v1, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->getRemovedChildCount(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 138
    .local v0, cnt:I
    return v0
.end method

.method public getChildCursor(JLjava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "accountId"
    .parameter "group"

    .prologue
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, groupKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 74
    .local v3, groupPositionInMap:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    .local v2, groupPosition:I
    new-instance v0, Lcom/htc/android/mail/database/ConversationChildCursor;

    iget-object v5, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    iget-object v4, v4, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-direct {v0, v5, v2, v4, v6}, Lcom/htc/android/mail/database/ConversationChildCursor;-><init>(Landroid/database/Cursor;ILjava/util/ArrayList;Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;)V

    .line 87
    .end local v2           #groupPosition:I
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-boolean v4, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 85
    const-string v4, "GroupCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChildCursor null cursor : no such group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildPositionByMessageId(J)I
    .locals 3
    .parameter "msgId"

    .prologue
    .line 779
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .line 780
    .local v0, gcpp:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    if-eqz v0, :cond_0

    .line 781
    iget v1, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->childPosition:I

    .line 784
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 143
    sget-boolean v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "GroupCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount mMailGroupDataList.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDeletedGroupCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mDeletedGroupCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentMailCount()I
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-virtual {v1}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->getTotalRemovedChildCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCurrentMessageIdt()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/htc/android/mail/MailProvider;->sSummaryIdIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDataListPositionByGroup(JLjava/lang/String;)I
    .locals 3
    .parameter "accountId"
    .parameter "group"

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, groupKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 184
    .local v1, groupPositionInMap:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 185
    const/4 v2, -0x1

    .line 187
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getGroupByMessageId(J)Ljava/lang/String;
    .locals 2
    .parameter "msgId"

    .prologue
    .line 827
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getMailGroupDateByMessageId(J)Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    move-result-object v0

    .line 828
    .local v0, groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    if-eqz v0, :cond_0

    .line 829
    iget-object v1, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->groupString:Ljava/lang/String;

    .line 831
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupCountByGroup(JLjava/lang/String;)I
    .locals 6
    .parameter "accountId"
    .parameter "group"

    .prologue
    const/4 v4, -0x1

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, groupKep:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupAccountIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 209
    .local v2, groupPositionInMap:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    .local v1, groupPosition:I
    iget-object v5, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 213
    .local v3, sizeOfGroup:I
    if-lt v1, v3, :cond_1

    .line 219
    .end local v1           #groupPosition:I
    .end local v3           #sizeOfGroup:I
    :cond_0
    :goto_0
    return v4

    .line 216
    .restart local v1       #groupPosition:I
    .restart local v3       #sizeOfGroup:I
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    iget-object v4, v4, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0
.end method

.method public getGroupCountByMessageId(J)I
    .locals 2
    .parameter "msgId"

    .prologue
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getMailGroupDateByMessageId(J)Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    move-result-object v0

    .line 810
    .local v0, groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    if-eqz v0, :cond_0

    .line 811
    iget-object v1, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->childPositionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 813
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupIdByGroupPosition(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 751
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 753
    .local v2, totalGroupCount:I
    sget-boolean v3, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 754
    const-string v3, "GroupCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalGroupCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v2, :cond_2

    .line 758
    :cond_1
    const-wide/16 v3, -0x1

    .line 765
    :goto_0
    return-wide v3

    .line 761
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-virtual {v3, p1}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->reportActualListViewPosition(I)I

    move-result v1

    .line 764
    .local v1, groupPostion:I
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    .line 765
    .local v0, groupData:Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    iget-wide v3, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->messageId:J

    goto :goto_0
.end method

.method public getGroupPositionByMessageId(J)I
    .locals 3
    .parameter "msgId"

    .prologue
    .line 769
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageIdToPositionMap:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;

    .line 770
    .local v0, gcpp:Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;
    if-eqz v0, :cond_0

    .line 771
    iget v1, v0, Lcom/htc/android/mail/database/ConversationGroupCursor$GroupChildPositionPair;->groupPosition:I

    .line 774
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMailGroupDateByMessageId(J)Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;
    .locals 6
    .parameter "msgId"

    .prologue
    const/4 v2, 0x0

    .line 789
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getGroupPositionByMessageId(J)I

    move-result v0

    .line 790
    .local v0, groupPosition:I
    if-ltz v0, :cond_3

    .line 791
    iget-object v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 792
    .local v1, sizeOfGroup:I
    sget-boolean v3, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 793
    const-string v3, "debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMailGroupDateByMessageId msgId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groupPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sizeOfGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    if-le v0, v1, :cond_2

    .line 804
    .end local v1           #sizeOfGroup:I
    :cond_1
    :goto_0
    return-object v2

    .line 799
    .restart local v1       #sizeOfGroup:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    goto :goto_0

    .line 801
    .end local v1           #sizeOfGroup:I
    :cond_3
    sget-boolean v3, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 802
    const-string v3, "GroupCursor"

    const-string v4, "groupPosition < 0"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPositionByGroup(JLjava/lang/String;)I
    .locals 3
    .parameter "accountId"
    .parameter "group"

    .prologue
    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, listViewPosition:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getDataListPositionByGroup(JLjava/lang/String;)I

    move-result v1

    .line 198
    .local v1, mailGroupDataListPosition:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->reportVirtualListViewPosition(I)I

    move-result v0

    .line 203
    :cond_0
    return v0
.end method

.method public getUIPosition()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mUIPosition:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 168
    .local v0, sizeOfMailGroupDataList:I
    iget v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    if-lt v1, v0, :cond_1

    .line 169
    sget-boolean v1, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "GroupCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allReadStatus index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was out of group data list("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 175
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    invoke-virtual {v1}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->getUnReadInThread()I

    move-result v1

    goto :goto_0
.end method

.method public isAllRead()Z
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, sizeOfMailGroupDataList:I
    iget v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    if-lt v1, v0, :cond_1

    .line 157
    sget-boolean v1, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "GroupCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allReadStatus index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was out of group data list("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;

    invoke-virtual {v1}, Lcom/htc/android/mail/database/ConversationGroupCursor$MailGroupData;->isAllReadInThread()Z

    move-result v1

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 226
    invoke-virtual {p0}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getCount()I

    move-result v0

    .line 228
    .local v0, count:I
    if-lt p1, v0, :cond_1

    .line 229
    iput v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    if-gez p1, :cond_2

    .line 235
    iput v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 239
    :cond_2
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->onMove(II)Z

    move-result v1

    .line 241
    .local v1, result:Z
    if-nez v1, :cond_3

    .line 242
    iput v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 244
    :cond_3
    iput p1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 245
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_0

    .line 246
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 3
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 254
    sget-boolean v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "GroupCursor"

    const-string v1, "============================================"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "GroupCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMove ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), onMove mListViewPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMailGroupDataList.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    iput p2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mUIPosition:I

    .line 260
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->reportActualListViewPosition(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    .line 263
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    iget-object v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMailGroupDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mRemovedItemContainer:Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;

    iget v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mCursorPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/database/ConversationGroupCursor$RemovedItemContainer;->reportActuralGroupHeadRealPosition(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupHeadRealPosition:I

    .line 266
    sget-boolean v0, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "GroupCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMove mGroupHeadRealPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupHeadRealPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mGroupHeadRealPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareIdToPosMap()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setMessageStatusDelete(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 4
    .parameter "messageStatus"

    .prologue
    .line 736
    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {p1}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->getIdList()[J

    move-result-object v1

    .line 738
    .local v1, mailMessages:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 739
    aget-wide v2, v1, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/database/ConversationGroupCursor;->delete(J)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    .end local v0           #i:I
    .end local v1           #mailMessages:[J
    :cond_0
    return-void
.end method

.method public setMessageStatusRead(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 0
    .parameter "messageStatus"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mReadStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 747
    return-void
.end method

.method public setOnChildElementDeleteListener(Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mChildElementDeleteListener:Lcom/htc/android/mail/database/ConversationGroupCursor$onChildElementDeleteListener;

    .line 986
    return-void
.end method

.method public updateReadStatus(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 10
    .parameter "readStatusMap"

    .prologue
    const/4 v6, 0x0

    .line 876
    invoke-virtual {p1}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->getIdList()[J

    move-result-object v4

    .line 878
    .local v4, readStatusMsgIds:[J
    array-length v5, v4

    .line 880
    .local v5, sizeOfReadStatusInCacheData:I
    sget-boolean v7, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 881
    const-string v7, "GroupCursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateReadStatus sizeOfReadStatusInCacheData: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v7, "GroupCursor"

    const-string v8, "-------------------------------------------------------------"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 886
    aget-wide v2, v4, v1

    .line 887
    .local v2, messageId:J
    sget-boolean v7, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 888
    const-string v7, "GroupCursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messageId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/database/ConversationGroupCursor;->mMessageDeletedPool:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v7, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_3

    const/4 v0, 0x1

    .line 891
    .local v0, inDeletedPool:Z
    :goto_1
    if-nez v0, :cond_4

    .line 892
    invoke-direct {p0, v2, v3, p1, v6}, Lcom/htc/android/mail/database/ConversationGroupCursor;->updateReadStatusByMessageId(JLcom/htc/android/mail/AbsRequestController$MessageStatus;Z)V

    .line 885
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #inDeletedPool:Z
    :cond_3
    move v0, v6

    .line 890
    goto :goto_1

    .line 894
    .restart local v0       #inDeletedPool:Z
    :cond_4
    sget-boolean v7, Lcom/htc/android/mail/database/ConversationGroupCursor;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 895
    const-string v7, "GroupCursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messageId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already in deleted poll, skipping it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 907
    .end local v0           #inDeletedPool:Z
    .end local v2           #messageId:J
    :cond_5
    return-void
.end method
