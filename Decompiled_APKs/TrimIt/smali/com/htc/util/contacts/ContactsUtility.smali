.class public Lcom/htc/util/contacts/ContactsUtility;
.super Ljava/lang/Object;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;
    }
.end annotation


# static fields
.field public static final CONTACT_QUERY_PARAMETER_EXCLUDE_SIM:Ljava/lang/String; = "excludeSIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTACT_QUERY_PARAMETER_ONLY_PHONE:Ljava/lang/String; = "onlyPhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ContactsProviderFilesTempPath:Ljava/lang/String; = "/data/data/com.android.providers.contacts/Temp"

.field public static final DEBUG:Z = true

.field private static final DEBUG_URL_INDEX:I = 0x0

.field public static final DEFAULT_ACTION_ACTION_URL:Ljava/lang/String; = "action_url"

.field public static final DEFAULT_ACTION_CALL_TYPE:Ljava/lang/String; = "action_call_type"

.field public static final DEFAULT_ACTION_DATA:Ljava/lang/String; = "action_data"

.field public static final DEFAULT_ACTION_DATA_URL:Ljava/lang/String; = "action_url"

.field public static final DEFAULT_ACTION_INTENT_ACTION:Ljava/lang/String; = "action_intent_action"

.field public static final DEFAULT_ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final DIALING:Ljava/lang/String; = "Dialing"

.field public static final MAIL:Ljava/lang/String; = "SendMail"

.field private static final MAX_WHERE_OR_DEPTH:I = 0xf0

.field private static final REMOTE_CONNECT_TIMEOUT:I = 0x1388

.field private static final REMOTE_FETCH_TIMEOUT:I = 0x1388

.field public static final SHOW_DATE:I = 0x2

.field public static final SHOW_EXACT_TIME:I = 0x1

.field public static final SHOW_TODAY:I = 0x0

.field public static final SMS:Ljava/lang/String; = "SendMSG"

.field private static final TAG:Ljava/lang/String; = "ContactsUtility"

.field public static final VIEW_CONTACT:Ljava/lang/String; = "ViewContact"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    return-void
.end method

