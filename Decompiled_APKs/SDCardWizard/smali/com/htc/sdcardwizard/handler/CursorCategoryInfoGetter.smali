.class final Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;
.super Ljava/lang/Object;
.source "CursorCategoryInfoGetter.java"

# interfaces
.implements Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;


# static fields
.field private static final DEFAULT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LSCW/CursorCategoryInfoGetter"


# instance fields
.field private final projection:[Ljava/lang/String;

.field private final resolver:Landroid/content/ContentResolver;

.field private final selection:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SIZE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->DEFAULT_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "countColumnName"
    .parameter "sizeColumnName"
    .parameter "selection"

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->resolver:Landroid/content/ContentResolver;

    .line 38
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->uri:Landroid/net/Uri;

    .line 39
    iput-object p3, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->projection:[Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->selection:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 19
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->DEFAULT_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public get()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 11

    .prologue
    .line 45
    const/4 v6, 0x0

    .line 46
    .local v6, count:I
    const-wide/16 v9, 0x0

    .line 48
    .local v9, size:J
    const/4 v7, 0x0

    .line 50
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->projection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->selection:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    if-eqz v7, :cond_0

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->projection:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 54
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;->projection:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 60
    :cond_0
    if-eqz v7, :cond_1

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_1
    :goto_0
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-direct {v0, v6, v9, v10}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v0

    .line 57
    :catch_0
    move-exception v8

    .line 58
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "LSCW/CursorCategoryInfoGetter"

    const-string v1, "Couldn\'t get info"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    if-eqz v7, :cond_1

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 60
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
