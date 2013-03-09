.class public final Lcom/google/android/gsf/TalkContract$OutgoingRmq;
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
    name = "OutgoingRmq"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

.field private static RMQ_ID_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2426
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    .line 2462
    const-string v0, "content://com.google.android.providers.talk/outgoingRmqMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    .line 2468
    const-string v0, "content://com.google.android.providers.talk/outgoingHighestRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queryHighestRmqId(Landroid/content/ContentResolver;)J
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 2438
    sget-object v1, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2445
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 2449
    .local v7, retVal:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2450
    const-string v0, "rmq_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 2453
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2456
    return-wide v7

    .line 2453
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
