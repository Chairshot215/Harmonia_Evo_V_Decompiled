.class public final Lcom/google/android/gsf/TalkContract$LastRmqId;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastRmqId"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2490
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$LastRmqId;->PROJECTION:[Ljava/lang/String;

    .line 2543
    const-string v0, "content://com.google.android.providers.talk/lastRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queryLastRmqId(Landroid/content/ContentResolver;)J
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 2503
    sget-object v1, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$LastRmqId;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2510
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 2512
    .local v7, retVal:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    const-string v0, "rmq_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 2516
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2519
    return-wide v7

    .line 2516
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final saveLastRmqId(Landroid/content/ContentResolver;J)V
    .locals 3
    .parameter "resolver"
    .parameter "rmqId"

    .prologue
    .line 2532
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2535
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2536
    const-string v1, "rmq_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2537
    sget-object v1, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2538
    return-void
.end method
