.class Lcom/google/android/gm/provider/MailCore;
.super Ljava/lang/Object;
.source "MailCore.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailCoreLabelAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailCore$Label;,
        Lcom/google/android/gm/provider/MailCore$NotificationRequest;,
        Lcom/google/android/gm/provider/MailCore$Listener;
    }
.end annotation


# static fields
.field private static final FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_SYNCED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_UNSYNCED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static NO_COUNT_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TOTAL_COUNT_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultSystemLabelOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCanonicalNameToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationHelper:Lcom/google/android/gm/provider/ConversationUtil;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mIdToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            ">;"
        }
    .end annotation
.end field

.field mLabelIdsIncludedOrPartial:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

.field final mListener:Lcom/google/android/gm/provider/MailCore$Listener;

.field private mNextLocalLabelId:J

.field private mNextServerLabelId:J

.field mNotificationRequests:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/MailCore$NotificationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperations:Lcom/google/android/gm/provider/Operations;

.field mServerVersion:J

.field private final mUserGmailPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    .line 649
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "^r"

    aput-object v1, v0, v3

    const-string v1, "^^out"

    aput-object v1, v0, v4

    const-string v1, "^s"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->TOTAL_COUNT_LABELS:Ljava/util/Set;

    .line 653
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^f"

    aput-object v1, v0, v3

    const-string v1, "^t"

    aput-object v1, v0, v4

    const-string v1, "^b"

    aput-object v1, v0, v5

    const-string v1, "^all"

    aput-object v1, v0, v6

    const-string v1, "^k"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "^io_im"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->NO_COUNT_LABELS:Ljava/util/Set;

    .line 658
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^^out"

    aput-object v1, v0, v3

    const-string v1, "^r"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_SYNCED_LABELS:Ljava/util/Set;

    .line 661
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "^f"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    .line 664
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "^all"

    aput-object v1, v0, v3

    const-string v1, "^b"

    aput-object v1, v0, v4

    const-string v1, "^s"

    aput-object v1, v0, v5

    const-string v1, "^k"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_UNSYNCED_LABELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Operations;Lcom/google/android/gm/provider/MailCore$Listener;)V
    .locals 10
    .parameter "context"
    .parameter "db"
    .parameter "operations"
    .parameter "listener"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    .line 532
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    .line 533
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    .line 534
    iput-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    .line 535
    iput-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J

    .line 167
    iput-object p2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    iput-object p3, p0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    .line 169
    iput-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/Collection;

    .line 170
    iput-object p4, p0, Lcom/google/android/gm/provider/MailCore;->mListener:Lcom/google/android/gm/provider/MailCore$Listener;

    .line 173
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailCore;->loadGmailPreferences()V

    .line 175
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const/4 v0, 0x1

    const-string v1, "canonicalName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "numConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "numUnreadConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "color"

    aput-object v1, v2, v0

    .line 183
    .local v2, labelsProjection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "labels"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 186
    .local v8, labelsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 191
    new-instance v0, Lcom/google/android/gm/provider/ConversationUtil;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gm/provider/ConversationUtil;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mConversationHelper:Lcom/google/android/gm/provider/ConversationUtil;

    .line 192
    return-void
.end method

.method private addLabel(J)V
    .locals 6
    .parameter "labelId"

    .prologue
    const/4 v5, 0x0

    .line 788
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be in transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 791
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 792
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onLabelsChanged not yet called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 795
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 796
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "canonicalName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v1, "numConversations"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const-string v1, "numUnreadConversations"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v1, "color"

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v1, "visibility"

    const-string v2, "SHOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 803
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 804
    return-void
.end method

