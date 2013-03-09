.class public Lcom/android/providers/contacts/GlobalCallLogSearchSupport;
.super Ljava/lang/Object;
.source "GlobalCallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;,
        Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestionQuery;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGESTIONS_BASE_ON_CALLLOG:[Ljava/lang/String;


# instance fields
.field private final mCallLogProvider:Lcom/android/providers/contacts/CallLogProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
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

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CALL_TYPE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->SEARCH_SUGGESTIONS_BASE_ON_CALLLOG:[Ljava/lang/String;

    .line 41
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

    sput-object v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_PHONE_NUMBER_COLUMNS:[Ljava/lang/String;

    .line 51
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

    const-string v1, "suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->SEARCH_SUGGESTIONS_BASED_ON_NAME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/CallLogProvider;)V
    .locals 0
    .parameter "callLogProvider"

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->mCallLogProvider:Lcom/android/providers/contacts/CallLogProvider;

    .line 172
    return-void
.end method

.method private appendRawContactsByNormalizedNameFilter(Ljava/lang/StringBuilder;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "sb"
    .parameter "normalizedName"
    .parameter "allowEmailMatch"
    .parameter "allowCompanyMatch"

    .prologue
    .line 356
    const-string v0, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v0, "*\' AND name_type IN (2,3,6,7"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    if-eqz p4, :cond_0

    .line 368
    const-string v0, ",5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_0
    if-eqz p3, :cond_1

    .line 372
    const-string v0, ",4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_1
    const-string v0, "))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    return-void
.end method

.method private buildCursorForSearchSuggestionsCallLog(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 29
    .parameter "db"
    .parameter "searchClause"
    .parameter "limit"
    .parameter "outerSelection"

    .prologue
    .line 204
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v24, sb:Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v20, nameSb:Ljava/lang/StringBuilder;
    const-string v3, "calls.raw_contact_id IN "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->appendRawContactsByFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 210
    const-string v3, "contacts.display_name"

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/htc/util/contacts/ContactsUtility;->getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 211
    .local v21, nameSelection:Ljava/lang/String;
    const-string v22, "0"

    .line 212
    .local v22, phoneSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->isPhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/htc/util/contacts/ContactsUtility;->getFiltePrefixrWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 216
    :cond_0
    const/4 v6, 0x0

    .line 218
    .local v6, selection:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    if-eqz p4, :cond_2

    .line 221
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 238
    if-nez v6, :cond_4

    .line 239
    const/16 v19, 0x0

    .line 341
    :cond_1
    :goto_1
    return-object v19

    .line 224
    :cond_2
    const-string v3, "1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_3
    const-string v3, "("

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v3, "("

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v3, " ) OR ("

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v3, " ) "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v3, " ) "

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    :cond_4
    const-string v4, "calls  LEFT JOIN raw_contacts ON (calls.raw_contact_id = raw_contacts._id) LEFT JOIN contacts ON (raw_contacts.contact_id = contacts._id) "

    sget-object v5, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date DESC "

    move-object/from16 v3, p1

    move-object/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 246
    .local v17, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const-string v4, "calls  LEFT JOIN raw_contacts ON (calls.raw_contact_id = raw_contacts._id) LEFT JOIN contacts ON (raw_contacts.contact_id = contacts._id) "

    sget-object v5, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestionQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 252
    .local v25, sql:Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v27, suggestionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v28, suggestionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;>;"
    const/16 v23, 0x0

    .line 256
    .local v23, row:[Ljava/lang/Object;
    new-instance v19, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->SEARCH_SUGGESTIONS_BASE_ON_CALLLOG:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 258
    .local v19, matrixCursor:Landroid/database/MatrixCursor;
    if-eqz v17, :cond_1

    .line 260
    :goto_2
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 262
    sget-object v3, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->SEARCH_SUGGESTIONS_BASE_ON_CALLLOG:[Ljava/lang/String;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 264
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 265
    .local v12, _id:J
    const/4 v3, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 266
    .local v15, contactId:J
    const/4 v14, -0x1

    .line 267
    .local v14, callType:I
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 268
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 271
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;

    .line 272
    .local v26, suggestion:Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
    if-nez v26, :cond_6

    .line 273
    new-instance v26, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;

    .end local v26           #suggestion:Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
    move-object/from16 v0, v26

    invoke-direct {v0, v12, v13}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;-><init>(J)V

    .line 274
    .restart local v26       #suggestion:Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_6
    move-object/from16 v0, v26

    iput-wide v15, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->contactId:J

    .line 279
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 280
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    .line 281
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->displayName:Ljava/lang/String;

    .line 283
    const/16 v3, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 284
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    .line 288
    :cond_7
    const/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 290
    const/16 v3, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 291
    .local v18, ext_account_type:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->ext_account_type:Ljava/lang/String;

    .line 292
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    if-eqz v3, :cond_9

    .line 293
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->photoUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 303
    :goto_3
    const/4 v3, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 304
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    aput-object v4, v23, v3

    .line 305
    const/4 v3, 0x2

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    aput-object v4, v23, v3

    .line 306
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 307
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    aput-object v4, v23, v3

    .line 308
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v23, v3

    .line 310
    :cond_8
    const/4 v3, 0x3

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    aput-object v4, v23, v3

    .line 311
    const/4 v3, 0x4

    const-string v4, "tel"

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 312
    const/4 v3, 0x5

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 327
    const/4 v3, 0x6

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 328
    const/4 v3, 0x7

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->phoneNumber:Ljava/lang/String;

    aput-object v4, v23, v3

    .line 329
    const/4 v3, -0x1

    if-eq v14, v3, :cond_b

    .line 330
    const/16 v3, 0x8

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 335
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 338
    .end local v12           #_id:J
    .end local v14           #callType:I
    .end local v15           #contactId:J
    .end local v18           #ext_account_type:Ljava/lang/String;
    .end local v26           #suggestion:Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 295
    .restart local v12       #_id:J
    .restart local v14       #callType:I
    .restart local v15       #contactId:J
    .restart local v18       #ext_account_type:Ljava/lang/String;
    .restart local v26       #suggestion:Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
    :cond_9
    if-eqz v18, :cond_a

    :try_start_1
    const-string v3, "com.anddroid.contacts.sim"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 296
    const v3, 0x7f020002

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto/16 :goto_3

    .line 299
    :cond_a
    const v3, 0x7f020001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto/16 :goto_3

    .line 333
    :cond_b
    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-object v4, v23, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 338
    .end local v12           #_id:J
    .end local v14           #callType:I
    .end local v15           #contactId:J
    .end local v18           #ext_account_type:Ljava/lang/String;
    .end local v26           #suggestion:Lcom/android/providers/contacts/GlobalCallLogSearchSupport$SearchSuggestion;
    :cond_c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method public appendRawContactsByFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "filterParam"

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->appendRawContactsByNormalizedNameFilter(Ljava/lang/StringBuilder;Ljava/lang/String;ZZ)V

    .line 352
    return-void
.end method

.method public getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filterParam"

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->appendRawContactsByFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "db"
    .parameter "callId"
    .parameter "projection"

    .prologue
    const/4 v2, 0x0

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "calls._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->buildCursorForSearchSuggestionsCallLog(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "db"
    .parameter "uri"
    .parameter "limit"

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 180
    :goto_0
    return-object v1

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, searchClause:Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/providers/contacts/GlobalCallLogSearchSupport;->buildCursorForSearchSuggestionsCallLog(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method isPhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cons"

    .prologue
    .line 378
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 380
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 381
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 383
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    .line 398
    const/4 v3, 0x0

    .line 401
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method
