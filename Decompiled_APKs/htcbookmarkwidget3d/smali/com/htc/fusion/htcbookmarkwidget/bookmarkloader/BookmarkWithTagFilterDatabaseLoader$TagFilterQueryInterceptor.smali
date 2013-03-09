.class Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;
.super Ljava/lang/Object;
.source "BookmarkWithTagFilterDatabaseLoader.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagFilterQueryInterceptor"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visits"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V
    .locals 0
    .parameter "cr"
    .parameter "tags"

    .prologue
    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->mContentResolver:Landroid/content/ContentResolver;

    .line 249
    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 250
    return-void
.end method

.method private getTags()[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->mTags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    return-object v0
.end method


# virtual methods
.method public query()Landroid/database/Cursor;
    .locals 17

    .prologue
    .line 266
    const/4 v12, 0x0

    .line 268
    .local v12, tagCursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 271
    .local v10, includeBookmarkWithoutTag:Z
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v15, tagNames:Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->getTags()[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    move-result-object v16

    .line 273
    .local v16, tags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v7, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v1, v0

    if-lez v1, :cond_3

    .line 275
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v9, v1, :cond_5

    .line 276
    aget-object v1, v16, v9

    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;->getName()Ljava/lang/String;

    move-result-object v14

    .line 278
    .local v14, tagName:Ljava/lang/String;
    const-string v1, "tag_name_of_bookmarks_without_tags"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const/4 v10, 0x1

    .line 275
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 284
    const-string v1, "OR"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    const-string v1, "("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, "name"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " = ?)"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    aget-object v1, v16, v9

    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 358
    .end local v7           #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v14           #tagName:Ljava/lang/String;
    .end local v15           #tagNames:Ljava/lang/StringBuilder;
    .end local v16           #tags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_2

    .line 359
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 294
    .restart local v7       #args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #tagNames:Ljava/lang/StringBuilder;
    .restart local v16       #tags:[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    :cond_3
    const/4 v8, 0x0

    .line 358
    if-eqz v12, :cond_4

    .line 359
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-object v8

    .line 297
    .restart local v9       #i:I
    :cond_5
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v13, tagIdWhere:Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/fusion/htcbookmarkwidget/Constants;->TAGS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 307
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 309
    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 310
    const-string v1, "OR"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_7
    const-string v1, "("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, "t_id"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, " = "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 322
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v11, rawQuery:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 324
    const-string v1, "SELECT bookmarks._id, bookmarks.title, bookmarks.url, bookmarks.favicon, bookmarks.created FROM bookmarks JOIN bookmark_tag ON (bookmarks._id = bookmark_tag.b_id) AND ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ") WHERE bookmarks.bookmark = 1 GROUP BY bookmarks._id"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_9
    if-eqz v10, :cond_b

    .line 330
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 331
    const-string v1, " UNION "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_a
    const-string v1, "SELECT bookmarks._id, bookmarks.title, bookmarks.url, bookmarks.favicon, bookmarks.created FROM bookmarks WHERE bookmarks.bookmark = 1 AND bookmarks._id NOT IN (SELECT bookmarks._id FROM bookmarks JOIN bookmark_tag ON bookmarks._id = bookmark_tag.b_id)"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 337
    const-string v1, " ORDER BY bookmarks.created DESC"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 344
    .local v4, rawQueryString:Ljava/lang/String;
    const/4 v8, 0x0

    .line 347
    .local v8, c:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$TagFilterQueryInterceptor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/fusion/htcbookmarkwidget/Constants;->RAWCONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 358
    :goto_3
    if-eqz v12, :cond_4

    .line 359
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 353
    :catch_0
    move-exception v1

    goto :goto_3
.end method
