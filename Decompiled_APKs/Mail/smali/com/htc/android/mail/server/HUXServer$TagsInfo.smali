.class Lcom/htc/android/mail/server/HUXServer$TagsInfo;
.super Ljava/lang/Object;
.source "HUXServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/HUXServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagsInfo"
.end annotation


# instance fields
.field private mCheckedArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

.field private mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2119
    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    .line 2120
    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mCheckedArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/server/HUXServer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/htc/android/mail/server/HUXServer$TagsInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAndUpdate(Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "remoteTag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x1

    .line 2137
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    if-nez v3, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mCheckedArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    iget-wide v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v3

    if-eq v3, v6, :cond_0

    .line 2141
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mCheckedArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    iget-wide v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 2142
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    iget-wide v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2144
    .local v1, localTagName:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2145
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2146
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2147
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    iget-wide v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2148
    const-string v3, "_tagName"

    iget-object v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2150
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    iget-wide v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iget-object v6, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 2154
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2155
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2156
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2157
    .restart local v2       #values:Landroid/content/ContentValues;
    const-string v3, "_tagName"

    iget-object v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2159
    const-string v3, "_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2160
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    iget-wide v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    iget-object v6, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public load(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2123
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    .line 2124
    new-instance v0, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mCheckedArray:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 2125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sTagsURI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "_tagName"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2126
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2127
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2129
    .local v7, id:J
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2130
    .local v9, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/server/HUXServer$TagsInfo;->mTagsSparseArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0, v7, v8, v9}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 2132
    .end local v7           #id:J
    .end local v9           #name:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2134
    :cond_1
    return-void
.end method
