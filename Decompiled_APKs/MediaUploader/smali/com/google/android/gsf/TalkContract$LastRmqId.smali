.class public final Lcom/google/android/gsf/TalkContract$LastRmqId;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$LastRmqIdColumns;


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
    .line 2064
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$LastRmqId;->PROJECTION:[Ljava/lang/String;

    .line 2117
    const-string v0, "content://com.google.android.providers.talk/lastRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queryLastRmqId(Landroid/content/ContentResolver;)J
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2077
    sget-object v1, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$LastRmqId;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2084
    const-wide/16 v1, 0x0

    .line 2086
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2087
    const-string v1, "rmq_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2090
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2093
    return-wide v1

    .line 2090
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static final saveLastRmqId(Landroid/content/ContentResolver;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2109
    const-string v1, "_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2110
    const-string v1, "rmq_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2111
    sget-object v1, Lcom/google/android/gsf/TalkContract$LastRmqId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2112
    return-void
.end method
