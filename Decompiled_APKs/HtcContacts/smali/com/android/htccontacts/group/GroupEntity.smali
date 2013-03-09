.class public Lcom/android/htccontacts/group/GroupEntity;
.super Ljava/lang/Object;
.source "GroupEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupEntity$GroupData;,
        Lcom/android/htccontacts/group/GroupEntity$RawContactData;,
        Lcom/android/htccontacts/group/GroupEntity$AccountData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_APPLY:I = 0x190

.field static final RAW_CONTACT_AccountNameIdx:I = 0x1

.field static final RAW_CONTACT_AccountTypeIdx:I = 0x2

.field static final RAW_CONTACT_CONTACTIdx:I = 0x3

.field static final RAW_CONTACT_DATA_SETIdx:I = 0x5

.field static final RAW_CONTACT_DELETEDIdx:I = 0x4

.field static final RAW_CONTACT_IDIdx:I = 0x0

.field static final TAG:Ljava/lang/String; = "GroupEntity"

.field public static final mSelectionNotShowGooglePlus:Ljava/lang/String; = " ((groups.account_type= \'com.google\' AND (groups.data_set is null or groups.data_set<>\'plus\')) OR ( groups.account_type<>\'com.google\'))"

.field static final sContactProjection:[Ljava/lang/String;

.field static final sGroupProjection:[Ljava/lang/String;

.field static final sRawContactProjection:[Ljava/lang/String;


# instance fields
.field public mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEntity$AccountData;",
            ">;"
        }
    .end annotation
.end field

.field public mAfterContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mGroupIsReadOnly:I

.field public mGroupsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegData:[B

.field public mPhotoRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/htccontacts/group/GroupEntity;->sContactProjection:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/group/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "account_name"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/group/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mGroupIsReadOnly:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    .line 1445
    return-void
.end method

.method private addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 26
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEntity$RawContactData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 834
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 835
    const/4 v2, 0x1

    .line 913
    :goto_0
    return v2

    .line 838
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v21, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v20, 0x0

    .line 840
    .local v20, operation:Landroid/content/ContentProviderOperation;
    const/4 v10, 0x0

    .line 842
    .local v10, applyCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " And ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "system_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<>\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "system_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/group/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 844
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 845
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 847
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 848
    .local v16, id:J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, accountName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 850
    .local v9, accountType:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 852
    .local v24, sourceId:Ljava/lang/String;
    new-instance v13, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    invoke-direct {v13, v8, v9}, Lcom/android/htccontacts/group/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .local v13, data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/group/GroupEntity$RawContactData;

    .line 855
    .local v23, rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    new-instance v22, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/group/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    .local v22, rawdata:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/group/GroupEntity$AccountData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 862
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 863
    .local v25, values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/android/htccontacts/group/GroupEntity$RawContactData;->_Id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 865
    const-string v2, "data1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 868
    const-string v2, "data5"

    const-string v3, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/android/htccontacts/group/GroupEntity$RawContactData;->_Id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 873
    .local v18, insertGroupMemberUri:Landroid/net/Uri;
    const-string v2, "data"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 877
    .local v19, insertUri:Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 878
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 879
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    .line 880
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v10, v10, 0x1

    .line 882
    const/16 v2, 0x190

    if-lt v10, v2, :cond_2

    .line 884
    :try_start_0
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 885
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 886
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 887
    :catch_0
    move-exception v14

    .line 888
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 895
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v22           #rawdata:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v23           #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 897
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v13           #data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v24           #sourceId:Ljava/lang/String;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 898
    const/4 v12, 0x0

    .line 899
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 901
    :try_start_1
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 902
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 903
    const/4 v10, 0x0

    .line 909
    :cond_6
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 913
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 904
    :catch_1
    move-exception v14

    .line 905
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 906
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 889
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v11       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v13       #data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #id:J
    .restart local v18       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v19       #insertUri:Landroid/net/Uri;
    .restart local v22       #rawdata:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .restart local v23       #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .restart local v24       #sourceId:Ljava/lang/String;
    .restart local v25       #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private static final broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "groupIsReadOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1178
    .local p2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v1, "contact_id_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1182
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1186
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1161
    if-eqz p0, :cond_0

    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1168
    if-eqz p0, :cond_0

    .line 1169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1174
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private clearAllGroupIfNoAnyMember(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 947
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/htccontacts/group/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 948
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 950
    .local v1, hasNoMember:Z
    if-eqz v0, :cond_1

    .line 951
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 952
    const/4 v1, 0x1

    .line 953
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 957
    :cond_1
    if-eqz v1, :cond_2

    .line 958
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupEntity;->deleteAllGroups(Landroid/content/ContentResolver;)V

    .line 960
    :cond_2
    return-void
.end method

.method private createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 27
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEntity$AccountData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 973
    .local p2, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$AccountData;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v19, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .line 975
    .local v18, operation:Landroid/content/ContentProviderOperation;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 977
    .local v26, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v14, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$GroupData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    .line 979
    .local v8, account:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/htccontacts/group/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 985
    const/16 v25, 0x1

    .line 986
    .local v25, visible:I
    iget-object v3, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 987
    iget-object v3, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 988
    .local v23, value:Ljava/lang/Integer;
    if-nez v23, :cond_3

    .line 989
    iget-object v3, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v25, 0x1

    .line 990
    :goto_1
    iget-object v3, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .end local v23           #value:Ljava/lang/Integer;
    :cond_1
    :goto_2
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 998
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v3, "account_type"

    iget-object v4, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v3, "title"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v3, "notes"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v3, "group_visible"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v3, "group_is_read_only"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/htccontacts/group/GroupEntity;->mGroupIsReadOnly:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1007
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1008
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    .line 1009
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v2, Lcom/android/htccontacts/group/GroupEntity$GroupData;

    iget-object v3, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/group/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1014
    .local v2, data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 989
    .end local v2           #data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v23       #value:Ljava/lang/Integer;
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 993
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto :goto_2

    .line 1018
    .end local v8           #account:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v23           #value:Ljava/lang/Integer;
    .end local v25           #visible:I
    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1019
    :cond_5
    const/4 v3, 0x0

    .line 1046
    .end local v15           #i$:Ljava/util/Iterator;
    :goto_3
    return v3

    .line 1022
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_0
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v21

    .line 1023
    .local v21, results:[Landroid/content/ContentProviderResult;
    const/16 v16, 0x0

    .line 1024
    .local v16, index:I
    if-nez v21, :cond_7

    .line 1025
    const/4 v3, 0x0

    goto :goto_3

    .line 1027
    :cond_7
    move-object/from16 v9, v21

    .local v9, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    aget-object v20, v9, v15

    .line 1028
    .local v20, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 1029
    .local v22, uri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 1030
    .local v12, gid:J
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/group/GroupEntity$GroupData;

    .line 1031
    .restart local v2       #data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    if-eqz v2, :cond_8

    .line 1032
    iput-wide v12, v2, Lcom/android/htccontacts/group/GroupEntity$GroupData;->_Id:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1034
    :cond_8
    add-int/lit8 v16, v16, 0x1

    .line 1027
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1036
    .end local v2           #data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v9           #arr$:[Landroid/content/ContentProviderResult;
    .end local v12           #gid:J
    .end local v15           #i$:I
    .end local v16           #index:I
    .end local v17           #len$:I
    .end local v20           #resultData:Landroid/content/ContentProviderResult;
    .end local v21           #results:[Landroid/content/ContentProviderResult;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1038
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1039
    const/4 v3, 0x0

    goto :goto_3

    .line 1040
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 1042
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1043
    const/4 v3, 0x0

    goto :goto_3

    .line 1046
    .end local v11           #e:Landroid/content/OperationApplicationException;
    .restart local v9       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v15       #i$:I
    .restart local v16       #index:I
    .restart local v17       #len$:I
    .restart local v21       #results:[Landroid/content/ContentProviderResult;
    :cond_9
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private deleteAllGroups(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 965
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 969
    return-void
.end method

.method private dumpContactList()V
    .locals 3

    .prologue
    .line 746
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAfterContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/htccontacts/group/GroupEntity;
    .locals 29
    .parameter "resolver"
    .parameter "targetName"

    .prologue
    .line 221
    sget-object v28, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 222
    .local v28, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 223
    .local v24, pattern:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "deleted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 0 And ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "system_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<>\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Contacts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "system_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is null )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, selection:Ljava/lang/String;
    const/16 v22, 0x0

    .line 225
    .local v22, iterator:Landroid/content/EntityIterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v18, groupsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupDelta;>;"
    new-instance v17, Lcom/android/htccontacts/group/GroupEntity;

    invoke-direct/range {v17 .. v17}, Lcom/android/htccontacts/group/GroupEntity;-><init>()V

    .line 228
    .local v17, groupEntity:Lcom/android/htccontacts/group/GroupEntity;
    const-string v2, "content://com.android.contacts/groups_raw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 232
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 233
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 234
    .local v21, idIdx:I
    const-string v2, "account_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 235
    .local v9, accountNameIdx:I
    const-string v2, "account_type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 236
    .local v10, accountTypeIdx:I
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 237
    .local v27, titleIdx:I
    const-string v2, "sourceid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 238
    .local v26, sourceIdIdx:I
    const-string v2, "system_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 239
    .local v8, SystemIdIdx:I
    const-string v2, "notes"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 240
    .local v23, notesIdx:I
    const-string v2, "deleted"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 241
    .local v15, deletedIdx:I
    const-string v2, "photo"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 245
    .local v25, photoIdx:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    new-instance v16, Lcom/android/htccontacts/group/GroupDelta;

    invoke-direct/range {v16 .. v16}, Lcom/android/htccontacts/group/GroupDelta;-><init>()V

    .line 248
    .local v16, delta:Lcom/android/htccontacts/group/GroupDelta;
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 249
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 250
    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 251
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 253
    const-string v2, "com.htc.android.myphonebook"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 255
    .local v11, bytes:[B
    if-eqz v11, :cond_1

    array-length v2, v11

    if-lez v2, :cond_1

    .line 256
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 261
    .end local v11           #bytes:[B
    :cond_1
    :goto_1
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/android/htccontacts/group/GroupDelta;->mId:J

    .line 262
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mIsDeleted:I

    .line 263
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 265
    .restart local v11       #bytes:[B
    if-eqz v11, :cond_2

    array-length v2, v11

    if-lez v2, :cond_2

    .line 266
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mBitmap:Landroid/graphics/Bitmap;

    .line 269
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v14, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-direct {v14, v2, v4}, Lcom/android/htccontacts/group/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v14, data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 276
    .end local v11           #bytes:[B
    .end local v14           #data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v16           #delta:Lcom/android/htccontacts/group/GroupDelta;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 259
    .restart local v16       #delta:Lcom/android/htccontacts/group/GroupDelta;
    :cond_3
    :try_start_1
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupDelta;->mNotes:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 276
    .end local v16           #delta:Lcom/android/htccontacts/group/GroupDelta;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v8           #SystemIdIdx:I
    .end local v9           #accountNameIdx:I
    .end local v10           #accountTypeIdx:I
    .end local v15           #deletedIdx:I
    .end local v21           #idIdx:I
    .end local v23           #notesIdx:I
    .end local v25           #photoIdx:I
    .end local v26           #sourceIdIdx:I
    .end local v27           #titleIdx:I
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 281
    const/16 v17, 0x0

    .line 299
    .end local v17           #groupEntity:Lcom/android/htccontacts/group/GroupEntity;
    :goto_2
    return-object v17

    .line 284
    .restart local v17       #groupEntity:Lcom/android/htccontacts/group/GroupEntity;
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/htccontacts/group/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 285
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    .line 287
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/htccontacts/group/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 288
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 289
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 291
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 292
    .local v19, id:J
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 295
    .end local v19           #id:J
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/android/htccontacts/group/GroupEntity;
    .locals 31
    .parameter "resolver"
    .parameter "targetName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 130
    sget-object v28, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 132
    .local v28, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 133
    .local v7, selectionArg:[Ljava/lang/String;
    const-string v6, "title= ?  AND deleted = 0 And (system_id<>\'Contacts\' or system_id is null )"

    .line 135
    .local v6, selection:Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v7, v3

    .line 137
    const/16 v23, 0x0

    .line 138
    .local v23, iterator:Landroid/content/EntityIterator;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v19, groupsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupDelta;>;"
    new-instance v18, Lcom/android/htccontacts/group/GroupEntity;

    invoke-direct/range {v18 .. v18}, Lcom/android/htccontacts/group/GroupEntity;-><init>()V

    .line 141
    .local v18, groupEntity:Lcom/android/htccontacts/group/GroupEntity;
    const-string v3, "content://com.android.contacts/groups_raw"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 144
    .local v4, queryUri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 145
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_5

    .line 146
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 147
    .local v22, idIdx:I
    const-string v3, "account_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 148
    .local v10, accountNameIdx:I
    const-string v3, "account_type"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 149
    .local v11, accountTypeIdx:I
    const-string v3, "title"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 150
    .local v27, titleIdx:I
    const-string v3, "sourceid"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 151
    .local v26, sourceIdIdx:I
    const-string v3, "system_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 152
    .local v9, SystemIdIdx:I
    const-string v3, "notes"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 153
    .local v24, notesIdx:I
    const-string v3, "deleted"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 154
    .local v16, deletedIdx:I
    const-string v3, "photo"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 158
    .local v25, photoIdx:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    new-instance v17, Lcom/android/htccontacts/group/GroupDelta;

    invoke-direct/range {v17 .. v17}, Lcom/android/htccontacts/group/GroupDelta;-><init>()V

    .line 161
    .local v17, delta:Lcom/android/htccontacts/group/GroupDelta;
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 162
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 163
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 164
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 166
    const-string v3, "com.htc.android.myphonebook"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 168
    .local v12, bytes:[B
    if-eqz v12, :cond_1

    array-length v3, v12

    if-lez v3, :cond_1

    .line 169
    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 174
    .end local v12           #bytes:[B
    :cond_1
    :goto_1
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/htccontacts/group/GroupDelta;->mId:J

    .line 175
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mIsDeleted:I

    .line 176
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 178
    .restart local v12       #bytes:[B
    if-eqz v12, :cond_2

    array-length v3, v12

    if-lez v3, :cond_2

    .line 179
    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mBitmap:Landroid/graphics/Bitmap;

    .line 182
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v15, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-direct {v15, v3, v5}, Lcom/android/htccontacts/group/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v15, data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 189
    .end local v12           #bytes:[B
    .end local v15           #data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v17           #delta:Lcom/android/htccontacts/group/GroupDelta;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 172
    .restart local v17       #delta:Lcom/android/htccontacts/group/GroupDelta;
    :cond_3
    :try_start_1
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/htccontacts/group/GroupDelta;->mNotes:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 189
    .end local v17           #delta:Lcom/android/htccontacts/group/GroupDelta;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 193
    .end local v9           #SystemIdIdx:I
    .end local v10           #accountNameIdx:I
    .end local v11           #accountTypeIdx:I
    .end local v16           #deletedIdx:I
    .end local v22           #idIdx:I
    .end local v24           #notesIdx:I
    .end local v25           #photoIdx:I
    .end local v26           #sourceIdIdx:I
    .end local v27           #titleIdx:I
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 194
    const/16 v18, 0x0

    .line 212
    .end local v18           #groupEntity:Lcom/android/htccontacts/group/GroupEntity;
    :goto_2
    return-object v18

    .line 197
    .restart local v18       #groupEntity:Lcom/android/htccontacts/group/GroupEntity;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/htccontacts/group/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    .line 199
    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/htccontacts/group/GroupEntity;->mGroupIsReadOnly:I

    .line 200
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/htccontacts/group/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 201
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_9

    .line 202
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 204
    :cond_7
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 205
    .local v20, id:J
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 208
    .end local v20           #id:J
    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_9
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private static getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .parameter "columnName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 402
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 403
    :cond_0
    const-string v4, "0"

    .line 419
    :goto_0
    return-object v4

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 408
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 409
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 410
    .local v2, id:J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 411
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_2

    .line 412
    const-string v6, " ,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    .end local v2           #id:J
    :cond_3
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v6, " ) "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getNameWhereWithArgMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const-string v0, " ( title= ? AND (system_id<>\'Contacts\' or system_id is null )) "

    return-object v0
.end method

.method public static getWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null ))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWhere(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "And "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null ))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertNewGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "context"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1189
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/htccontacts/group/GroupEntity;->insertNewGroupInner(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1190
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 1191
    invoke-static {p0}, Lcom/android/htccontacts/group/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;)V

    .line 1193
    :cond_0
    return v0
.end method

.method private static insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .parameter "resolver"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    .line 1102
    .local v16, visible:I
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1104
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v2, "notes"

    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v2, "account_type"

    move-object/from16 v0, p4

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const-string v2, "should_sync"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    const-string v2, "group_visible"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    const-string v2, "group_is_read_only"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    const-wide/16 v9, -0x1

    .line 1121
    .local v9, gId:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .local v13, sbSelection:Ljava/lang/StringBuilder;
    const-string v2, "account_name"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const-string v2, "account_type"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const-string v2, "title"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v2, "notes"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    const-string v2, " = ? "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    const/4 v2, 0x1

    aput-object p4, v6, v2

    const/4 v2, 0x2

    aput-object p5, v6, v2

    const/4 v2, 0x3

    aput-object p5, v6, v2

    .line 1132
    .local v6, selectionArgs:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1133
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1134
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1135
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1137
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1139
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v9

    if-lez v2, :cond_2

    .line 1140
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1141
    .local v11, groupUri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1145
    .end local v11           #groupUri:Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1146
    .local v12, rawContactUri:Landroid/net/Uri;
    const-string v2, "data"

    invoke-static {v12, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1148
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1149
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v2, "data1"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1152
    if-eqz p4, :cond_3

    const-string v2, "com.google"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1153
    const-string v2, "data5"

    const-string v3, "1"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1157
    const/4 v2, 0x1

    return v2

    .line 1099
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #gId:J
    .end local v12           #rawContactUri:Landroid/net/Uri;
    .end local v13           #sbSelection:Ljava/lang/StringBuilder;
    .end local v14           #uri:Landroid/net/Uri;
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v16           #visible:I
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static insertNewGroupForARawContact(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1087
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/group/GroupEntity;->insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 1088
    .local v7, result:Z
    if-eqz v7, :cond_0

    .line 1089
    invoke-static {p0, p5, p6}, Lcom/android/htccontacts/group/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1091
    :cond_0
    return v7
.end method

.method private static insertNewGroupInner(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 43
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1207
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v34, 0x0

    .line 1208
    .local v34, result:Z
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v32, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1213
    .local v31, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$AccountData;>;"
    const/16 v26, 0x0

    .line 1214
    .local v26, jpegData:[B
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1215
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v37, v6, 0x4

    .line 1216
    .local v37, size:I
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1217
    .local v30, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v7, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1219
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1220
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    .line 1221
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1222
    const/16 v30, 0x0

    .line 1226
    .end local v30           #out:Ljava/io/ByteArrayOutputStream;
    .end local v37           #size:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v32

    move-object/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/group/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1234
    :goto_1
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 1236
    .local v42, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v29, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v28, 0x0

    .line 1240
    .local v28, operation:Landroid/content/ContentProviderOperation;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v20, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$GroupData;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    .line 1242
    .local v11, account:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/htccontacts/group/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1245
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1246
    .local v40, values:Landroid/content/ContentValues;
    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1247
    const-string v6, "account_name"

    iget-object v7, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v6, "account_type"

    iget-object v7, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :cond_2
    const-string v6, "title"

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v6, "notes"

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const/16 v41, 0x1

    .line 1255
    .local v41, visible:I
    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1256
    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 1257
    .local v39, value:Ljava/lang/Integer;
    if-nez v39, :cond_7

    .line 1258
    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v41, 0x1

    .line 1259
    :goto_3
    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    .end local v39           #value:Ljava/lang/Integer;
    :cond_3
    :goto_4
    const-string v6, "should_sync"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    const-string v6, "group_visible"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1269
    if-eqz v26, :cond_4

    .line 1270
    const-string v6, "photo"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1274
    :cond_4
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 1275
    .local v14, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1276
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1277
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    new-instance v5, Lcom/android/htccontacts/group/GroupEntity$GroupData;

    iget-object v6, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v7, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v8, v11, Lcom/android/htccontacts/group/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    const-wide/16 v9, -0x1

    invoke-direct/range {v5 .. v10}, Lcom/android/htccontacts/group/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1282
    .local v5, data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1230
    .end local v5           #data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v11           #account:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$GroupData;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v28           #operation:Landroid/content/ContentProviderOperation;
    .end local v29           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v41           #visible:I
    .end local v42           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    new-instance v16, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    const-string v6, "pcsc"

    const-string v7, "com.htc.android.pcsc"

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Lcom/android/htccontacts/group/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    .local v16, gData:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1258
    .end local v16           #gData:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .restart local v11       #account:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .restart local v20       #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$GroupData;>;"
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v28       #operation:Landroid/content/ContentProviderOperation;
    .restart local v29       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v39       #value:Ljava/lang/Integer;
    .restart local v40       #values:Landroid/content/ContentValues;
    .restart local v41       #visible:I
    .restart local v42       #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/16 v41, 0x0

    goto :goto_3

    .line 1262
    :cond_7
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v41

    goto :goto_4

    .line 1286
    .end local v11           #account:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v39           #value:Ljava/lang/Integer;
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v41           #visible:I
    :cond_8
    :try_start_1
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v36

    .line 1287
    .local v36, results:[Landroid/content/ContentProviderResult;
    if-nez v36, :cond_9

    .line 1288
    const/4 v6, 0x0

    .line 1379
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    :goto_5
    return v6

    .line 1290
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v36       #results:[Landroid/content/ContentProviderResult;
    :cond_9
    const/16 v23, 0x0

    .line 1291
    .local v23, index:I
    move-object/from16 v13, v36

    .local v13, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v13

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    aget-object v35, v13, v21

    .line 1292
    .local v35, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v38, v0

    .line 1293
    .local v38, uri:Landroid/net/Uri;
    invoke-static/range {v38 .. v38}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 1294
    .local v18, gid:J
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/group/GroupEntity$GroupData;

    .line 1295
    .restart local v5       #data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    if-eqz v5, :cond_a

    .line 1296
    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/android/htccontacts/group/GroupEntity$GroupData;->_Id:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1298
    :cond_a
    add-int/lit8 v23, v23, 0x1

    .line 1291
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1300
    .end local v5           #data:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v18           #gid:J
    .end local v35           #resultData:Landroid/content/ContentProviderResult;
    .end local v38           #uri:Landroid/net/Uri;
    :cond_b
    const/16 v34, 0x1

    .line 1320
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 1323
    const/4 v12, 0x0

    .line 1325
    .local v12, applyCount:I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v21           #i$:I
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/htccontacts/group/GroupEntity$GroupData;

    .line 1326
    .local v17, gdata:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/htccontacts/group/GroupEntity$RawContactData;

    .line 1327
    .local v33, rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupEntity$GroupData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1328
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1329
    .restart local v40       #values:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v6, "raw_contact_id"

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/android/htccontacts/group/GroupEntity$RawContactData;->_Id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1331
    const-string v6, "data1"

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/android/htccontacts/group/GroupEntity$GroupData;->_Id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1333
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/htccontacts/group/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1334
    const-string v6, "data5"

    const-string v7, "1"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_e
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/android/htccontacts/group/GroupEntity$RawContactData;->_Id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 1338
    .local v24, insertGroupMemberUri:Landroid/net/Uri;
    const-string v6, "data"

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 1341
    .local v25, insertUri:Landroid/net/Uri;
    const/16 v34, 0x1

    .line 1345
    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 1346
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1347
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1348
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    add-int/lit8 v12, v12, 0x1

    .line 1350
    const/16 v6, 0x190

    if-lt v12, v6, :cond_d

    .line 1352
    :try_start_2
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1354
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1355
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1301
    .end local v12           #applyCount:I
    .end local v13           #arr$:[Landroid/content/ContentProviderResult;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #gdata:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #index:I
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v27           #len$:I
    .end local v33           #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    .end local v40           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 1303
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1304
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1305
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 1307
    .local v15, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1308
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1356
    .end local v15           #e:Landroid/content/OperationApplicationException;
    .restart local v12       #applyCount:I
    .restart local v13       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v17       #gdata:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v23       #index:I
    .restart local v24       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v25       #insertUri:Landroid/net/Uri;
    .restart local v27       #len$:I
    .restart local v33       #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .restart local v36       #results:[Landroid/content/ContentProviderResult;
    .restart local v40       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v15

    .line 1357
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    .line 1366
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v17           #gdata:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v33           #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 1368
    :try_start_3
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1370
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1371
    const/4 v12, 0x0

    .line 1377
    :cond_10
    :goto_8
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    move/from16 v6, v34

    .line 1379
    goto/16 :goto_5

    .line 1372
    :catch_3
    move-exception v15

    .line 1373
    .restart local v15       #e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 1374
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v6

    goto :goto_8

    .line 1358
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v17       #gdata:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v24       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v25       #insertUri:Landroid/net/Uri;
    .restart local v33       #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .restart local v40       #values:Landroid/content/ContentValues;
    :catch_5
    move-exception v6

    goto/16 :goto_7

    .line 1223
    .end local v12           #applyCount:I
    .end local v13           #arr$:[Landroid/content/ContentProviderResult;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #gdata:Lcom/android/htccontacts/group/GroupEntity$GroupData;
    .end local v20           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$GroupData;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #index:I
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v27           #len$:I
    .end local v28           #operation:Landroid/content/ContentProviderOperation;
    .end local v29           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v33           #rdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v42           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v30       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v37       #size:I
    :catch_6
    move-exception v6

    goto/16 :goto_0
.end method

.method private static isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    const/4 v2, 0x1

    .line 1051
    if-nez p1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v2

    .line 1055
    :cond_1
    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.socialnetwork.flickr"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.htctwitter"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.facebook.auth.login"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1065
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 1066
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v1, :cond_2

    .line 1067
    invoke-virtual {v1, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    .line 1070
    .local v0, source:Lcom/android/htccontacts/model/AccountType;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1081
    .end local v0           #source:Lcom/android/htccontacts/model/AccountType;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEntity$RawContactData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEntity$AccountData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, inContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    .local p4, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$AccountData;>;"
    const-string v5, "contact_id IN (  "

    .line 316
    .local v5, selection:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 318
    .local v12, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 319
    .local v21, size:I
    if-eqz p2, :cond_0

    if-nez v21, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 324
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 325
    .local v13, cid:J
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 327
    add-int/lit8 v2, v21, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 328
    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 331
    .end local v13           #cid:J
    :cond_3
    const-string v2, " )  "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/group/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 335
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$AccountData;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v20, rawContactlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    if-eqz v15, :cond_7

    .line 339
    :cond_4
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 340
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 341
    .local v10, rawId:J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, account_name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 344
    .local v8, account_type:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, dataSet:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 348
    .local v18, idDelete:I
    if-gtz v18, :cond_4

    .line 352
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/htccontacts/group/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 356
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 357
    new-instance v6, Lcom/android/htccontacts/group/GroupEntity$RawContactData;

    invoke-direct/range {v6 .. v11}, Lcom/android/htccontacts/group/GroupEntity$RawContactData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 358
    .local v6, rawdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v6           #rawdata:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    :cond_5
    new-instance v16, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Lcom/android/htccontacts/group/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v16, data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 362
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 365
    .end local v7           #account_name:Ljava/lang/String;
    .end local v8           #account_type:Ljava/lang/String;
    .end local v9           #dataSet:Ljava/lang/String;
    .end local v10           #rawId:J
    .end local v16           #data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    .end local v18           #idDelete:I
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_7
    if-eqz p3, :cond_8

    .line 369
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    :cond_8
    if-eqz p4, :cond_0

    .line 372
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 303
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 304
    .local v1, attachuri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 305
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 306
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 307
    sget-object v2, Lcom/android/htccontacts/group/GroupEntity;->sContactProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 308
    .local v7, c:Landroid/database/Cursor;
    return-object v7
.end method

.method private removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/group/GroupEntity$RawContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    const-string v7, "content://com.android.contacts/groups_member/name"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 921
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, pattern:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 924
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  And ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "system_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<>\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Contacts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "system_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null ))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    const-string v4, "raw_contact_id IN ( "

    .line 928
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 929
    .local v5, size:I
    if-gtz v5, :cond_0

    .line 944
    :goto_0
    return-void

    .line 933
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 934
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/group/GroupEntity$RawContactData;

    .line 935
    .local v1, data:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/htccontacts/group/GroupEntity$RawContactData;->_Id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 936
    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_1

    .line 937
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 933
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 940
    .end local v1           #data:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 941
    const-string v7, "  AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 942
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V
    .locals 22
    .parameter "context"
    .parameter
    .parameter
    .parameter "newPhoto"
    .parameter "bChangePhoto"
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
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, toBeAddedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toBeRemovedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v5, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 426
    .local v10, id:Ljava/lang/Long;
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    .end local v10           #id:Ljava/lang/Long;
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v13, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 431
    .restart local v10       #id:Ljava/lang/Long;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    .end local v10           #id:Ljava/lang/Long;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 440
    .local v14, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v16

    .line 441
    .local v16, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 455
    .local v4, accoutsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    sget-object v17, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 458
    .local v17, updateUri:Landroid/net/Uri;
    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/android/htccontacts/group/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 459
    .local v19, where:Ljava/lang/String;
    new-instance v18, Landroid/content/ContentValues;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 460
    .local v18, values:Landroid/content/ContentValues;
    const-string v20, "starred"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 464
    const-string v20, "starred"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v20, "_id"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/android/htccontacts/group/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    .line 466
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 470
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_3

    .line 471
    sget-object v17, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    mul-int v20, v20, v21

    mul-int/lit8 v15, v20, 0x4

    .line 473
    .local v15, size:I
    if-lez v15, :cond_4

    .line 474
    const/4 v11, 0x0

    .line 475
    .local v11, jpegData:[B
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 476
    .local v12, out:Ljava/io/ByteArrayOutputStream;
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v21, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 478
    :try_start_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 479
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 480
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 481
    if-eqz v11, :cond_2

    .line 482
    const-string v20, "photo"

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_2
    :goto_2
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    .end local v11           #jpegData:[B
    .end local v12           #out:Ljava/io/ByteArrayOutputStream;
    .end local v15           #size:I
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 496
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v7, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 498
    .local v6, data:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v8, v0

    .line 499
    .local v8, deletedPerson:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 489
    .end local v6           #data:Ljava/lang/Long;
    .end local v7           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #deletedPerson:I
    .restart local v15       #size:I
    :cond_4
    sget-object v17, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 490
    const-string v21, "photo"

    const/16 v20, 0x0

    check-cast v20, [B

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 491
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 501
    .end local v15           #size:I
    .restart local v7       #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const-string v20, "Favorite_8656150684447252476_6727701920173350445"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Lcom/android/htccontacts/group/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 506
    .end local v7           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    return-void

    .line 504
    :cond_6
    const-string v20, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 484
    .restart local v11       #jpegData:[B
    .restart local v12       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #size:I
    :catch_0
    move-exception v20

    goto :goto_2
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "resolver"
    .parameter "newTitle"

    .prologue
    .line 699
    const-string v3, "content://com.android.contacts/group_with_favorite"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 700
    .local v1, updateGroupUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 701
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/htccontacts/group/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 704
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 707
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 709
    :cond_1
    return-void
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "resolver"
    .parameter "newTitle"
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    .line 712
    const-string v6, "content://com.android.contacts/group_with_favorite"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 714
    .local v4, updateGroupUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 715
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 716
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/htccontacts/group/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 718
    const-string v6, "title"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    const/4 v0, 0x0

    .line 722
    .local v0, jpegData:[B
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 723
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    mul-int/lit8 v3, v6, 0x4

    .line 724
    .local v3, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 725
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v8, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    invoke-virtual {p3, v6, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 727
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 728
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 729
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 730
    if-eqz v0, :cond_1

    .line 731
    const-string v6, "photo"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 740
    invoke-virtual {p1, v4, v5, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    :cond_2
    return-void

    .line 737
    :cond_3
    const-string v8, "photo"

    move-object v6, v7

    check-cast v6, [B

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 733
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p3}, Lcom/android/htccontacts/group/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/htccontacts/group/GroupEntity;

    move-result-object v0

    .line 684
    .local v0, entity:Lcom/android/htccontacts/group/GroupEntity;
    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 692
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 694
    invoke-direct {v0, p0, p4}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p3}, Lcom/android/htccontacts/group/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/htccontacts/group/GroupEntity;

    move-result-object v0

    .line 656
    .local v0, entity:Lcom/android/htccontacts/group/GroupEntity;
    if-nez v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 664
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 665
    if-eqz p5, :cond_1

    .line 666
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/htccontacts/group/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 668
    :cond_1
    invoke-direct {v0, p0, p4, p5}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/android/htccontacts/group/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 626
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p3}, Lcom/android/htccontacts/group/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/htccontacts/group/GroupEntity;

    move-result-object v0

    .line 627
    .local v0, entity:Lcom/android/htccontacts/group/GroupEntity;
    if-eqz v0, :cond_0

    .line 630
    iput-object p0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    .line 635
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 638
    invoke-direct {v0, v1, p4}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "groupIsReadOnly"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/android/htccontacts/group/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 561
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p3, p5}, Lcom/android/htccontacts/group/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/android/htccontacts/group/GroupEntity;

    move-result-object v0

    .line 562
    .local v0, entity:Lcom/android/htccontacts/group/GroupEntity;
    if-eqz v0, :cond_0

    .line 565
    iput-object p0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    .line 570
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 571
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 573
    invoke-direct {v0, v1, p4}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 589
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/android/htccontacts/group/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-static {v1, p3}, Lcom/android/htccontacts/group/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/htccontacts/group/GroupEntity;

    move-result-object v0

    .line 595
    .local v0, entity:Lcom/android/htccontacts/group/GroupEntity;
    if-eqz v0, :cond_0

    .line 598
    iput-object p0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    .line 603
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 604
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 605
    if-eqz p5, :cond_2

    .line 606
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 608
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
    .parameter "groupIsReadOnly"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 522
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/android/htccontacts/group/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-static {v1, p3, p6}, Lcom/android/htccontacts/group/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/android/htccontacts/group/GroupEntity;

    move-result-object v0

    .line 528
    .local v0, entity:Lcom/android/htccontacts/group/GroupEntity;
    if-eqz v0, :cond_0

    .line 531
    iput-object p0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    .line 536
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 537
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 538
    if-eqz p5, :cond_2

    .line 539
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 541
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public buildDiff(Landroid/content/ContentResolver;)V
    .locals 20
    .parameter "resolver"

    .prologue
    .line 757
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v14, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$AccountData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v14}, Lcom/android/htccontacts/group/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 761
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v4, addGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$AccountData;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/group/GroupEntity$AccountData;

    .line 764
    .local v8, data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 765
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 770
    .end local v8           #data:Lcom/android/htccontacts/group/GroupEntity$AccountData;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v15, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 772
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 773
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 776
    .end local v12           #id:J
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v16, removedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/htccontacts/group/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 786
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v5, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 788
    .restart local v12       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 789
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 792
    .end local v12           #id:J
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v6, addedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/GroupEntity$RawContactData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v5, v6, v2}, Lcom/android/htccontacts/group/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/htccontacts/group/GroupEntity;->createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v7

    .line 805
    .local v7, bNewGroups:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/htccontacts/group/GroupEntity;->addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/group/GroupEntity;->removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 813
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 814
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v9, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/group/GroupEntity$RawContactData;

    .line 816
    .local v8, data:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    iget-wide v0, v8, Lcom/android/htccontacts/group/GroupEntity$RawContactData;->_Id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v10, v0

    .line 817
    .local v10, deletedPerson:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 819
    .end local v8           #data:Lcom/android/htccontacts/group/GroupEntity$RawContactData;
    .end local v10           #deletedPerson:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mGroupIsReadOnly:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Lcom/android/htccontacts/group/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 825
    .end local v9           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mGroupIsReadOnly:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/htccontacts/group/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 829
    :cond_8
    return-void

    .line 821
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public removeContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method
