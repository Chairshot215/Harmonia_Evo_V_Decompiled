.class public Lcom/coremobility/integration/app/CM_VnotesContentProvider;
.super Landroid/content/ContentProvider;

# interfaces
.implements Lcom/coremobility/integration/app/k;


# static fields
.field private static final c:Landroid/content/UriMatcher;


# instance fields
.field private a:Lcom/coremobility/integration/b/d;

.field private b:Lcom/coremobility/integration/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_no_delete_folder"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_no_delete_folder/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_inbox"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_join"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_list/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_query/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "search_suggest_query/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_guid"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_empty_directory/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_restore_to_inbx/*"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_external"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_external/#"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_external"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_external/#"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes_external"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes_external/#"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_join_external"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_list_external/*"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_query_external/*"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_guid_external"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_sdcard_mounted_external"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    return-void
.end method

.method private a([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    const-string v0, ""

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    :goto_0
    move v7, v0

    :goto_1
    if-eqz v8, :cond_e

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_1
    const-string v0, "sender_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "out_timestamp"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v2, ""

    const-string v1, ""

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v6, "unknown@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v3, 0x1

    move v6, v3

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v3

    const/4 v9, 0x0

    aget-wide v11, v3, v9

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-wide v11, v3, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    const/4 v9, 0x3

    invoke-static {v11, v12, v9}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v9, 0x0

    aget-wide v11, v3, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v11, v12, v7}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->j()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v5

    :cond_4
    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_3
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x1

    const-string v5, "_-1"

    aput-object v5, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f02007c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    :goto_4
    return-object v0

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move v7, v0

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_a

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/coremobility/k/de;->c()J

    move-result-wide v2

    :cond_9
    mul-int/lit16 v0, v11, 0x3e8

    int-to-long v12, v0

    invoke-static {v12, v13, v7}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v12, v11, 0x3e8

    int-to-long v12, v12

    const/4 v14, 0x3

    invoke-static {v12, v13, v14}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-static {v11, v12, v7}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " ("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v1, v5

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_f
    move v6, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    const/16 v6, 0x29

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/16 v0, 0x1c

    const-string v2, "Unknown Uri For DELETE %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :sswitch_0
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    move v3, v1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v5, v3, v0, v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    const-string v1, ""

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v6, "vnotes"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v9, v5

    invoke-static/range {v4 .. v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    goto/16 :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_3

    :sswitch_4
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes_mime"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes_mime"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_4

    :sswitch_6
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "changes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v3, "changes"

    invoke-static {v2, v1, v3, v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_5

    :sswitch_8
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->c(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;I)I

    move-result v0

    goto/16 :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_4
    const-string v2, ""

    goto :goto_6

    :sswitch_d
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes_mime"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes_mime"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    const-string v2, ""

    goto :goto_7

    :sswitch_f
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v2, "changes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v3, "changes"

    invoke-static {v2, v1, v3, v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    const-string v0, ""

    goto :goto_8

    :sswitch_11
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_12
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->c(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0xf -> :sswitch_1
        0x10 -> :sswitch_3
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_e
        0x69 -> :sswitch_f
        0x6a -> :sswitch_10
        0x6c -> :sswitch_11
        0x6d -> :sswitch_12
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/16 v0, 0x1c

    const-string v1, "Uknown Uri %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "vnd.coremobility.cursor.vnotes/vnd.coremobility.vnotes"

    goto :goto_0

    :sswitch_1
    const-string v0, "vnd.android.cursor.vnotes_mime/vnd.coremobility.vnotes"

    goto :goto_0

    :sswitch_2
    const-string v0, "vnd.coremobility.cursor.vnotes/vnd.coremobility.vnotes"

    goto :goto_0

    :sswitch_3
    const-string v0, "vnd.android.cursor.vnotes_mime/vnd.coremobility.vnotes"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x0

    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    iput-object p2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/16 v0, 0x1c

    const-string v1, "Uknown Uri For INSERT %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v3, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->l:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mimes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->n:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mimes Inbox Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->n:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v4, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "VNOTES PROVIDER - (External) Insert Vnotes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->x:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_4

    const-string v0, "VNOTES PROVIDER - (External) Insert Vnotes Mimes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->y:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x65 -> :sswitch_3
        0x67 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/integration/b/d;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    :cond_0
    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_1

    const/4 v1, 0x6

    const-string v2, "CM_VnotesContentProvider::onCreate DB Create failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    :cond_2
    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_3

    const/4 v1, 0x6

    const-string v2, "CM_VnotesContentProvider::onCreate DB External Create failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    :try_start_1
    const-string v3, "VNOTES Provider DB Open..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v1, 0x0

    const/16 v8, 0x1c

    const/4 v2, 0x0

    const/16 v7, 0x29

    const/4 v3, 0x1

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Uknown Uri For QUERY %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v8, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "vnotes"

    move-object v3, v0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v3, p2, p3, p5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "vnotes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v2

    move-object v3, v4

    goto :goto_1

    :cond_0
    const-string v0, ""

    goto :goto_3

    :sswitch_2
    const-string v0, "vnotes_mime"

    const-string p5, "file_order"

    move-object v3, v0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v4, "vnotes_mime"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "file_order"

    move v0, v2

    move-object v3, v4

    goto/16 :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_4

    :sswitch_4
    const-string v0, "changes"

    move-object v3, v0

    move v0, v2

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "changes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v2

    move-object v3, v4

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_5

    :sswitch_6
    const-string v0, "vnotes,vnotes_mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file_order"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object v3, v0

    move v0, v2

    goto/16 :goto_1

    :sswitch_7
    invoke-direct {p0, p4}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "vnotes"

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "vnotes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_6

    :sswitch_a
    const-string v0, "vnotes_mime"

    const-string p5, "file_order"

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "vnotes_mime"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "file_order"

    move v0, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_7

    :sswitch_c
    const-string v0, "changes"

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "changes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_8

    :sswitch_e
    const-string v0, "vnotes,vnotes_mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v3, p2, p3, p5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null cursor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xb -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    new-instance v4, Lcom/coremobility/integration/b/a;

    invoke-direct {v4}, Lcom/coremobility/integration/b/a;-><init>()V

    iput-object p2, v4, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/16 v0, 0x1c

    const-string v1, "Uknown Uri For UPDATE %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x1

    const-string v2, "vnotes"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_3

    :sswitch_4
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x1

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_4

    :sswitch_7
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_5

    :sswitch_9
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "mounted"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/coremobility/k/b;->b(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    goto/16 :goto_1

    :cond_5
    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    goto/16 :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v0, p3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xc -> :sswitch_4
        0xe -> :sswitch_b
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
    .end sparse-switch
.end method