.method private addLabel(Ljava/lang/String;)V
    .locals 11
    .parameter "canonicalName"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x0

    .line 751
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 752
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must be in transaction"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 754
    :cond_0
    iget-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 755
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onLabelsChanged not yet called"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 758
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 759
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "canonicalName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v4, "name"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v4, "numConversations"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string v4, "numUnreadConversations"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v4, "color"

    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    const-string v4, "visibility"

    const-string v5, "SHOW"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, p1, v3}, Lcom/google/android/gm/provider/MailCore;->adjustContentValuesForSystemLabel(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 769
    invoke-static {p1}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 770
    iget-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J

    sub-long v6, v4, v9

    iput-wide v6, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 776
    .local v2, labelId:Ljava/lang/Long;
    :goto_0
    const-string v4, "_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 777
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "labels"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 778
    .local v0, id:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    .line 779
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row for label: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 771
    .end local v0           #id:J
    .end local v2           #labelId:Ljava/lang/Long;
    :cond_2
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->PRIORITY_MARKERS:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 772
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    invoke-interface {v4}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .restart local v2       #labelId:Ljava/lang/Long;
    goto :goto_0

    .line 774
    .end local v2           #labelId:Ljava/lang/Long;
    :cond_3
    iget-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    add-long v6, v4, v9

    iput-wide v6, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .restart local v2       #labelId:Ljava/lang/Long;
    goto :goto_0

    .line 781
    .restart local v0       #id:J
    :cond_4
    return-void
.end method

.method private adjustContentValuesForSystemLabel(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "canonicalName"
    .parameter "values"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 671
    const-string v1, "^"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 672
    .local v0, isSystemLabel:Z
    const-string v4, "systemLabel"

    if-eqz v0, :cond_a

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailCore;->initSystemLabelMap()V

    .line 676
    sget-object v1, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    const-string v4, "systemLabelOrder"

    sget-object v1, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    :cond_0
    if-eqz v0, :cond_1

    .line 683
    const-string v4, "hidden"

    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getSortedUserMeaningfulSystemLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 687
    :cond_1
    const-string v1, "^io_im"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "^iim"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 691
    :cond_2
    const-string v1, "hidden"

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->getInfoOverloadEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v2

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 695
    :cond_4
    sget-object v1, Lcom/google/android/gm/provider/MailCore;->NO_COUNT_LABELS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 700
    const-string v1, "labelCountDisplayBehavior"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    :cond_5
    sget-object v1, Lcom/google/android/gm/provider/MailCore;->TOTAL_COUNT_LABELS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 709
    const-string v1, "labelCountDisplayBehavior"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    :cond_6
    sget-object v1, Lcom/google/android/gm/provider/MailCore;->FORCED_SYNCED_LABELS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 718
    const-string v1, "labelSyncPolicy"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    :cond_7
    sget-object v1, Lcom/google/android/gm/provider/MailCore;->FORCED_UNSYNCED_LABELS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 727
    const-string v1, "labelSyncPolicy"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    :cond_8
    sget-object v1, Lcom/google/android/gm/provider/MailCore;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 737
    const-string v1, "labelSyncPolicy"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    :cond_9
    return-void

    :cond_a
    move v1, v3

    .line 672
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 683
    goto/16 :goto_1
.end method

.method static changeLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1198
    const-string v1, "UPDATE labels SET _id = ? WHERE _id = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    const-string v1, "UPDATE message_labels SET labels_id = ? WHERE labels_id = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
    const-string v1, "UPDATE conversation_labels SET labels_id = ? WHERE labels_id = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/Operations;->updateLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE conversations SET labelIds = REPLACE(labelIds, \',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\', \',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public static correctLocalLabelIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1161
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "canonicalName"

    aput-object v0, v2, v4

    .line 1164
    .local v2, labelsProjection:[Ljava/lang/String;
    const-string v1, "labels"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1167
    .local v11, labelsCursor:Landroid/database/Cursor;
    const-wide/16 v12, -0x1

    .line 1168
    .local v12, lowestLocalLabelId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1170
    .local v9, labelId:J
    invoke-static {v9, v10}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_0

    .line 1175
    .end local v9           #labelId:J
    :cond_1
    const/4 v0, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1177
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1178
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1179
    .restart local v9       #labelId:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1180
    .local v8, canonicalLabelName:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v9, v10}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1181
    const-wide/16 v0, 0x1

    sub-long/2addr v12, v0

    invoke-static {p0, v9, v10, v12, v13}, Lcom/google/android/gm/provider/MailCore;->changeLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1185
    .end local v8           #canonicalLabelName:Ljava/lang/String;
    .end local v9           #labelId:J
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1187
    return-void
.end method

.method private initSystemLabelMap()V
    .locals 3

    .prologue
    .line 632
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 633
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    .line 634
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^i"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^iim"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^t"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^io_im"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^b"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^f"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^^out"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^r"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^all"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^s"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^k"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_0
    return-void
.end method

.method public static isCanonicalLabelNameLocal(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1215
    const-string v0, "^^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLabelIdLocal(J)Z
    .locals 2
    .parameter "labelId"

    .prologue
    .line 1208
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadGmailPreferences()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v14, 0x0

    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "info_overload"

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "enabled_pref"

    aput-object v4, v2, v14

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 332
    .local v12, preferenceCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 333
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v1, "sx_ioe"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "server_preferences"

    new-array v6, v8, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v6, v14

    const-string v7, "name = ?"

    new-array v8, v8, [Ljava/lang/String;

    const-string v0, "bx_ioao"

    aput-object v0, v8, v14

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 343
    .local v13, priorityMarkers:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 344
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v1, "bx_ioao"

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_3
    return-void
.end method

.method private setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 10
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 376
    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 378
    return-void
.end method

.method private setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V
    .locals 19
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"
    .parameter "updateMessageIfNecessary"

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdUnread()J

    move-result-wide v15

    .line 387
    .local v15, labelIdUnread:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdStarred()J

    move-result-wide v13

    .line 389
    .local v13, labelIdStarred:J
    if-eqz p7, :cond_5

    .line 395
    cmp-long v2, v15, p5

    if-nez v2, :cond_1

    const-string v18, "UPDATE conversations SET labelIds = ? || REPLACE(labelIds, ?, ?), forceAllUnread = 1 WHERE queryId != 0 AND _id = ?"

    .line 399
    .local v18, statement:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    cmp-long v2, v13, p5

    if-nez v2, :cond_2

    .line 404
    if-eqz p9, :cond_0

    .line 405
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 457
    :cond_0
    :goto_1
    return-void

    .line 395
    .end local v18           #statement:Ljava/lang/String;
    :cond_1
    const-string v18, "UPDATE conversations SET labelIds = ? || REPLACE(labelIds, ?, ?) WHERE queryId != 0 AND _id = ?"

    goto :goto_0

    .line 412
    .restart local v18       #statement:Ljava/lang/String;
    :cond_2
    const-string v17, "SELECT messageId, ?, ? FROM messages WHERE conversation = ? AND messageId <= ?"

    .line 414
    .local v17, selectStatement:Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 415
    .local v12, conversationIdArg:Ljava/lang/String;
    const/4 v2, 0x4

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    const/4 v2, 0x1

    aput-object v12, v11, v2

    const/4 v2, 0x2

    aput-object v12, v11, v2

    const/4 v2, 0x3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 417
    .local v11, bindArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "INSERT or REPLACE INTO message_labels (message_messageId, labels_id, message_conversation) SELECT messageId, ?, ? FROM messages WHERE conversation = ? AND messageId <= ?"

    invoke-virtual {v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    sget-object v2, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    const-string v7, "conversationLabelAdded"

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    .line 427
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdInbox()J

    move-result-wide v2

    cmp-long v2, v2, p5

    if-nez v2, :cond_4

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdIgnored()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto :goto_1

    .line 431
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdIgnored()J

    move-result-wide v2

    cmp-long v2, v2, p5

    if-nez v2, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdInbox()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto :goto_1

    .line 437
    .end local v11           #bindArgs:[Ljava/lang/String;
    .end local v12           #conversationIdArg:Ljava/lang/String;
    .end local v17           #selectStatement:Ljava/lang/String;
    .end local v18           #statement:Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 439
    .restart local v12       #conversationIdArg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "labels_id = ? AND message_labels.message_conversation = ? AND message_labels.message_messageId <= ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    sget-object v2, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_6

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    const-string v7, "conversationLabelRemoved"

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    .line 451
    :cond_6
    cmp-long v2, v15, p5

    if-nez v2, :cond_7

    const-string v18, "UPDATE conversations SET labelIds = REPLACE(labelIds, ?, ?), forceAllUnread = 0 WHERE queryId != 0 AND _id = ?"

    .line 455
    .restart local v18       #statement:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 451
    .end local v18           #statement:Ljava/lang/String;
    :cond_7
    const-string v18, "UPDATE conversations SET labelIds = REPLACE(labelIds, ?, ?) WHERE queryId != 0 AND _id = ?"

    goto :goto_2
.end method

.method private setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 8
    .parameter "messageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 242
    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 244
    return-void
.end method

.method private setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V
    .locals 21
    .parameter "messageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"
    .parameter "updateConversationIfNecessary"

    .prologue
    .line 249
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/provider/MailCore;->queryConversationIdForMessageId(J)J

    move-result-wide v4

    .line 251
    .local v4, conversationId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdStarred()J

    move-result-wide v16

    .line 253
    .local v16, labelIdStarred:J
    if-eqz p5, :cond_2

    .line 256
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v20, values:Landroid/content/ContentValues;
    const-string v3, "labels_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v3, "message_messageId"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    const-string v3, "message_conversation"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "message_labels"

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v8, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 262
    sget-object v3, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p6

    if-ne v0, v3, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    const-string v8, "messageLabelAdded"

    move-wide/from16 v6, p1

    move-wide/from16 v9, p3

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    .line 277
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    cmp-long v3, v16, p3

    if-nez v3, :cond_1

    if-eqz p7, :cond_1

    .line 279
    const-wide/16 v6, 0x0

    .line 280
    .local v6, maxMessageId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = 0 LIMIT 1"

    invoke-virtual {v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 283
    .local v19, statement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 285
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 292
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 295
    if-eqz p5, :cond_3

    .line 297
    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 320
    .end local v6           #maxMessageId:J
    .end local v19           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :goto_1
    return-void

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "message_labels"

    const-string v9, "labels_id = ? AND message_messageId = ?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    sget-object v3, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p6

    if-ne v0, v3, :cond_0

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    const-string v8, "messageLabelRemoved"

    move-wide/from16 v6, p1

    move-wide/from16 v9, p3

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    goto :goto_0

    .line 286
    .restart local v6       #maxMessageId:J
    .restart local v19       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v15

    .line 292
    .local v15, e:Landroid/database/sqlite/SQLiteDoneException;
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .end local v15           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v3

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3

    .line 301
    :cond_3
    const-wide/16 v13, 0x0

    .line 302
    .local v13, countMessage:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT COUNT(*) FROM message_labels WHERE labels_id = ? AND message_conversation = ?"

    invoke-virtual {v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v18

    .line 306
    .local v18, messageLabelCount:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 307
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 308
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v13

    .line 310
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 313
    const-wide/16 v8, 0x0

    cmp-long v3, v13, v8

    if-nez v3, :cond_1

    .line 315
    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    goto :goto_1

    .line 310
    :catchall_1
    move-exception v3

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3
.end method


# virtual methods
.method public deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 4
    .parameter "label"

    .prologue
    .line 830
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be in transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 835
    .local v0, labelIdSelectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message_labels"

    const-string v3, "labels_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 836
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 837
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversation_labels"

    const-string v3, "labels_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    iget-wide v2, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForLabelId(J)V

    .line 839
    return-void
.end method

.method public expungeMessagesWithoutWritingOperations(JLjava/util/List;)V
    .locals 5
    .parameter "conversationId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p3, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-string v2, ", "

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, joinedMessageIds:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 224
    .local v0, bindArgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "message_messageId IN (?)"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v2, p3}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForMessageIds(Ljava/util/List;)V

    .line 228
    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    const-string v4, "messageId IN (?)"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public declared-synchronized getAllLabels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfoOverloadArrowsEnabled()Z
    .locals 3

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v2, "bx_ioao"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1119
    .local v0, infoOverloadArrowsOffPrefValue:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInfoOverloadEnabled()Z
    .locals 3

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v2, "sx_ioe"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1110
    .local v0, infoOverloadEnabledPrefValue:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 1
    .parameter "label"

    .prologue
    .line 623
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 624
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 2
    .parameter "label"

    .prologue
    .line 617
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    return-object v0
.end method

.method public declared-synchronized getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "canonicalName"

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 4
    .parameter "labelId"

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;

    .line 606
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown label id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .end local v0           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 607
    .restart local v0       #label:Lcom/google/android/gm/provider/MailCore$Label;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 4
    .parameter "canonicalName"

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;

    .line 554
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v0, :cond_0

    .line 555
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find label with canonical name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .end local v0           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 558
    .restart local v0       #label:Lcom/google/android/gm/provider/MailCore$Label;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public getNotificationRequests()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/MailCore$NotificationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/Collection;

    return-object v0
.end method

.method public getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter "labelId"

    .prologue
    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 589
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 592
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->addLabel(J)V

    .line 593
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 594
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 595
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 600
    :cond_0
    return-object v0

    .line 597
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter "canonicalName"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 568
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 571
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailCore;->addLabel(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 573
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 574
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 579
    :cond_0
    return-object v0

    .line 576
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 1
    .parameter "conversationId"
    .parameter "rationale"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mConversationHelper:Lcom/google/android/gm/provider/ConversationUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/provider/ConversationUtil;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 482
    return-void
.end method

.method onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V
    .locals 6
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "updateSynced"
    .parameter "messageLabelChange"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mConversationHelper:Lcom/google/android/gm/provider/ConversationUtil;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/ConversationUtil;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 500
    return-void
.end method

.method public declared-synchronized onLabelsChanged()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1

    .line 1123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1125
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1126
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1127
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 1129
    const-wide/16 v4, 0x0

    .line 1130
    const-wide/16 v2, -0x1

    .line 1132
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getQueryMap()Landroid/content/ContentQueryMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    new-instance v9, Lcom/google/android/gm/provider/MailCore$Label;

    invoke-direct {v9, v7, v8, v0}, Lcom/google/android/gm/provider/MailCore$Label;-><init>(JLjava/lang/String;)V

    .line 1136
    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v1

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v10

    if-eq v1, v10, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not clear whether label is local: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    iget-object v1, v9, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    cmp-long v0, v7, v4

    if-lez v0, :cond_2

    iget-wide v0, v9, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-wide v4, v0

    .line 1144
    :cond_2
    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, v7, v2

    if-gez v0, :cond_4

    .line 1145
    iget-wide v0, v9, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    :goto_1
    move-wide v2, v0

    .line 1147
    goto/16 :goto_0

    .line 1149
    :cond_3
    add-long v0, v4, v11

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    .line 1150
    sub-long v0, v2, v11

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    monitor-exit p0

    return-void

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public purgeConversation(J)Z
    .locals 9
    .parameter "conversationId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 512
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 513
    .local v1, queryArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "conversation_labels"

    const-string v7, "conversation_id = ? AND queryId = 0"

    invoke-virtual {v5, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 515
    iget-object v5, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "conversations"

    const-string v7, "_id = ? AND queryId = 0"

    invoke-virtual {v5, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    iget-object v5, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "message_labels"

    const-string v7, "message_conversation = ?"

    invoke-virtual {v5, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    iget-object v5, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "messages"

    const-string v7, "conversation = ? AND queryId = 0"

    invoke-virtual {v5, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, count:I
    const-string v5, "Gmail"

    const-string v6, "Purged %d messages in conversation %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 523
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 524
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "status"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    iget-object v5, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "attachments"

    const-string v7, "messages_conversation = ?"

    invoke-virtual {v5, v6, v2, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 527
    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public queryConversationIdForMessageId(J)J
    .locals 4
    .parameter "messageId"

    .prologue
    .line 461
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 462
    .local v0, bindArgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select conversation from messages where messageId = ?"

    invoke-static {v2, v3, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 466
    .end local v0           #bindArgs:[Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 464
    :catch_0
    move-exception v1

    .line 466
    .local v1, e:Landroid/database/SQLException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public removeCustomFromPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "linkedAccount"
    .parameter "preferenceName"

    .prologue
    .line 1007
    const-string v1, "/customfrom/"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, account:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/gm/utils/CustomFromUtils;->removeCustomFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "custom_from_prefs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1024
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "label"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "visibility"

    .prologue
    .line 812
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be in transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "canonicalName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v1, "color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 818
    const-string v1, "visibility"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, p2, v0}, Lcom/google/android/gm/provider/MailCore;->adjustContentValuesForSystemLabel(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 822
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method public setConfig([Lcom/google/android/gm/provider/MailCore$Label;[Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 7
    .parameter "labelsIncluded"
    .parameter "labelsPartial"

    .prologue
    .line 207
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    .line 208
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/gm/provider/MailCore$Label;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 209
    .local v2, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-eqz v2, :cond_0

    .line 210
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    iget-wide v5, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v2           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :cond_1
    move-object v0, p2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 214
    .restart local v2       #label:Lcom/google/android/gm/provider/MailCore$Label;
    if-eqz v2, :cond_2

    .line 215
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    iget-wide v5, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    .end local v2           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :cond_3
    return-void
.end method

.method public setCustomFromPreference(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .parameter "account"
    .parameter
    .parameter "isStartSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomFromPreference;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p2, fromPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 975
    if-eqz p3, :cond_0

    .line 978
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "custom_from_prefs"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 979
    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->clearCustomFrom(Ljava/lang/String;)V

    .line 984
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 985
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 986
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v4, "is_default"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->isDefault:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v4, "reply_to"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->replyTo:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "custom_from_prefs"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 993
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    invoke-static {p1, v3}, Lcom/google/android/gm/utils/CustomFromUtils;->addOrUpdateCustomFrom(Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 997
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 995
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 999
    return-void
.end method

.method public setCustomLabelColorPreference(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p2, colorPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 943
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 944
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 945
    .local v2, values:Landroid/content/ContentValues;
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_COLOR_INDEX:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_TEXT_COLOR:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->textColor:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "custom_label_color_prefs"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 955
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    invoke-static {p1, v3, v4}, Lcom/google/android/gm/utils/LabelColorUtils;->addOrUpdateCustomLabelColor(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 960
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 958
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 962
    return-void
.end method

.method public setInfoOverloadArrowsOffPreference(Ljava/lang/String;)V
    .locals 3
    .parameter "infoOverloadArrowsOffPref"

    .prologue
    .line 1096
    const-string v1, "bx_ioao"

    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 1099
    .local v0, serverPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/provider/MailCore;->setServerPreferences(Ljava/lang/String;Ljava/util/Map;)V

    .line 1101
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v2, "bx_ioao"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    return-void
.end method

.method public setInfoOverloadEnabledPreference(Ljava/lang/String;)V
    .locals 5
    .parameter "infoOverloadEnabledPref"

    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1072
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1073
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled_pref"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "info_overload"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1078
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "info_overload"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1082
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v2, "sx_ioe"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1087
    return-void

    .line 1085
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V
    .locals 8
    .parameter "label"
    .parameter "conversations"
    .parameter "unreadConversations"
    .parameter "color"
    .parameter "visibility"

    .prologue
    .line 843
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 844
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "numConversations"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const-string v1, "numUnreadConversations"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v1, "color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v1, "visibility"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 853
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 857
    return-void

    .line 855
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 9
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "label"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 370
    iget-wide v5, p5, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 371
    return-void
.end method

.method public setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 7
    .parameter "messageId"
    .parameter "label"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 237
    iget-wide v3, p3, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-object v0, p0

    move-wide v1, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 238
    return-void
.end method

.method public setLabelsOnMessageWithoutWritingOperations(JLjava/util/Set;)V
    .locals 10
    .parameter "messageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, labelIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "message_labels"

    const-string v2, "message_messageId = ?"

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 362
    .local v3, labelId:J
    sget-object v6, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    goto :goto_0

    .line 365
    .end local v3           #labelId:J
    :cond_0
    return-void
.end method

.method public setNotificationRequests(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/MailCore$NotificationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, notificationRequests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/MailCore$NotificationRequest;>;"
    iput-object p1, p0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/Collection;

    .line 200
    return-void
.end method

.method public setServerPreferences(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p2, serverPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1039
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1040
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v4, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "server_preferences"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1047
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_FROM_DEFAULT_SETTING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1048
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/android/gm/utils/CustomFromUtils;->setReplyFromDefaultAddress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1057
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1049
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "sx_rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->addOrUpdateReplyTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1051
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "sx_dn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1052
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->addOrUpdateDisplayName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1055
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_3
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    iget-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1059
    return-void
.end method

.method public setServerVersion(J)V
    .locals 0
    .parameter "serverVersion"

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/google/android/gm/provider/MailCore;->mServerVersion:J

    .line 196
    return-void
.end method

.method updateLabelsLastTouched(Landroid/content/ContentValues;)I
    .locals 12
    .parameter "lastTouchedMap"

    .prologue
    const/4 v8, 0x0

    .line 867
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 868
    :cond_0
    const-string v9, "Gmail"

    const-string v10, "Attempting to update recent labels with empty or null map: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 927
    :goto_0
    return v8

    .line 880
    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    new-array v0, v9, [Ljava/lang/String;

    .line 881
    .local v0, args:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 882
    .local v8, rows:I
    const/4 v5, 0x0

    .line 883
    .local v5, nArgs:I
    const/4 v3, 0x1

    .line 888
    .local v3, first:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "UPDATE labels SET "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    .local v7, query:Ljava/lang/StringBuilder;
    const-string v9, "lastTouched"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    const-string v9, " = (CASE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v9, "canonicalName"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 895
    .local v2, canonicalNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 896
    .local v1, canonicalName:Ljava/lang/String;
    const-string v9, " WHEN ?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    add-int/lit8 v6, v5, 0x1

    .end local v5           #nArgs:I
    .local v6, nArgs:I
    aput-object v1, v0, v5

    .line 898
    const-string v9, " THEN ?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    add-int/lit8 v5, v6, 0x1

    .end local v6           #nArgs:I
    .restart local v5       #nArgs:I
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v6

    goto :goto_1

    .line 901
    .end local v1           #canonicalName:Ljava/lang/String;
    :cond_2
    const-string v9, " END)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const-string v9, "canonicalName"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const-string v9, " IN ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 908
    .restart local v1       #canonicalName:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 909
    const/4 v3, 0x0

    .line 913
    :goto_3
    const-string v9, "?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    add-int/lit8 v6, v5, 0x1

    .end local v5           #nArgs:I
    .restart local v6       #nArgs:I
    aput-object v1, v0, v5

    move v5, v6

    .end local v6           #nArgs:I
    .restart local v5       #nArgs:I
    goto :goto_2

    .line 911
    :cond_3
    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 916
    .end local v1           #canonicalName:Ljava/lang/String;
    :cond_4
    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    iget-object v9, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 920
    :try_start_0
    iget-object v9, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    iget-object v9, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    const/4 v8, 0x1

    .line 925
    iget-object v9, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method
