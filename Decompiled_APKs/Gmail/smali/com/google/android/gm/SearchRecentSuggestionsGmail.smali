.class public Lcom/google/android/gm/SearchRecentSuggestionsGmail;
.super Landroid/content/ContentProvider;
.source "SearchRecentSuggestionsGmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/SearchRecentSuggestionsGmail$DatabaseHelper;
    }
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mFullQueryTerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSuggestSuggestionClause:Ljava/lang/String;

.field private mSuggestionProjection:[Ljava/lang/String;

.field private mSuggestionsUri:Landroid/net/Uri;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 65
    return-void
.end method

.method private createProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "selectionArgs"

    .prologue
    .line 232
    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionProjection:[Ljava/lang/String;

    array-length v5, v5

    new-array v2, v5, [Ljava/lang/String;

    .line 234
    .local v2, newProjection:[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mFullQueryTerms:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mFullQueryTerms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    .local v0, fullSize:I
    :goto_0
    if-lez v0, :cond_3

    .line 236
    const-string v4, "\'"

    .line 237
    .local v4, realQuery:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mFullQueryTerms:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_0

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v0           #fullSize:I
    .end local v1           #i:I
    .end local v4           #realQuery:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    .restart local v0       #fullSize:I
    .restart local v1       #i:I
    .restart local v4       #realQuery:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \' || query AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "suggest_intent_query"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .end local v1           #i:I
    .end local v4           #realQuery:Ljava/lang/String;
    .local v3, queryAs:Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionProjection:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 248
    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionProjection:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v2, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    .end local v1           #i:I
    .end local v3           #queryAs:Ljava/lang/String;
    :cond_3
    const-string v3, "query AS suggest_intent_query"

    .restart local v3       #queryAs:Ljava/lang/String;
    goto :goto_2

    .line 251
    .restart local v1       #i:I
    :cond_4
    iget-object v5, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionProjection:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aput-object v3, v2, v5

    .line 252
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 137
    iget-object v4, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 139
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 140
    .local v3, length:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 141
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, base:Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, count:I
    const-string v4, "suggestions"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    const-string v4, "suggestions"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 152
    return v1

    .line 149
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 161
    iget-object v2, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 162
    const-string v2, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 171
    :goto_0
    return-object v2

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    .local v1, length:I
    if-lt v1, v4, :cond_2

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, base:Ljava/lang/String;
    const-string v2, "suggestions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    if-ne v1, v4, :cond_1

    .line 169
    const-string v2, "vnd.android.cursor.dir/suggestion"

    goto :goto_0

    .line 170
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 171
    const-string v2, "vnd.android.cursor.item/suggestion"

    goto :goto_0

    .line 175
    .end local v0           #base:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown Uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 184
    iget-object v6, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 186
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 187
    .local v2, length:I
    if-ge v2, v8, :cond_0

    .line 188
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 191
    :cond_0
    const-wide/16 v4, -0x1

    .line 192
    .local v4, rowID:J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, base:Ljava/lang/String;
    const/4 v3, 0x0

    .line 194
    .local v3, newUri:Landroid/net/Uri;
    const-string v6, "suggestions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    if-ne v2, v8, :cond_1

    .line 196
    const-string v6, "suggestions"

    const-string v7, "query"

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 197
    cmp-long v6, v4, v9

    if-lez v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionsUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 202
    :cond_1
    cmp-long v6, v4, v9

    if-gez v6, :cond_2

    .line 203
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown Uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 206
    return-object v3
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mMode:I

    if-nez v1, :cond_1

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider not configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_1
    iget v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mMode:I

    add-int/lit16 v0, v1, 0x200

    .line 219
    .local v0, mWorkingDbVersion:I
    new-instance v1, Lcom/google/android/gm/SearchRecentSuggestionsGmail$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 221
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, suggestSelection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 290
    .local v4, myArgs:[Ljava/lang/String;
    :goto_0
    const-string v1, "suggestions"

    invoke-direct {p0, p4}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->createProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 292
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v9, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 293
    return-object v9

    .line 281
    .end local v3           #suggestSelection:Ljava/lang/String;
    .end local v4           #myArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, like:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    .line 283
    .restart local v4       #myArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestSuggestionClause:Ljava/lang/String;

    .restart local v3       #suggestSelection:Ljava/lang/String;
    goto :goto_0
.end method

.method public setFullQueryTerms(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, terms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mFullQueryTerms:Ljava/util/ArrayList;

    .line 262
    return-void
.end method

.method protected setupSuggestions(Ljava/lang/String;I)V
    .locals 5
    .parameter "authority"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mAuthority:Ljava/lang/String;

    .line 111
    iput p2, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mMode:I

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suggestions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionsUri:Landroid/net/Uri;

    .line 115
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mUriMatcher:Landroid/content/UriMatcher;

    .line 116
    iget-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mAuthority:Ljava/lang/String;

    const-string v3, "search_suggest_query"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, historicalIcon:Ljava/lang/String;
    const-string v1, "display1 LIKE ?"

    iput-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestSuggestionClause:Ljava/lang/String;

    .line 123
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "display1 AS suggest_text_1"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "query AS suggest_intent_query"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "suggest_icon_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/gm/SearchRecentSuggestionsGmail;->mSuggestionProjection:[Ljava/lang/String;

    .line 129
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
