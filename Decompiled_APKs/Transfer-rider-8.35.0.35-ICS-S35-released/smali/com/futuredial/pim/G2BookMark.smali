.class public Lcom/futuredial/pim/G2BookMark;
.super Lcom/futuredial/pim/CPim;
.source "G2BookMark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/G2BookMark$ReadBookmark;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "G2BookMark"


# instance fields
.field private rdBookmark:Lcom/futuredial/pim/G2BookMark$ReadBookmark;

.field uri_bookmark:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/futuredial/pim/CPim;-><init>(Landroid/content/Context;)V

    .line 26
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark;->uri_bookmark:Landroid/net/Uri;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark;->rdBookmark:Lcom/futuredial/pim/G2BookMark$ReadBookmark;

    .line 32
    return-void
.end method


# virtual methods
.method public DeleteAll()I
    .locals 6

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/pim/G2BookMark;->cr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v4, "created=1287111783159"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/futuredial/pim/SqliteWrapper;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "G2BookMark"

    const-string v3, "DeleteBookmarks Exception."

    invoke-static {v2, v3, v0}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public InitRead()I
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;

    invoke-direct {v0, p0}, Lcom/futuredial/pim/G2BookMark$ReadBookmark;-><init>(Lcom/futuredial/pim/G2BookMark;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark;->rdBookmark:Lcom/futuredial/pim/G2BookMark$ReadBookmark;

    .line 222
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->rdBookmark:Lcom/futuredial/pim/G2BookMark$ReadBookmark;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->InitRead()I

    move-result v0

    return v0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->rdBookmark:Lcom/futuredial/pim/G2BookMark$ReadBookmark;

    invoke-virtual {v0, p1}, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->ReadItem(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->rdBookmark:Lcom/futuredial/pim/G2BookMark$ReadBookmark;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->UnInitRead()I

    move-result v0

    return v0
.end method

.method public addnewItem(Lcom/futuredial/publicobj/Item;Z)I
    .locals 9
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    const/4 v8, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, nRet:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v1, bmValues:Landroid/content/ContentValues;
    iget-object v6, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 108
    .local v2, enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 110
    .local v5, nfldID:Ljava/lang/Integer;
    iget-object v6, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 111
    .local v3, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 115
    const-string v7, "title"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/publicobj/Field;

    iget-object v6, v6, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 118
    const-string v7, "url"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/publicobj/Field;

    iget-object v6, v6, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    goto :goto_0

    .line 125
    .end local v3           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v5           #nfldID:Ljava/lang/Integer;
    :cond_3
    const-string v6, "created"

    const-wide v7, 0x12badd732f7L

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string v6, "bookmark"

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark;->cr:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, bmUri:Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 130
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark;->WrittenUri:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_1
    return v4

    .line 134
    :cond_4
    const-string v6, "G2BookMark"

    const-string v7, "INSERT ENVETN FAILED!"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/16 v4, 0x4e33

    goto :goto_1
.end method

.method public getCounts()I
    .locals 9

    .prologue
    .line 44
    const/4 v6, 0x0

    .line 45
    .local v6, count:I
    const/4 v7, 0x0

    .line 48
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "created=1287111783159"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 49
    if-eqz v7, :cond_0

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    const-string v0, "[bookmark query]"

    const-string v1, "bookmark count:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v6

    .line 54
    :catch_0
    move-exception v8

    .line 56
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2BookMark"

    const-string v1, "Bookmark Counts Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getInstance(Landroid/content/Context;)Lcom/futuredial/pim/G2BookMark;
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->m_pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2BookMark;

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/futuredial/pim/G2BookMark;

    invoke-direct {v0, p1}, Lcom/futuredial/pim/G2BookMark;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark;->m_pim:Lcom/futuredial/pim/CPim;

    .line 38
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2BookMark;

    goto :goto_0
.end method

.method public getPhoneMemCounts()I
    .locals 9

    .prologue
    .line 70
    const/4 v6, 0x0

    .line 71
    .local v6, Count:I
    const/4 v7, 0x0

    .line 74
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "bookmark=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    const-string v0, "[bookmark query]"

    const-string v1, "bookmark count in phonememory:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v6

    .line 78
    :catch_0
    move-exception v8

    .line 80
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Bookmark"

    const-string v1, "InquireBookmarkNumbers Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
