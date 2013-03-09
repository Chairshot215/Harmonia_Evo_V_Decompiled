.class public final Lcom/google/android/gsf/update/net/Downloads$ByUri;
.super Lcom/google/android/gsf/update/net/Downloads$DownloadBase;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByUri"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/update/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/android/gsf/update/net/Downloads$DownloadBase;-><init>()V

    return-void
.end method

.method public static final getProgressColumnCurrentBytes()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public static final getProgressColumnId()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public static final getProgressColumnTotalBytes()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x2

    return v0
.end method

.method public static final getProgressCursor(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 334
    sget-object v0, Lcom/google/android/gsf/update/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 336
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gsf/update/net/Downloads$ByUri;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
