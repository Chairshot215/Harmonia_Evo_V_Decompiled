.class public final Landroid/net/Downloads$ByUri;
.super Landroid/net/Downloads$DownloadBase;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByUri"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_WHERE_APP_DATA_CLAUSE:Ljava/lang/String; = "entity=?"

.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "total_bytes"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/Downloads$DownloadBase;-><init>()V

    return-void
.end method

.method private static final getCurrentOtaDownloads(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/net/Downloads;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "entity=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getProgressColumnCurrentBytes()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final getProgressColumnId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final getProgressColumnTotalBytes()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final getProgressCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getStatus(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Downloads$StatusInfo;
    .locals 11

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1}, Landroid/net/Downloads$ByUri;->getCurrentOtaDownloads(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v6

    :goto_0
    if-eqz v0, :cond_6

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v7, :cond_8

    new-instance v6, Landroid/net/Downloads$StatusInfo;

    invoke-direct {v6}, Landroid/net/Downloads$StatusInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    #calls: Landroid/net/Downloads;->getStatusOfDownload(Landroid/database/Cursor;J)I
    invoke-static {v0, p2, p3}, Landroid/net/Downloads;->access$100(Landroid/database/Cursor;J)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v6, Landroid/net/Downloads$StatusInfo;->completed:Z

    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/Downloads$StatusInfo;->filename:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/net/Downloads$StatusInfo;->id:J

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Landroid/net/Downloads$StatusInfo;->statusCode:I

    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v6

    :goto_3
    return-object v7

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    :try_start_2
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-eqz v3, :cond_4

    cmp-long v9, v4, v1

    if-gez v9, :cond_4

    move-object v7, v6

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    move-wide v1, v4

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v6, Landroid/net/Downloads$StatusInfo;->statusCode:I

    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v6, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v6

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v6, v7

    :goto_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v6, v7

    goto :goto_3

    :catchall_1
    move-exception v9

    goto :goto_4

    :cond_8
    move-object v6, v7

    goto :goto_1
.end method

.method public static final removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notificationpackage=? AND notificationclass=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