.method public static JoinContactsManually(Landroid/content/Context;JJ)V
    .locals 23
    .parameter "context"
    .parameter "source_id"
    .parameter "target_id"

    .prologue
    .line 2812
    const/4 v3, 0x0

    .line 2813
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2814
    .local v9, c:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2815
    .local v18, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    .local v19, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 2818
    .local v15, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2819
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 2821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2822
    .local v5, whereClause:Ljava/lang/String;
    const-string v2, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2823
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2824
    if-eqz v9, :cond_3

    .line 2825
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2826
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2827
    .local v10, contact_id:J
    cmp-long v2, v10, p1

    if-nez v2, :cond_1

    .line 2828
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2829
    :cond_1
    cmp-long v2, v10, p3

    if-nez v2, :cond_0

    .line 2830
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2832
    .end local v10           #contact_id:J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2835
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2836
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2837
    .local v16, sid:J
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 2838
    .local v20, tid:J
    cmp-long v2, v16, v20

    if-eqz v2, :cond_5

    .line 2839
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "aggregation_exceptions_manual"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v6, 0x1

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 2842
    .local v22, updateUri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 2844
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2845
    const-string v2, "raw_contact_id1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2846
    const-string v2, "raw_contact_id2"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2847
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2853
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #sid:J
    .end local v20           #tid:J
    .end local v22           #updateUri:Landroid/net/Uri;
    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2855
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, v4, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2863
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2867
    :cond_7
    :goto_2
    return-void

    .line 2856
    :catch_0
    move-exception v12

    .line 2858
    .local v12, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2863
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 2859
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 2861
    .local v12, e:Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2863
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .end local v12           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method static synthetic access$300(Landroid/graphics/Bitmap;I)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static addContactsToGroup(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1144
    .local p2, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1145
    const/4 v3, 0x0

    .line 1153
    :goto_0
    return v3

    .line 1147
    :cond_0
    move-object v0, p1

    .line 1148
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1151
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static addContactsToImportantMailGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1112
    .local p1, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "VIP"

    .line 1113
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1116
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    return-void
.end method

.method public static addContactsToImportantMailGroup(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1128
    .local p1, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "VIP"

    .line 1129
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1132
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public static conjectGivenFamilyName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "givenName"
    .parameter "familyName"
    .parameter "isGivenFamilyOrder"

    .prologue
    .line 238
    const-string v0, " "

    .line 239
    .local v0, diliem:Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, isCJK:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    :cond_0
    const/4 v1, 0x1

    .line 242
    const-string v0, ""

    .line 244
    :cond_1
    const/4 v2, 0x0

    .line 245
    .local v2, name:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 246
    if-eqz p2, :cond_4

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    move-object v2, p0

    .line 260
    :cond_3
    return-object v2

    .line 249
    :cond_4
    if-nez v1, :cond_5

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 254
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 255
    move-object v2, p1

    goto :goto_0
.end method

.method public static deleteRawContactPhotoData(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lRawContactId"

    .prologue
    .line 1868
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 1869
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1870
    .local v0, bundleDataId:Landroid/os/Bundle;
    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/ContactsUtility;->isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1871
    const-string v2, "ContactsUtility"

    const-string v3, "deleteRawContactPhotoData has Photo data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const-string v2, "data_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1873
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteRawContactPhotoData delete data Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1875
    .local v1, deleteCount:I
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteRawContactPhotoData deleteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    if-lez v1, :cond_0

    .line 1877
    const/4 v2, 0x1

    .line 1882
    .end local v0           #bundleDataId:Landroid/os/Bundle;
    .end local v1           #deleteCount:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bmSrc"
    .parameter "bmOverlay"

    .prologue
    const/4 v9, 0x0

    .line 3412
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3422
    :cond_0
    :goto_0
    return-void

    .line 3413
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 3414
    .local v4, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3415
    .local v3, nSrcH:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3416
    .local v2, nOverlayW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3417
    .local v1, nOverlayH:I
    if-ge v2, v4, :cond_0

    if-ge v1, v3, :cond_0

    .line 3418
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3419
    .local v0, canvasSrc:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 3420
    .local v5, paintDefault:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v3, v1

    invoke-direct {v7, v9, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "resolver"
    .parameter "displayName"

    .prologue
    const/4 v2, 0x0

    .line 1161
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1162
    .local v10, name:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1163
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixStructuredNameComponents?displayName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1164
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1165
    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1167
    .local v8, givenNames:Ljava/lang/String;
    const-string v0, "data5"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1168
    .local v9, middleName:Ljava/lang/String;
    const-string v0, "data3"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1169
    .local v7, familyName:Ljava/lang/String;
    const-string v0, "data2"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v0, "data5"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v0, "data3"

    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    .end local v7           #familyName:Ljava/lang/String;
    .end local v8           #givenNames:Ljava/lang/String;
    .end local v9           #middleName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1177
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return-object v10
.end method

.method public static getAddMailToContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "mail"

    .prologue
    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 648
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "email_isprimary"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    return-object v0
.end method

.method public static getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "number"

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 634
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    return-object v0
.end method

.method public static getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 14
    .parameter "resolver"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 3120
    if-nez p0, :cond_0

    .line 3137
    :goto_0
    return-object v2

    .line 3121
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3123
    .local v6, bundleIds:Landroid/os/Bundle;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mycontact_ids_cache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3124
    .local v7, cursorMyContact:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 3125
    const/4 v0, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3126
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3127
    .local v10, lMyRawContactId:J
    const-string v0, "contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3128
    .local v8, lMyContactId:J
    cmp-long v0, v12, v10

    if-gez v0, :cond_1

    cmp-long v0, v12, v8

    if-gez v0, :cond_1

    .line 3129
    const-string v0, "_id"

    invoke-virtual {v6, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3130
    const-string v0, "contact_id"

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3133
    .end local v8           #lMyContactId:J
    .end local v10           #lMyRawContactId:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3134
    const/4 v7, 0x0

    :cond_2
    move-object v2, v6

    .line 3137
    goto :goto_0
.end method

.method public static getContactId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "lRawContactId"

    .prologue
    const/4 v3, 0x0

    .line 1891
    const-string v0, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactId lRawContactId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const-wide/16 v7, 0x0

    .line 1893
    .local v7, lContactId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1894
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1895
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1896
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1898
    const-string v0, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactId lContactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1901
    const/4 v6, 0x0

    .line 1903
    :cond_1
    return-wide v7
.end method

.method public static getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "entity"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1417
    const-string v5, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContentValues mimeType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    .local v0, contentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1420
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1421
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1422
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1423
    .local v3, mimetype:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1424
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1425
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1429
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_1
    const-string v5, "ContactsUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContentValues return size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    return-object v0
.end method

.method public static getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2799
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2806
    :cond_1
    :goto_0
    return-object v0

    .line 2800
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20800c2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2801
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 2802
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 2803
    :cond_3
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, sequence:Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 558
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    return-object p1

    .line 541
    .restart local p1
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "VIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    const v1, 0x20c017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "System Group: Family"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 545
    const v1, 0x20c017b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_4
    if-eqz p1, :cond_5

    const-string v1, "System Group: Friends"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 548
    const v1, 0x20c017c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "System Group: Coworkers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 551
    const v1, 0x20c017d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_6
    if-eqz p1, :cond_0

    const-string v1, "Frequent Contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const v1, 0x20c01be

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bmSrc"
    .parameter "nSize"
    .parameter "bmFacebookIcon"

    .prologue
    .line 1982
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 1983
    :cond_0
    const/4 v1, 0x0

    .line 2013
    :goto_0
    return-object v1

    .line 1985
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1986
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1988
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1989
    .local v8, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1990
    .local v7, nSrcH:I
    if-ne v8, v7, :cond_2

    .line 1991
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2009
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2010
    .local v4, nFW:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2011
    .local v3, nFH:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    sub-int v12, p1, v3

    invoke-direct {v10, v11, v12, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1994
    .end local v3           #nFH:I
    .end local v4           #nFW:I
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v0, 0x1

    .line 1995
    .local v0, bSrcLandscape:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 1997
    sub-int v9, v8, v7

    div-int/lit8 v5, v9, 0x2

    .line 1998
    .local v5, nOffset:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v5, v7

    invoke-direct {v9, v5, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1994
    .end local v0           #bSrcLandscape:Z
    .end local v5           #nOffset:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2002
    .restart local v0       #bSrcLandscape:Z
    :cond_4
    sub-int v9, v7, v8

    div-int/lit8 v5, v9, 0x2

    .line 2003
    .restart local v5       #nOffset:I
    const-wide v9, 0x3feb333333333333L

    int-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 2004
    .local v6, nOffsetFacebook:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v6, v8

    invoke-direct {v9, v10, v6, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 529
    const v0, 0x20c0178

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getFiltePrefixrWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter "pattern"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, param1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 381
    .local v3, param2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 382
    .local v0, filterWhere:Ljava/lang/String;
    move-object v0, p1

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const/4 v4, 0x0

    .line 429
    :goto_0
    return-object v4

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 391
    invoke-static {p1}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    :cond_1
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 397
    .local v1, length:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 398
    move-object v2, p1

    .line 400
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 401
    :cond_2
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 407
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 414
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 417
    :cond_5
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 420
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 425
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static final getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter "pattern"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, param1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 305
    .local v3, param2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 306
    .local v0, filterWhere:Ljava/lang/String;
    move-object v0, p1

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    const/4 v4, 0x0

    .line 374
    :goto_0
    return-object v4

    .line 311
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 315
    invoke-static {p1}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 319
    :cond_1
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 321
    .local v1, length:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 322
    move-object v2, p1

    .line 323
    move-object v3, p1

    .line 324
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 325
    :cond_2
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 334
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 346
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 352
    :cond_6
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 356
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 366
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static getFromRemote(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"

    .prologue
    .line 2568
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFromRemote url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    const/4 v0, 0x0

    .line 2574
    .local v0, TEMP_FILE_VERSION:Z
    const/4 v1, 0x1

    .line 2576
    .local v1, VERSION_3:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getFromRemote2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "url"

    .prologue
    .line 2629
    const-string v18, "ContactsUtility"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getFromRemote2 url: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const/4 v4, 0x0

    .line 2632
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x2f

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2633
    .local v3, basename:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2635
    .local v9, encodedUrl:Ljava/lang/String;
    const-string v18, "ContactsUtility"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getFromRemote2 encodedUrl: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/data/com.android.providers.contacts/Temp/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2638
    .local v12, namepath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    const-string v18, "/data/data/com.android.providers.contacts/Temp"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2639
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 2640
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2641
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 2642
    if-eqz v10, :cond_0

    const-string v18, "ContactsUtility"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getFromRemote2 file.getAbsolutePath(): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 2645
    .local v7, conn:Ljava/net/URLConnection;
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2646
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 2648
    const-wide/16 v14, 0x0

    .line 2649
    .local v14, photoSize:J
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v18

    move/from16 v0, v18

    int-to-long v14, v0

    .line 2650
    const-string v18, "ContactsUtility"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getFromRemote2 photoSize: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 2652
    .local v11, is:Ljava/io/InputStream;
    if-eqz v11, :cond_3

    .line 2653
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2654
    .local v13, out:Ljava/io/FileOutputStream;
    if-eqz v13, :cond_2

    .line 2656
    const-wide/16 v16, 0x0

    .line 2657
    .local v16, size:J
    const/16 v18, 0x800

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 2658
    .local v5, buffer:[B
    :goto_0
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, bytesRead:I
    if-lez v6, :cond_1

    .line 2659
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2660
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    goto :goto_0

    .line 2662
    :cond_1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 2663
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 2665
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .end local v16           #size:J
    :cond_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 2668
    .end local v13           #out:Ljava/io/FileOutputStream;
    :cond_3
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2669
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2679
    .end local v3           #basename:Ljava/lang/String;
    .end local v7           #conn:Ljava/net/URLConnection;
    .end local v9           #encodedUrl:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #namepath:Ljava/lang/String;
    .end local v14           #photoSize:J
    :goto_1
    return-object v4

    .line 2670
    :catch_0
    move-exception v8

    .line 2671
    .local v8, e:Ljava/io/IOException;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2673
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 2674
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2675
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v8

    .line 2676
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    .line 2690
    const-string v8, "ContactsUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFromRemote3 url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    const/4 v1, 0x0

    .line 2693
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v8, 0x2f

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2694
    .local v0, basename:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/16 v10, 0x2f

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2696
    .local v4, encodedUrl:Ljava/lang/String;
    const-string v8, "ContactsUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFromRemote3 encodedUrl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2699
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2700
    .local v6, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 2701
    .local v7, resp:Lorg/apache/http/HttpResponse;
    if-eqz v7, :cond_1

    .line 2702
    const-string v8, "ContactsUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFromRemote3 resp.getStatusLine(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "ContactsUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFromRemote3 resp.getStatusLine().getStatusCode(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_0
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 2705
    .local v5, ent:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_1

    .line 2706
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 2719
    .end local v0           #basename:Ljava/lang/String;
    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #encodedUrl:Ljava/lang/String;
    .end local v5           #ent:Lorg/apache/http/HttpEntity;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_0
    return-object v1

    .line 2709
    :catch_0
    move-exception v3

    .line 2710
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2711
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v3

    .line 2712
    .local v3, e:Ljava/io/IOException;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2713
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 2714
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2715
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v3

    .line 2716
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "url"
    .parameter "androidHttpClient"

    .prologue
    .line 2722
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2751
    :cond_0
    :goto_0
    return-object v1

    .line 2724
    :cond_1
    const-string v7, "ContactsUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFromRemote4 url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " androidHttpClient: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const/4 v1, 0x0

    .line 2727
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v7, 0x2f

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2728
    .local v0, basename:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x2f

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2730
    .local v3, encodedUrl:Ljava/lang/String;
    const-string v7, "ContactsUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFromRemote4 encodedUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2733
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 2734
    .local v6, resp:Lorg/apache/http/HttpResponse;
    if-eqz v6, :cond_0

    .line 2735
    const-string v7, "ContactsUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFromRemote4 resp.getStatusLine(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v7, "ContactsUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFromRemote4 resp.getStatusLine().getStatusCode(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 2738
    .local v4, ent:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 2739
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto/16 :goto_0

    .line 2742
    .end local v0           #basename:Ljava/lang/String;
    .end local v3           #encodedUrl:Ljava/lang/String;
    .end local v4           #ent:Lorg/apache/http/HttpEntity;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 2743
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2744
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 2745
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2746
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 2747
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2748
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 2749
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getImportantGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 533
    const-string v0, "VIP"

    return-object v0
.end method

.method public static getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 3195
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    .line 3214
    :cond_1
    :goto_0
    return-object v9

    .line 3198
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3199
    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3200
    .local v1, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 3201
    .local v10, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3202
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3203
    .local v9, sMailAddress:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3205
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3207
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3208
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3209
    const/4 v9, 0x0

    .line 3211
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3212
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "values"

    .prologue
    .line 1716
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1717
    .local v2, valuesResult:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, mimetype:Ljava/lang/String;
    const-string v3, "mimetype"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1721
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    :cond_0
    :goto_0
    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1774
    .local v1, mimetypeResult:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 1776
    .end local v2           #valuesResult:Landroid/content/ContentValues;
    :cond_1
    return-object v2

    .line 1726
    .end local v1           #mimetypeResult:Ljava/lang/String;
    .restart local v2       #valuesResult:Landroid/content/ContentValues;
    :cond_2
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1727
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1732
    :cond_3
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1733
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v3, "data12"

    const-string v4, "data12"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    :cond_4
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1737
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v3, "data5"

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1740
    :cond_5
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1741
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v3, "data7"

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v3, "data8"

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v3, "data9"

    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    const-string v3, "data10"

    const-string v4, "data10"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1747
    :cond_6
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1748
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1751
    :cond_7
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1752
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1753
    :cond_8
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1754
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1756
    :cond_9
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1757
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1759
    :cond_a
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1760
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v3, "data3"

    const-string v4, "data3"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v3, "data5"

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v3, "data6"

    const-string v4, "data6"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string v3, "data7"

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string v3, "data8"

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string v3, "data9"

    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1769
    :cond_b
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1770
    const-string v3, "data15"

    const-string v4, "data15"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public static final getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1779
    .local p1, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1780
    :cond_0
    const/4 v2, 0x0

    .line 1799
    :cond_1
    :goto_0
    return-object v2

    .line 1782
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1783
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 1784
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1785
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1786
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1787
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1788
    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1789
    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1790
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_3

    .line 1791
    const-string v5, " OR "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1785
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1794
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    const-string v6, " ( "

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1795
    const-string v5, " ) "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1796
    if-lez v4, :cond_1

    .line 1797
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 937
    const/4 v7, 0x0

    .line 938
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 939
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 940
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 941
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 943
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 945
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 947
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 950
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 953
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 954
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 956
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 957
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 959
    :cond_3
    return v10

    .line 950
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 906
    const/4 v7, 0x0

    .line 907
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 908
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 909
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 910
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 912
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 914
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 916
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 919
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 923
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 925
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 926
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    :cond_3
    return v10

    .line 919
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3224
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    .line 3242
    :cond_1
    :goto_0
    return-object v9

    .line 3227
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3228
    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3229
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 3230
    .local v9, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3231
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3233
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3235
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3236
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3237
    const/4 v9, 0x0

    .line 3239
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3240
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3051
    const-string v0, ""

    .line 3053
    .local v0, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 3099
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3057
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3095
    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 3099
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 3059
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3061
    goto :goto_1

    .line 3064
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3066
    goto :goto_1

    .line 3069
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3071
    goto :goto_1

    .line 3075
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3077
    goto :goto_1

    .line 3080
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3082
    goto :goto_1

    .line 3085
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3087
    goto :goto_1

    .line 3090
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3092
    goto :goto_1

    .line 3057
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3112
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3113
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3116
    :cond_0
    return-object v0
.end method

.method public static getPhoneNumberTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 2993
    const-string v0, ""

    .line 2995
    .local v0, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 3039
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3000
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3035
    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 3039
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 3003
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3004
    goto :goto_1

    .line 3007
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3008
    goto :goto_1

    .line 3011
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3012
    goto :goto_1

    .line 3015
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3016
    goto :goto_1

    .line 3019
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3020
    goto :goto_1

    .line 3023
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3024
    goto :goto_1

    .line 3027
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3028
    goto :goto_1

    .line 3031
    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3032
    goto :goto_1

    .line 3000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    .locals 7
    .parameter "photo"

    .prologue
    const/4 v3, 0x0

    .line 2755
    if-nez p0, :cond_0

    .line 2757
    check-cast v3, [B

    .line 2770
    :goto_0
    return-object v3

    .line 2760
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 2761
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2763
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2764
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2765
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2766
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 2767
    :catch_0
    move-exception v0

    .line 2768
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    check-cast v3, [B

    goto :goto_0
.end method

.method private static getPhotoByteArray(Landroid/graphics/Bitmap;I)[B
    .locals 7
    .parameter "photo"
    .parameter "jpgQuality"

    .prologue
    const/4 v3, 0x0

    .line 2773
    if-nez p0, :cond_0

    .line 2775
    check-cast v3, [B

    .line 2788
    :goto_0
    return-object v3

    .line 2778
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 2779
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2781
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2782
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2783
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2784
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    check-cast v3, [B

    goto :goto_0
.end method

.method public static getReadOnlyContactsType()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 512
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 513
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 514
    .local v0, adapterType:Landroid/content/SyncAdapterType;
    iget-object v9, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 515
    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v6, 0x1

    .line 516
    .local v6, readOnly:Z
    :goto_1
    if-eqz v6, :cond_0

    .line 517
    iget-object v9, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v6           #readOnly:Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 521
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v3

    .line 522
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 524
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    return-object v7
.end method

.method public static getRelativeDayString(JJ)Ljava/lang/String;
    .locals 22
    .parameter "day"
    .parameter "today"

    .prologue
    .line 1032
    const/4 v12, 0x0

    .line 1034
    .local v12, result:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    .line 1035
    .local v15, tz:Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    .line 1036
    .local v17, tzName:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    .line 1039
    .local v16, tzID:Ljava/lang/String;
    new-instance v14, Landroid/text/format/Time;

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v14, startTime:Landroid/text/format/Time;
    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1041
    new-instance v5, Landroid/text/format/Time;

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v5, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1043
    const-string v18, "tz"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.year: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.month: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.day: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v13

    .line 1047
    .local v13, startDay:I
    iget-wide v0, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1048
    .local v4, currentDay:I
    sub-int v18, v4, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1049
    .local v6, days:I
    cmp-long v18, p2, p0

    if-lez v18, :cond_0

    const/4 v9, 0x1

    .line 1051
    .local v9, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 1052
    .local v10, r:Landroid/content/res/Resources;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_2

    .line 1053
    if-eqz v9, :cond_1

    .line 1054
    const v18, 0x1040072

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1074
    :goto_1
    return-object v12

    .line 1049
    .end local v9           #past:Z
    .end local v10           #r:Landroid/content/res/Resources;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1056
    .restart local v9       #past:Z
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_1
    const v18, 0x1040074

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1058
    :cond_2
    if-nez v6, :cond_3

    .line 1059
    const v18, 0x1040073

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1060
    :cond_3
    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v6, v0, :cond_5

    .line 1062
    if-eqz v9, :cond_4

    .line 1063
    const v11, 0x1130004

    .line 1067
    .local v11, resId:I
    :goto_2
    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 1068
    .local v8, format:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1069
    goto :goto_1

    .line 1065
    .end local v8           #format:Ljava/lang/String;
    .end local v11           #resId:I
    :cond_4
    const v11, 0x1130008

    .restart local v11       #resId:I
    goto :goto_2

    .line 1070
    .end local v11           #resId:I
    :cond_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy/MM/dd"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v7, f:Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/util/Date;

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x76c

    move/from16 v19, v0

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Ljava/util/Date;-><init>(III)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method public static getRelativeDayString(JJI)Ljava/lang/String;
    .locals 6
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"

    .prologue
    .line 974
    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/util/contacts/ContactsUtility;->getRelativeDayString(JJIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeDayString(JJIZ)Ljava/lang/String;
    .locals 20
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"
    .parameter "flagHideThisYear"

    .prologue
    .line 978
    const/4 v14, 0x0

    .line 980
    .local v14, result:Ljava/lang/String;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 981
    .local v16, startTime:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 982
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 983
    .local v5, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 985
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    .line 986
    .local v15, startDay:I
    iget-wide v0, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 987
    .local v4, currentDay:I
    sub-int v17, v4, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 988
    .local v8, days:I
    cmp-long v17, p2, p0

    if-lez v17, :cond_1

    const/4 v11, 0x1

    .line 990
    .local v11, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 991
    .local v12, r:Landroid/content/res/Resources;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_3

    .line 992
    if-eqz v11, :cond_2

    .line 993
    const v17, 0x1040072

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1028
    :cond_0
    :goto_1
    return-object v14

    .line 988
    .end local v11           #past:Z
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 995
    .restart local v11       #past:Z
    .restart local v12       #r:Landroid/content/res/Resources;
    :cond_2
    const v17, 0x1040074

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 997
    :cond_3
    if-nez v8, :cond_5

    .line 998
    if-nez p4, :cond_4

    .line 999
    const v17, 0x1040073

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1000
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1001
    invoke-static/range {p0 .. p1}, Landroid/text/format/DateUtils;->timeString(J)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1003
    :cond_5
    const/16 v17, 0x7

    move/from16 v0, v17

    if-gt v8, v0, :cond_7

    .line 1005
    if-eqz v11, :cond_6

    .line 1006
    const v13, 0x1130004

    .line 1010
    .local v13, resId:I
    :goto_2
    invoke-virtual {v12, v13, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    .line 1011
    .local v10, format:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1012
    goto :goto_1

    .line 1008
    .end local v10           #format:Ljava/lang/String;
    .end local v13           #resId:I
    :cond_6
    const v13, 0x1130008

    .restart local v13       #resId:I
    goto :goto_2

    .line 1013
    .end local v13           #resId:I
    :cond_7
    if-nez p5, :cond_8

    .line 1014
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy/MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v9, f:Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    move-wide/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 1016
    goto :goto_1

    .line 1017
    .end local v9           #f:Ljava/text/SimpleDateFormat;
    :cond_8
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1018
    .local v6, dateDay:Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1019
    .local v7, dateToday:Ljava/util/Date;
    const/4 v9, 0x0

    .line 1020
    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v17

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1021
    new-instance v9, Ljava/text/SimpleDateFormat;

    .end local v9           #f:Ljava/text/SimpleDateFormat;
    const-string v17, "MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1025
    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 1023
    :cond_9
    new-instance v9, Ljava/text/SimpleDateFormat;

    .end local v9           #f:Ljava/text/SimpleDateFormat;
    const-string v17, "yyyy/MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    goto :goto_3
.end method

.method public static getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v3, 0x1

    .line 3285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3286
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3287
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3288
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3289
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3290
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3291
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3293
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3294
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3295
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3299
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3300
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3302
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargeWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3246
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 3247
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3248
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3249
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3250
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3251
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3253
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3254
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3255
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3259
    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3260
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3262
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3265
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 3266
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3267
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3268
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3269
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3270
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3271
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3273
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3274
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3275
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3279
    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3280
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3282
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "bmSrc"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3382
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 3408
    :goto_0
    return-object v5

    .line 3383
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 3384
    .local v12, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 3386
    .local v11, nSrcH:I
    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3387
    .local v5, bmDst:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3388
    .local v6, canvasDst:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3389
    .local v15, paintDefault:Landroid/graphics/Paint;
    int-to-float v0, v12

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v7, v16, v17

    .line 3390
    .local v7, fXratio:F
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v8, v16, v17

    .line 3391
    .local v8, fYratio:F
    cmpg-float v16, v7, v8

    if-gtz v16, :cond_1

    .line 3392
    move v10, v12

    .line 3393
    .local v10, nSrcDrawW:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v9, v0

    .line 3394
    .local v9, nSrcDrawH:I
    sub-int v16, v11, v9

    div-int/lit8 v14, v16, 0x2

    .line 3395
    .local v14, nYoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v14, v9

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 3400
    .end local v9           #nSrcDrawH:I
    .end local v10           #nSrcDrawW:I
    .end local v14           #nYoffset:I
    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v10, v0

    .line 3401
    .restart local v10       #nSrcDrawW:I
    move v9, v11

    .line 3402
    .restart local v9       #nSrcDrawH:I
    sub-int v16, v12, v10

    div-int/lit8 v13, v16, 0x2

    .line 3403
    .local v13, nXoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v13, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;[BI)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "bmSrc"
    .parameter "overlay"
    .parameter "nTargetSize"

    .prologue
    .line 3315
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 3345
    :cond_0
    :goto_0
    return-object v3

    .line 3316
    :cond_1
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3317
    .local v3, bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3318
    .local v4, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 3319
    .local v8, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3320
    .local v7, nSrcH:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 3321
    .local v11, paintDefault:Landroid/graphics/Paint;
    if-ne v8, v7, :cond_2

    .line 3322
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3333
    :goto_1
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_0

    .line 3336
    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3337
    .local v10, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 3338
    .local v9, nW:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 3339
    .local v5, nH:I
    if-eqz v10, :cond_5

    move/from16 v0, p2

    if-ge v9, v0, :cond_5

    move/from16 v0, p2

    if-ge v5, v0, :cond_5

    .line 3340
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    sub-int v15, p2, v5

    move/from16 v0, p2

    invoke-direct {v13, v14, v15, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v10, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3341
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3324
    .end local v5           #nH:I
    .end local v9           #nW:I
    .end local v10           #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v2, 0x1

    .line 3325
    .local v2, bSrcLandscape:Z
    :goto_2
    if-eqz v2, :cond_4

    .line 3326
    sub-int v12, v8, v7

    div-int/lit8 v6, v12, 0x2

    .line 3327
    .local v6, nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v7

    invoke-direct {v12, v6, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3324
    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 3329
    .restart local v2       #bSrcLandscape:Z
    :cond_4
    sub-int v12, v7, v8

    div-int/lit8 v6, v12, 0x2

    .line 3330
    .restart local v6       #nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v8

    invoke-direct {v12, v13, v6, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3345
    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    .restart local v5       #nH:I
    .restart local v9       #nW:I
    .restart local v10       #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3355
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3356
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3351
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3352
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "bmOverlay"

    .prologue
    .line 3362
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3363
    .local v0, bmCenterCrop:Landroid/graphics/Bitmap;
    if-nez p3, :cond_0

    .line 3365
    :goto_0
    return-object v0

    .line 3364
    :cond_0
    invoke-static {v0, p3}, Lcom/htc/util/contacts/ContactsUtility;->drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "overlay"

    .prologue
    .line 3371
    if-eqz p3, :cond_0

    array-length v1, p3

    if-gtz v1, :cond_1

    .line 3372
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3375
    :goto_0
    return-object v1

    .line 3374
    :cond_1
    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3375
    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSocialnetworkAccountType(Ljava/lang/String;)J
    .locals 3
    .parameter "accountType"

    .prologue
    .line 1180
    const-wide/16 v0, 0x0

    .line 1181
    .local v0, lAccountType:J
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1182
    const-wide/16 v0, 0x1

    .line 1190
    :cond_0
    :goto_0
    return-wide v0

    .line 1183
    :cond_1
    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1184
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 1185
    :cond_2
    const-string v2, "com.htc.htctwitter"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1186
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1187
    :cond_3
    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    const-wide/16 v0, 0x2

    goto :goto_0
.end method

.method public static handleSocialNetworkLargePhoto(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 1958
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    if-nez p0, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1959
    :cond_1
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSocialNetworkLargePhoto lContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1961
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 1962
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 1963
    const-string v2, "ContactsUtility"

    const-string v4, "handleSocialNetworkLargePhoto HandleSocialNetworkLargePhotoHelper.MessageHandler null, return!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    monitor-exit v3

    goto :goto_0

    .line 1977
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1966
    :cond_2
    :try_start_1
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1968
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1969
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1970
    long-to-int v2, p1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1971
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1972
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1974
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1975
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1976
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1977
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static handleSocialNetworkLargePhotoEnd(Ljava/lang/Runnable;)V
    .locals 8
    .parameter "r"

    .prologue
    .line 1911
    const-string v4, "ContactsUtility"

    const-string v5, "handleSocialNetworkLargePhotoEnd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    sget-object v5, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1913
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 1914
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 1915
    const-string v4, "ContactsUtility"

    const-string v6, "handleSocialNetworkLargePhotoEnd HandleSocialNetworkLargePhotoHelper.MessageHandler null,run r then return!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    move-object v2, p0

    .line 1918
    .local v2, rFinal:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/util/contacts/ContactsUtility$5;

    invoke-direct {v4, v2}, Lcom/htc/util/contacts/ContactsUtility$5;-><init>(Ljava/lang/Runnable;)V

    const-string v6, "handleSocialNetworkLargePhotoEndThread"

    invoke-direct {v3, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1938
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1939
    monitor-exit v5

    .line 1951
    .end local v2           #rFinal:Ljava/lang/Runnable;
    .end local v3           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1941
    :cond_0
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1943
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-static {v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1944
    .local v0, msg:Landroid/os/Message;
    const/16 v4, 0x37

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1945
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1947
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1948
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v4, 0x32

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1949
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1950
    monitor-exit v5

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static importAccountEmailToMyContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "email"
    .parameter "accountType"

    .prologue
    .line 1193
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importAccountEmailToMyContact email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", accountType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/util/contacts/ContactsUtility$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importCsAccountInfoToMyContact(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1281
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importCsAccountInfoToMyContact Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    const-string v1, "com.htc.cs"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$2;

    invoke-direct {v0, p1, p0}, Lcom/htc/util/contacts/ContactsUtility$2;-><init>(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 1413
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 1485
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importToMyContact lContactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$4;-><init>(Landroid/content/Context;J)V

    .line 1653
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"
    .parameter "rawId"

    .prologue
    const-wide/16 v4, 0x0

    .line 1435
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importToMyContact lContactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rawId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    if-eqz p0, :cond_0

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    cmp-long v1, v4, p3

    if-ltz v1, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$3;

    move-wide v1, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/util/contacts/ContactsUtility$3;-><init>(JLandroid/content/Context;J)V

    .line 1476
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1482
    .local p1, lContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, rawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method private static final isCJKCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 152
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 153
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 177
    :cond_0
    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isChineseCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 136
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 137
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 146
    :cond_0
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isContainCJKWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    const/4 v2, 0x0

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 186
    :cond_1
    const/4 v2, 0x0

    .line 187
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 188
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 190
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->isCJKCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final isContainChineseWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    const/4 v2, 0x0

    .line 212
    :cond_0
    :goto_0
    return v2

    .line 203
    :cond_1
    const/4 v2, 0x0

    .line 204
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 205
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 207
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->isChineseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    const/4 v2, 0x1

    .line 209
    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z
    .locals 6
    .parameter "entity"
    .parameter "mimetypeTarget"

    .prologue
    .line 1702
    const/4 v0, 0x0

    .line 1703
    .local v0, bContain:Z
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1704
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1705
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1706
    .local v3, mimetype:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1707
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1708
    const/4 v0, 0x1

    .line 1712
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_1
    return v0
.end method

.method public static isDuplicate(Landroid/content/Entity;Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "entity"
    .parameter "entryValuesTarget"

    .prologue
    .line 1659
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1660
    .local v6, mimetypeTarget:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1661
    .local v0, entValues:Landroid/content/ContentValues;
    const-string v10, "_id"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1662
    .local v7, rawContactId:J
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity$NamedContentValues;

    .line 1663
    .local v9, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v9, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1664
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v10, "raw_contact_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1666
    const-string v10, "mimetype"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1667
    .local v5, mimetype:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1668
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1669
    const-string v10, "ContactsUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isDuplicate mimetype: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/im"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/nickname"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/website"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1682
    :cond_1
    invoke-static {v1}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1683
    .local v3, mimeTypeValues:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1684
    .local v4, mimeTypeValuesTarget:Landroid/content/ContentValues;
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    .line 1699
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v3           #mimeTypeValues:Landroid/content/ContentValues;
    .end local v4           #mimeTypeValuesTarget:Landroid/content/ContentValues;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v9           #subValue:Landroid/content/Entity$NamedContentValues;
    :goto_0
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z
    .locals 1
    .parameter "locale"

    .prologue
    .line 216
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z
    .locals 11
    .parameter "context"
    .parameter "lRawContactId"
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 1840
    const/4 v6, 0x0

    .line 1841
    .local v6, bHasPhoto:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1842
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1843
    .local v10, sbSelection:Ljava/lang/StringBuilder;
    const-string v0, "mimetype = \'vnd.android.cursor.item/photo\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "contact_id"

    aput-object v5, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1845
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1846
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1847
    const/4 v6, 0x1

    .line 1848
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1849
    .local v8, lDataId:J
    if-eqz p3, :cond_0

    .line 1850
    const-string v0, "data_id"

    invoke-virtual {p3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1852
    :cond_0
    const-string v0, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRawContactIdHasPhoto bHasPhoto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const-string v0, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRawContactIdHasPhoto lDataId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    .end local v8           #lDataId:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1856
    const/4 v7, 0x0

    .line 1858
    :cond_2
    return v6
.end method

.method public static isReadyOnlyContactsType(Ljava/lang/String;)Z
    .locals 9
    .parameter "type"

    .prologue
    .line 437
    const/4 v6, 0x0

    .line 438
    .local v6, readyOnly:Z
    if-eqz p0, :cond_0

    .line 439
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 441
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 442
    .local v7, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v7

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 443
    .local v0, adapterType:Landroid/content/SyncAdapterType;
    iget-object v8, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 444
    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->supportsUploading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x1

    .line 452
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v2           #cs:Landroid/content/IContentService;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #syncs:[Landroid/content/SyncAdapterType;
    :cond_0
    :goto_1
    return v6

    .line 444
    .restart local v0       #adapterType:Landroid/content/SyncAdapterType;
    .restart local v1       #arr$:[Landroid/content/SyncAdapterType;
    .restart local v2       #cs:Landroid/content/IContentService;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #syncs:[Landroid/content/SyncAdapterType;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 442
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 448
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v3

    .line 449
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final isSupportUCS2Filter()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public static isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 12
    .parameter "resolver"
    .parameter "accountType"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 504
    :goto_0
    return v10

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 473
    .local v8, result:Z
    if-eqz v6, :cond_2

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 476
    .local v9, visible:I
    if-lez v9, :cond_4

    move v8, v10

    .line 478
    .end local v9           #visible:I
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_2
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "group_visible"

    aput-object v0, v2, v11

    .line 484
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "System Group: My Contacts"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    const-string v0, "com.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 490
    if-eqz v6, :cond_3

    .line 492
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 493
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 494
    .local v7, mycontactGroupVisible:I
    if-lez v7, :cond_5

    move v8, v10

    .line 500
    .end local v7           #mycontactGroupVisible:I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v10, v8

    .line 504
    goto :goto_0

    .end local v2           #projection:[Ljava/lang/String;
    .restart local v9       #visible:I
    :cond_4
    move v8, v11

    .line 476
    goto :goto_1

    .end local v9           #visible:I
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v7       #mycontactGroupVisible:I
    :cond_5
    move v8, v11

    .line 494
    goto :goto_2

    .line 497
    .end local v7           #mycontactGroupVisible:I
    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    .line 500
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static joinDefaultDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, isCJK:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    const/4 v0, 0x1

    .line 233
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/htc/util/contacts/ContactsUtility;->conjectGivenFamilyName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseContactDefaultAction(Landroid/content/ContentResolver;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 19
    .parameter "resolver"
    .parameter "defaultAction"
    .parameter "generateActionUri"

    .prologue
    .line 2892
    const-string v2, "mailto:"

    .line 2893
    .local v2, MAIL_PATTERN:Ljava/lang/String;
    const-string v3, "sms:"

    .line 2894
    .local v3, SMS_PATTERM:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2896
    .local v6, bundle:Landroid/os/Bundle;
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v17, v6

    .line 2981
    :goto_1
    return-object v17

    .line 2900
    :cond_1
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2902
    .local v7, contactUriBase:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2904
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2905
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v17, "action_key"

    const-string v18, "ViewContact"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2909
    :cond_2
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2911
    .local v10, processingDefaultAction:Ljava/lang/String;
    const-string v17, "|"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 2913
    .local v9, nSaperateIndex:I
    if-gez v9, :cond_3

    .line 2914
    const/16 v17, 0x0

    goto :goto_1

    .line 2916
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2918
    .local v15, tag:Ljava/lang/String;
    add-int/lit8 v17, v9, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2921
    const-string v17, "|"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 2923
    if-gez v9, :cond_4

    .line 2924
    const/16 v17, 0x0

    goto :goto_1

    .line 2926
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2929
    .local v4, action:Ljava/lang/String;
    add-int/lit8 v17, v9, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2932
    .local v5, actionUriString:Ljava/lang/String;
    const-string v17, "mailto:"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2934
    const-string v17, "mailto:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 2937
    .local v14, sU:Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2938
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v17, "action_key"

    const-string v18, "SendMail"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const-string v17, "action_intent_action"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const-string v17, "action_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    if-eqz p2, :cond_0

    .line 2942
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 2943
    .local v11, sMailAddress:Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mailto:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2944
    .local v8, mailTo:Ljava/lang/String;
    const-string v17, "action_data"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    const-string v17, "action_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2948
    .end local v8           #mailTo:Ljava/lang/String;
    .end local v11           #sMailAddress:Ljava/lang/String;
    .end local v14           #sU:Ljava/lang/String;
    :cond_5
    const-string v17, "sms:"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2950
    const-string v17, "sms:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 2952
    .restart local v14       #sU:Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2953
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v17, "action_key"

    const-string v18, "SendMSG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    const-string v17, "action_intent_action"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    const-string v17, "action_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    if-eqz p2, :cond_0

    .line 2957
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 2958
    .local v13, sPhoneNumber:Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sms:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2959
    .local v12, sNewUri:Ljava/lang/String;
    const-string v17, "action_data"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    const-string v17, "action_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2964
    .end local v12           #sNewUri:Ljava/lang/String;
    .end local v13           #sPhoneNumber:Ljava/lang/String;
    .end local v14           #sU:Ljava/lang/String;
    :cond_6
    const-string v17, "Phone"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2965
    const-string v17, "mailto:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 2966
    .restart local v14       #sU:Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2967
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v17, "action_key"

    const-string v18, "Dialing"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    const-string v17, "action_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    const-string v17, "action_intent_action"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    const-string v17, "action_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    const/16 v16, 0x0

    .line 2972
    .local v16, tagRes:I
    const-string v17, "PhoneHome"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const v16, 0x104027c

    .line 2973
    :cond_7
    const-string v17, "PhoneMobile"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const v16, 0x104027d

    .line 2974
    :cond_8
    const-string v17, "PhoneWork"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const v16, 0x104027e

    .line 2975
    :cond_9
    const-string v17, "PhonePager"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const v16, 0x1040281

    .line 2976
    :cond_a
    const-string v17, "PhoneAssistant"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const v16, 0x104028e

    .line 2977
    :cond_b
    const-string v17, "action_call_type"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public static final parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 13
    .parameter "timeInRfc3339"
    .parameter "calendar"

    .prologue
    const/16 v12, 0xe

    const/16 v4, 0xc

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 3141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal RFC3339 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3145
    :cond_0
    const-string v10, ""

    .line 3146
    .local v10, processStr:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3147
    .local v8, indexOfT:I
    if-lez v8, :cond_2

    .line 3148
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 3154
    :goto_0
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3162
    .local v11, splitStr:[Ljava/lang/String;
    array-length v9, v11

    .line 3163
    .local v9, numOfItem:I
    const/4 v7, 0x0

    .line 3164
    .local v7, hasYearInfo:Z
    if-ne v9, v6, :cond_3

    .line 3165
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3170
    invoke-virtual {p1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 3171
    const/4 v7, 0x1

    .line 3185
    :cond_1
    :goto_1
    return v7

    .line 3151
    .end local v7           #hasYearInfo:Z
    .end local v9           #numOfItem:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_2
    move-object v10, p0

    goto :goto_0

    .line 3173
    .restart local v7       #hasYearInfo:Z
    .restart local v9       #numOfItem:I
    .restart local v11       #splitStr:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v9, v0, :cond_1

    .line 3177
    const/16 v1, 0x7b2

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3182
    invoke-virtual {p1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 3183
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static queryEditableAccount()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1802
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1803
    .local v6, supportContactAuthorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "com.android.contacts"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    const-string v9, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    const-string v9, "htceas"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    const-string v9, "com.htc.plurk.Users"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    const-string v9, "com.htc.htctwitter.Users"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1811
    .local v0, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 1813
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 1815
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 1816
    .local v7, sync:Landroid/content/SyncAdapterType;
    if-eqz v7, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1818
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1819
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1824
    .end local v7           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    const-string v9, "com.htc.android.pcsc"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #syncs:[Landroid/content/SyncAdapterType;
    :goto_1
    return-object v0

    .line 1825
    :catch_0
    move-exception v3

    .line 1826
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static queryMissedCallCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 20
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 842
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 843
    .local v7, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gtz v1, :cond_1

    .line 844
    const/4 v9, 0x0

    .line 897
    :cond_0
    :goto_0
    return v9

    .line 846
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 851
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 852
    .local v18, rawContactIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v10, :cond_4

    .line 853
    const-string v1, "mimetype"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 854
    .local v13, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 855
    .local v11, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 856
    .local v15, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 858
    .local v12, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 859
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 860
    .local v17, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 866
    .end local v17           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 869
    .end local v11           #idxData:I
    .end local v12           #idxDataId:I
    .end local v13           #idxMimetype:I
    .end local v15           #idxRawContactId:I
    :cond_4
    const-string v19, ""

    .line 870
    .local v19, rawIds:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 871
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 872
    .local v16, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 873
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 876
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 881
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6
    const/4 v9, 0x0

    .line 882
    .local v9, count:I
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 883
    const-string v1, "content://call_log/miss_calls_count_by_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_count"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id IN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 885
    if-eqz v10, :cond_0

    .line 887
    :try_start_1
    const-string v1, "_count"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 888
    .local v14, idxMissCount:I
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 889
    int-to-long v1, v9

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v9, v1

    goto :goto_3

    .line 893
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14           #idxMissCount:I
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static queryUnreadEmailCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 21
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 662
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 663
    .local v8, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    .line 664
    const/4 v10, 0x0

    .line 722
    :cond_0
    :goto_0
    return v10

    .line 666
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 671
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 672
    .local v12, emailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 673
    const-string v1, "mimetype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 674
    .local v15, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 675
    .local v13, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 676
    .local v16, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 678
    .local v14, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 680
    .local v20, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 686
    .end local v20           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 689
    .end local v13           #idxData:I
    .end local v14           #idxDataId:I
    .end local v15           #idxMimetype:I
    .end local v16           #idxRawContactId:I
    :cond_4
    const/4 v10, 0x0

    .line 690
    .local v10, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v7, addr:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 692
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 693
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 694
    .local v19, mailCount:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xf0

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    .line 695
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 696
    .local v18, mail:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    add-int/lit8 v19, v19, 0x1

    .line 699
    goto :goto_2

    .line 700
    .end local v18           #mail:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 701
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    .line 702
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 704
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 705
    const/4 v1, 0x0

    const-string v2, " _fromEmail in ("

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const/16 v1, 0x29

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    :cond_7
    const-string v1, "content://mail/allmessagesCountUnread"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 710
    if-eqz v11, :cond_0

    .line 712
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 713
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/2addr v10, v1

    .line 717
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static queryUnreadMessageCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 24
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 735
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 736
    .local v8, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    .line 737
    const/4 v10, 0x0

    .line 830
    :cond_0
    :goto_0
    return v10

    .line 739
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 745
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 746
    .local v23, phoneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 747
    .local v12, emailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_5

    .line 748
    const-string v1, "mimetype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 749
    .local v15, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 750
    .local v13, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 751
    .local v16, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 753
    .local v14, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 755
    .local v20, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 756
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_3
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 759
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 764
    .end local v20           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 768
    .end local v13           #idxData:I
    .end local v14           #idxDataId:I
    .end local v15           #idxMimetype:I
    .end local v16           #idxRawContactId:I
    :cond_5
    const/4 v10, 0x0

    .line 769
    .local v10, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .local v7, addr:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 771
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 772
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 773
    .local v22, phoneCount:I
    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 774
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 775
    .local v21, number:Ljava/lang/String;
    const-string v1, "PHONE_NUMBERS_EQUAL"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v1, "(address,"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-static/range {v21 .. v21}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const/16 v1, 0x29

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 779
    add-int/lit8 v22, v22, 0x1

    .line 780
    const/16 v1, 0xf0

    move/from16 v0, v22

    if-ge v0, v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 781
    :cond_7
    const/16 v22, 0x0

    .line 782
    const/4 v1, 0x0

    const-string v2, " ( "

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v1, " ) AND read = 0 "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v1, " AND ( sms_type=1 OR mms_type=130 OR mms_type=132) "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const-string v1, "content://mms-sms/allmessages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 787
    if-eqz v11, :cond_6

    .line 789
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/2addr v10, v1

    .line 792
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 796
    :cond_8
    const-string v1, " OR "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 800
    .end local v17           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #phoneCount:I
    :cond_9
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 802
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 803
    .restart local v17       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 804
    .local v19, mailCount:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xf0

    move/from16 v0, v19

    if-ge v0, v1, :cond_a

    .line 805
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 806
    .local v18, mail:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    add-int/lit8 v19, v19, 0x1

    .line 809
    goto :goto_3

    .line 810
    .end local v18           #mail:Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 811
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_b

    .line 812
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 814
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 815
    const/4 v1, 0x0

    const-string v2, " address in ("

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const-string v1, ") AND read = 0 AND msg_type = 0 AND ( mms_type=130 OR mms_type=132 )"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_c
    const-string v1, "content://mms-sms/allmessages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 820
    if-eqz v11, :cond_0

    .line 822
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    add-int/2addr v10, v1

    .line 825
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static setContactUpdatesAndEventsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "contactUri"

    .prologue
    .line 1086
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1087
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1088
    .local v1, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 1089
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1091
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1092
    const-string v5, "is_read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    sget-object v5, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "contact"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v1           #id:J
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ContactsUtility"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final setContactsAsFavorite(Landroid/content/ContentResolver;JZ)I
    .locals 6
    .parameter "resolver"
    .parameter "contactId"
    .parameter "isSet"

    .prologue
    .line 562
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 563
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 564
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "starred"

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 567
    .local v0, counts:I
    return v0

    .line 564
    .end local v0           #counts:I
    .end local v3           #where:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final setContactsAsFavorite(Landroid/content/ContentResolver;J)Z
    .locals 18
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    .line 572
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 573
    .local v3, uri:Landroid/net/Uri;
    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 574
    .local v13, contactUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "starred"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const/16 v16, 0x0

    .line 577
    .local v16, result:Z
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 578
    .local v14, count:I
    if-lez v14, :cond_4

    .line 580
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 581
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Starred in Android"

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 587
    .local v10, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 588
    .local v15, gSourceId:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 589
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 592
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 595
    :cond_1
    if-nez v15, :cond_2

    .line 596
    const/4 v2, 0x0

    .line 623
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #gSourceId:Ljava/lang/String;
    :goto_0
    return v2

    .line 599
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #gSourceId:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "com.google"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, selection:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "account_name"

    aput-object v4, v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 609
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 610
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v2, "group_sourceid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-eqz v10, :cond_4

    .line 614
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 615
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 616
    .local v11, cId:J
    const-string v2, "raw_contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 618
    const/16 v16, 0x1

    .line 620
    .end local v11           #cId:J
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v7           #selection:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #gSourceId:Ljava/lang/String;
    :cond_4
    move/from16 v2, v16

    .line 623
    goto/16 :goto_0
.end method

.method public static final spliteDisplayName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter "displayName"

    .prologue
    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 268
    move-object v2, p0

    .line 269
    .local v2, giveName:Ljava/lang/String;
    const-string v1, ""

    .line 272
    .local v1, familyName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 275
    .local v4, length:I
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 276
    .local v3, index:I
    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 277
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    .end local v3           #index:I
    .end local v4           #length:I
    :cond_0
    :goto_0
    const-string v5, "data2"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v5, "data3"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-object v0

    .line 283
    :cond_1
    :try_start_1
    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 285
    .restart local v4       #length:I
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 286
    .restart local v3       #index:I
    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 287
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 288
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 294
    .end local v3           #index:I
    .end local v4           #length:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
