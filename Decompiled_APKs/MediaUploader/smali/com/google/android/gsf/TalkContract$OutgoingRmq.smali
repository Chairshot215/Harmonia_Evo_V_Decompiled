.class public final Lcom/google/android/gsf/TalkContract$OutgoingRmq;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$OutgoingRmqColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutgoingRmq"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "rmq_id ASC"

.field private static RMQ_ID_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2000
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    .line 2036
    const-string v0, "content://com.google.android.providers.talk/outgoingRmqMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    .line 2042
    const-string v0, "content://com.google.android.providers.talk/outgoingHighestRmqId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queryHighestRmqId(Landroid/content/ContentResolver;)J
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2012
    sget-object v1, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI_FOR_HIGHEST_RMQ_ID:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->RMQ_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2019
    const-wide/16 v1, 0x0

    .line 2023
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2024
    const-string v1, "rmq_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 2027
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2030
    return-wide v1

    .line 2027
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
