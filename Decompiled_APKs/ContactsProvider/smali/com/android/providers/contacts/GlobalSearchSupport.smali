.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$1;,
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    }
.end annotation


# static fields
.field private static final CURRENT_CONTACTS:J = 0x3f480L

.field private static final PRESENCE_SQL:Ljava/lang/String; = "(SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id)"

.field private static final RECENTLY_CONTACTED:Ljava/lang/String; = "(strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000"

.field private static final RECENT_CONTACTS:J = 0x278d00L

.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String; = null

.field private static final SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String; = null

.field private static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field private static final SNIPPET_END_MATCH:C = '\u0001'

.field private static final SNIPPET_MAX_TOKENS:I = 0x5

.field private static final SNIPPET_START_MATCH:C = '\u0001'

.field private static final SORT_ORDER:Ljava/lang/String; = "(CASE WHEN contacts.starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),contacts.times_contacted DESC, contacts.display_name, contacts._id"

.field private static final TIME_SINCE_LAST_CONTACTED:Ljava/lang/String; = "(strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000)"


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 186
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 194
    return-void
.end method

.method private buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "db"
    .parameter "projection"
    .parameter "selection"
    .parameter "filter"
    .parameter "limit"

    .prologue
    .line 303
    new-instance v11, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_5

    move-object/from16 v1, p2

    :goto_0
    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 305
    .local v11, cursor:Landroid/database/MatrixCursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    .line 307
    .local v12, haveFilter:Z
    :goto_1
    const-string v1, "SELECT _id, lookup, photo_thumb_uri, display_name, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence, last_time_contacted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    if-eqz v12, :cond_0

    .line 315
    const-string v1, ", snippet"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    const-string v1, " FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "view_contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, " AS contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    if-eqz v12, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u2026"

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 325
    :cond_1
    if-eqz p3, :cond_2

    .line 326
    const-string v1, " WHERE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_2
    const-string v1, " ORDER BY (CASE WHEN contacts.starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),contacts.times_contacted DESC, contacts.display_name, contacts._id"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    if-eqz p5, :cond_3

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 333
    .local v10, c:Landroid/database/Cursor;
    new-instance v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V

    .line 334
    .local v13, suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 336
    :goto_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 338
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 339
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 340
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 341
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    :goto_3
    iput v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 342
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    .line 343
    if-eqz v12, :cond_4

    .line 344
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->shortenSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 346
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 349
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 303
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #cursor:Landroid/database/MatrixCursor;
    .end local v12           #haveFilter:Z
    .end local v13           #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_5
    sget-object v1, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 306
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v11       #cursor:Landroid/database/MatrixCursor;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 341
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #haveFilter:Z
    .restart local v13       #suggestion:Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_7
    const/4 v1, 0x4

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_3

    .line 349
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 351
    return-object v11
.end method

.method private buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "searchClause"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 257
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 258
    .local v1, cursor:Landroid/database/MatrixCursor;
    iget-object v6, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 262
    .local v4, r:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v2, dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const v6, 0x1040436

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 267
    .local v3, i:I
    if-gez v3, :cond_1

    .line 268
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_0
    const v6, 0x108020c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 281
    .end local v2           #dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3           #i:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const v6, 0x1040437

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 284
    .restart local v5       #s:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 285
    .restart local v3       #i:I
    if-gez v3, :cond_2

    .line 286
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_1
    const v6, 0x1080218

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v6, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v6, "_-1"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 298
    return-object v1

    .line 271
    .end local v0           #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 289
    .end local v2           #dialNumber:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v0       #createContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isVoiceCapable()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private shortenSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "snippet"

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 355
    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-object v9

    .line 359
    :cond_1
    const/4 v3, 0x0

    .line 360
    .local v3, from:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 361
    .local v8, to:I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 362
    .local v7, start:I
    if-eq v7, v10, :cond_0

    .line 366
    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 367
    .local v2, firstNl:I
    if-eq v2, v10, :cond_2

    .line 368
    add-int/lit8 v3, v2, 0x1

    .line 370
    :cond_2
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 371
    .local v1, end:I
    if-eq v1, v10, :cond_3

    .line 372
    invoke-virtual {p1, v12, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 373
    .local v5, lastNl:I
    if-eq v5, v10, :cond_3

    .line 374
    move v8, v5

    .line 378
    .end local v5           #lastNl:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v6, sb:Ljava/lang/StringBuilder;
    move v4, v3

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 380
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 381
    .local v0, c:C
    if-eq v0, v11, :cond_4

    if-eq v0, v11, :cond_4

    .line 382
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "projection"
    .parameter "lookupKey"
    .parameter "filter"

    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 238
    .local v6, contactId:J
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 235
    .end local v6           #contactId:J
    :catch_0
    move-exception v8

    .line 236
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v6, -0x1

    .restart local v6       #contactId:J
    goto :goto_0
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "db"
    .parameter "uri"
    .parameter "projection"
    .parameter "limit"

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, searchClause:Ljava/lang/String;
    const-string v3, "(strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000"

    .line 208
    .local v3, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnPhoneNumber(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 211
    :goto_1
    return-object v0

    .line 204
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #searchClause:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4       #searchClause:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 211
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->buildCursorForSearchSuggestionsBasedOnFilter(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method
