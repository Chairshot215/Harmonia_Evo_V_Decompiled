.class public Lcom/google/android/gm/utils/OutgoingMsgPrefs;
.super Ljava/lang/Object;
.source "OutgoingMsgPrefs.java"


# static fields
.field public static ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static VALUE_COL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "value"

    sput-object v0, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->VALUE_COL:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateDisplayName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "entry"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ensurePrefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, prefs:[Ljava/lang/String;
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 58
    sget-object v1, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public static addOrUpdateReplyTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "entry"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ensurePrefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, prefs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 47
    sget-object v1, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private static ensurePrefs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 32
    sget-object v1, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 34
    .local v0, prefs:[Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 35
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 37
    :cond_0
    return-object v0

    .line 32
    .end local v0           #prefs:[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static instantiateOutgoingPrefs(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 6
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 109
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    .line 111
    .local v0, entry:[Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    sget-object v5, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->VALUE_COL:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 113
    .local v4, valueCol:I
    const-string v5, "name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 115
    .local v3, typeCol:I
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, type:Ljava/lang/String;
    const/4 v1, -0x1

    .line 117
    .local v1, index:I
    const-string v5, "sx_rt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    const/4 v1, 0x0

    .line 122
    :cond_1
    :goto_0
    if-ltz v1, :cond_2

    .line 123
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 125
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    sget-object v5, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->ACCOUNT_OUTGOING_PREFS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v1           #index:I
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #typeCol:I
    .end local v4           #valueCol:I
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 131
    return-void

    .line 119
    .restart local v1       #index:I
    .restart local v2       #type:Ljava/lang/String;
    .restart local v3       #typeCol:I
    .restart local v4       #valueCol:I
    :cond_4
    :try_start_1
    const-string v5, "sx_dn"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    .line 129
    .end local v1           #index:I
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #typeCol:I
    .end local v4           #valueCol:I
    :catchall_0
    move-exception v5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v5
.end method
