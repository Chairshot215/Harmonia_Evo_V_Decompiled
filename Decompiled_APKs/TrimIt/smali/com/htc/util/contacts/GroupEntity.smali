.class public Lcom/htc/util/contacts/GroupEntity;
.super Ljava/lang/Object;
.source "GroupEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/GroupEntity$GroupData;,
        Lcom/htc/util/contacts/GroupEntity$RawContactData;,
        Lcom/htc/util/contacts/GroupEntity$AccountData;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final COMPESS_QUALITY:I = 0x0

.field private static final DEBUG:Z = true

.field private static final MAX_APPLY:I = 0x1f4

.field static final RAW_CONTACT_AccountNameIdx:I = 0x1

.field static final RAW_CONTACT_AccountTypeIdx:I = 0x2

.field static final RAW_CONTACT_CONTACTIdx:I = 0x3

.field static final RAW_CONTACT_DELETEDIdx:I = 0x4

.field static final RAW_CONTACT_IDIdx:I = 0x0

.field static final TAG:Ljava/lang/String; = "GroupEntity"

.field static final sContactProjection:[Ljava/lang/String;

.field static final sGroupProjection:[Ljava/lang/String;

.field static final sRawContactProjection:[Ljava/lang/String;


# instance fields
.field public mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
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
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    sget v0, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    sput v0, Lcom/htc/util/contacts/GroupEntity;->COMPESS_QUALITY:I

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sContactProjection:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    .line 1125
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
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 578
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 579
    const/4 v2, 0x1

    .line 657
    :goto_0
    return v2

    .line 582
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v21, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v20, 0x0

    .line 584
    .local v20, operation:Landroid/content/ContentProviderOperation;
    const/4 v10, 0x0

    .line 586
    .local v10, applyCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/contacts/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 588
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 589
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 591
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 592
    .local v16, id:J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, accountName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, accountType:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 596
    .local v24, sourceId:Ljava/lang/String;
    new-instance v13, Lcom/htc/util/contacts/GroupEntity$AccountData;

    invoke-direct {v13, v8, v9}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .local v13, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
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

    check-cast v23, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 598
    .local v23, rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addGroupMember to group: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   gid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v22, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .local v22, rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/htc/util/contacts/GroupEntity$AccountData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert member ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )  to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 607
    .local v25, values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string v2, "data1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->accountType:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    const-string v2, "data5"

    const-string v3, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 617
    .local v18, insertGroupMemberUri:Landroid/net/Uri;
    const-string v2, "data"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 621
    .local v19, insertUri:Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 622
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 623
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    .line 624
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v10, v10, 0x1

    .line 626
    const/16 v2, 0x1f4

    if-lt v10, v2, :cond_2

    .line 628
    :try_start_0
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 629
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 630
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 631
    :catch_0
    move-exception v14

    .line 632
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 639
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v22           #rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v23           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v13           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v24           #sourceId:Ljava/lang/String;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 642
    const/4 v12, 0x0

    .line 643
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 645
    :try_start_1
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 646
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 647
    const/4 v10, 0x0

    .line 653
    :cond_6
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 657
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 648
    :catch_1
    move-exception v14

    .line 649
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 650
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 633
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v11       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v13       #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #id:J
    .restart local v18       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v19       #insertUri:Landroid/net/Uri;
    .restart local v22       #rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v23       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v24       #sourceId:Ljava/lang/String;
    .restart local v25       #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private static final broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const-string v1, "contact_id_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 866
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "groupName"

    .prologue
    .line 312
    if-eqz p0, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 846
    if-eqz p0, :cond_0

    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 850
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 853
    if-eqz p0, :cond_0

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 858
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private clearAllGroupIfNoAnyMember(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 692
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 694
    .local v1, hasNoMember:Z
    if-eqz v0, :cond_1

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 696
    const/4 v1, 0x1

    .line 697
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_1
    if-eqz v1, :cond_2

    .line 702
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->deleteAllGroups(Landroid/content/ContentResolver;)V

    .line 704
    :cond_2
    return-void
.end method

.method private createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 28
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v16, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v15, 0x0

    .line 719
    .local v15, operation:Landroid/content/ContentProviderOperation;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v23, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v11, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 723
    .local v4, account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 724
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/htc/util/contacts/GroupEntity;->isReadOnlyAccountType(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 729
    const/16 v22, 0x1

    .line 730
    .local v22, visible:I
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 731
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 732
    .local v20, value:Ljava/lang/Integer;
    if-nez v20, :cond_3

    .line 733
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v22, 0x1

    .line 734
    :goto_1
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .end local v20           #value:Ljava/lang/Integer;
    :cond_1
    :goto_2
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v21, values:Landroid/content/ContentValues;
    const-string v24, "account_name"

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v24, "account_type"

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v24, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v24, "notes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v24, "group_visible"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    sget-object v24, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v24 .. v24}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 750
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 751
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    .line 752
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v7, Lcom/htc/util/contacts/GroupEntity$GroupData;

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v25, v0

    const-wide/16 v26, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/htc/util/contacts/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 757
    .local v7, data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 733
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v20       #value:Ljava/lang/Integer;
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 737
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_2

    .line 761
    .end local v4           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v20           #value:Ljava/lang/Integer;
    .end local v22           #visible:I
    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_6

    .line 762
    :cond_5
    const/16 v24, 0x0

    .line 786
    .end local v12           #i$:Ljava/util/Iterator;
    :goto_3
    return v24

    .line 765
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_0
    const-string v24, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v18

    .line 766
    .local v18, results:[Landroid/content/ContentProviderResult;
    const/4 v13, 0x0

    .line 767
    .local v13, index:I
    move-object/from16 v5, v18

    .local v5, arr$:[Landroid/content/ContentProviderResult;
    array-length v14, v5

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_4
    if-ge v12, v14, :cond_8

    aget-object v17, v5, v12

    .line 768
    .local v17, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 769
    .local v19, uri:Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 770
    .local v9, gid:J
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 771
    .restart local v7       #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    if-eqz v7, :cond_7

    .line 772
    iput-wide v9, v7, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 774
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 767
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 776
    .end local v5           #arr$:[Landroid/content/ContentProviderResult;
    .end local v7           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v9           #gid:J
    .end local v12           #i$:I
    .end local v13           #index:I
    .end local v14           #len$:I
    .end local v17           #resultData:Landroid/content/ContentProviderResult;
    .end local v18           #results:[Landroid/content/ContentProviderResult;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 778
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 779
    const/16 v24, 0x0

    goto :goto_3

    .line 780
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 782
    .local v8, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 783
    const/16 v24, 0x0

    goto :goto_3

    .line 786
    .end local v8           #e:Landroid/content/OperationApplicationException;
    .restart local v5       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v12       #i$:I
    .restart local v13       #index:I
    .restart local v14       #len$:I
    .restart local v18       #results:[Landroid/content/ContentProviderResult;
    :cond_8
    const/16 v24, 0x1

    goto :goto_3
.end method

.method private deleteAllGroups(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 709
    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
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

    .line 711
    .local v1, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 712
    return-void
.end method

.method private dumpContactList()V
    .locals 3

    .prologue
    .line 490
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAfterContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;
    .locals 16
    .parameter "resolver"
    .parameter "targetName"

    .prologue
    .line 98
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 99
    .local v2, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, pattern:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "deleted"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "account_name"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "account_type"

    aput-object v5, v3, v1

    .line 107
    .local v3, sProjection:[Ljava/lang/String;
    new-instance v10, Lcom/htc/util/contacts/GroupEntity;

    invoke-direct {v10}, Lcom/htc/util/contacts/GroupEntity;-><init>()V

    .line 108
    .local v10, groupEntity:Lcom/htc/util/contacts/GroupEntity;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 109
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, type:Ljava/lang/String;
    new-instance v9, Lcom/htc/util/contacts/GroupEntity$AccountData;

    invoke-direct {v9, v13, v15}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v9, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    iget-object v1, v10, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, v10, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v9           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #type:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_2
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    .line 126
    iget-object v1, v10, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 127
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 128
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 131
    .local v11, id:J
    iget-object v1, v10, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    .end local v11           #id:J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_5
    iget-object v1, v10, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    return-object v10
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
    .line 218
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 219
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 220
    :cond_0
    const-string v4, "0"

    .line 236
    :goto_0
    return-object v4

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 225
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 226
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 227
    .local v2, id:J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_2

    .line 229
    const-string v6, " ,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
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

    .line 233
    const-string v6, " ) "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 41
    .parameter "resolver"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 889
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v37, "GroupEntity"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "insertNewGroup: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v28, 0x0

    .line 891
    .local v28, result:Z
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v26, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v25, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    const/16 v20, 0x0

    .line 897
    .local v20, jpegData:[B
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v37

    if-nez v37, :cond_0

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v38

    mul-int v37, v37, v38

    mul-int/lit8 v31, v37, 0x4

    .line 899
    .local v31, size:I
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 900
    .local v24, out:Ljava/io/ByteArrayOutputStream;
    sget-object v37, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v38, Lcom/htc/util/contacts/GroupEntity;->COMPESS_QUALITY:I

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 902
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 903
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    .line 904
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 905
    const/16 v24, 0x0

    .line 913
    .end local v24           #out:Ljava/io/ByteArrayOutputStream;
    .end local v31           #size:I
    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_5

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 921
    :goto_1
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 923
    .local v36, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 927
    .local v22, operation:Landroid/content/ContentProviderOperation;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v14, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 929
    .local v4, account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/htc/util/contacts/GroupEntity;->isReadOnlyAccountType(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_1

    .line 932
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 933
    .local v34, values:Landroid/content/ContentValues;
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    .line 934
    const-string v37, "account_name"

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v37, "account_type"

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_2
    const-string v37, "title"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v37, "notes"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/16 v35, 0x1

    .line 942
    .local v35, visible:I
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3

    .line 943
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    .line 944
    .local v33, value:Ljava/lang/Integer;
    if-nez v33, :cond_7

    .line 945
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_6

    const/16 v35, 0x1

    .line 946
    :goto_3
    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    .end local v33           #value:Ljava/lang/Integer;
    :cond_3
    :goto_4
    const-string v37, "should_sync"

    const/16 v38, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string v37, "group_visible"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    if-eqz v20, :cond_4

    .line 957
    const-string v37, "photo"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 961
    :cond_4
    sget-object v37, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v37 .. v37}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 962
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 963
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    .line 964
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v8, Lcom/htc/util/contacts/GroupEntity$GroupData;

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v4, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v38, v0

    const-wide/16 v39, -0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-wide/from16 v2, v39

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/htc/util/contacts/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 969
    .local v8, data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 917
    .end local v4           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v14           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v22           #operation:Landroid/content/ContentProviderOperation;
    .end local v23           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v34           #values:Landroid/content/ContentValues;
    .end local v35           #visible:I
    .end local v36           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    new-instance v10, Lcom/htc/util/contacts/GroupEntity$AccountData;

    const-string v37, "pcsc"

    const-string v38, "com.htc.android.pcsc"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v10, v0, v1}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .local v10, gData:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 945
    .end local v10           #gData:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v4       #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v14       #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v22       #operation:Landroid/content/ContentProviderOperation;
    .restart local v23       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v33       #value:Ljava/lang/Integer;
    .restart local v34       #values:Landroid/content/ContentValues;
    .restart local v35       #visible:I
    .restart local v36       #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/16 v35, 0x0

    goto :goto_3

    .line 949
    :cond_7
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v35

    goto :goto_4

    .line 973
    .end local v4           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v33           #value:Ljava/lang/Integer;
    .end local v34           #values:Landroid/content/ContentValues;
    .end local v35           #visible:I
    :cond_8
    :try_start_1
    const-string v37, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v30

    .line 974
    .local v30, results:[Landroid/content/ContentProviderResult;
    const/16 v17, 0x0

    .line 975
    .local v17, index:I
    move-object/from16 v6, v30

    .local v6, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v6

    move/from16 v21, v0

    .local v21, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_5
    move/from16 v0, v21

    if-ge v15, v0, :cond_a

    aget-object v29, v6, v15

    .line 976
    .local v29, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 977
    .local v32, uri:Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 978
    .local v12, gid:J
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 979
    .restart local v8       #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    if-eqz v8, :cond_9

    .line 980
    iput-wide v12, v8, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 982
    :cond_9
    add-int/lit8 v17, v17, 0x1

    .line 975
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 984
    .end local v8           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v12           #gid:J
    .end local v29           #resultData:Landroid/content/ContentProviderResult;
    .end local v32           #uri:Landroid/net/Uri;
    :cond_a
    const/16 v28, 0x1

    .line 995
    const-string v37, "GroupEntity"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "insertNewGroup: account size "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v37, "GroupEntity"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "insertNewGroup :groupList  size "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v37, "GroupEntity"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "insertNewGroup :raw contact   size "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1007
    const/4 v5, 0x0

    .line 1009
    .local v5, applyCount:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15           #i$:I
    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1010
    .local v11, gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 1011
    .local v27, rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/htc/util/contacts/GroupEntity$GroupData;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 1012
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    .restart local v34       #values:Landroid/content/ContentValues;
    const-string v37, "mimetype"

    const-string v38, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v37, "raw_contact_id"

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1015
    const-string v37, "data1"

    iget-wide v0, v11, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    iget-object v0, v11, Lcom/htc/util/contacts/GroupEntity$GroupData;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    const-string v38, "com.google"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 1018
    const-string v37, "data5"

    const-string v38, "1"

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :cond_d
    sget-object v37, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    move-wide/from16 v38, v0

    invoke-static/range {v37 .. v39}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1022
    .local v18, insertGroupMemberUri:Landroid/net/Uri;
    const-string v37, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 1025
    .local v19, insertUri:Landroid/net/Uri;
    const/16 v28, 0x1

    .line 1029
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1030
    .restart local v7       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1031
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v22

    .line 1032
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v5, v5, 0x1

    .line 1034
    const/16 v37, 0x1f4

    move/from16 v0, v37

    if-lt v5, v0, :cond_c

    .line 1036
    :try_start_2
    const-string v37, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1037
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1038
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 985
    .end local v5           #applyCount:I
    .end local v6           #arr$:[Landroid/content/ContentProviderResult;
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #index:I
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v21           #len$:I
    .end local v27           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v30           #results:[Landroid/content/ContentProviderResult;
    .end local v34           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 987
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 988
    const/16 v37, 0x0

    .line 1061
    .end local v9           #e:Landroid/os/RemoteException;
    :goto_7
    return v37

    .line 989
    :catch_1
    move-exception v9

    .line 991
    .local v9, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 992
    const/16 v37, 0x0

    goto :goto_7

    .line 1039
    .end local v9           #e:Landroid/content/OperationApplicationException;
    .restart local v5       #applyCount:I
    .restart local v6       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v7       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #index:I
    .restart local v18       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v19       #insertUri:Landroid/net/Uri;
    .restart local v21       #len$:I
    .restart local v27       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v30       #results:[Landroid/content/ContentProviderResult;
    .restart local v34       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v9

    .line 1040
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 1049
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v11           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v27           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_e
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_f

    .line 1051
    :try_start_3
    const-string v37, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1052
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1053
    const/4 v5, 0x0

    .line 1059
    :cond_f
    :goto_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    move/from16 v37, v28

    .line 1061
    goto :goto_7

    .line 1054
    :catch_3
    move-exception v9

    .line 1055
    .restart local v9       #e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 1056
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v37

    goto :goto_8

    .line 1041
    .restart local v7       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v18       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v19       #insertUri:Landroid/net/Uri;
    .restart local v27       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v34       #values:Landroid/content/ContentValues;
    :catch_5
    move-exception v37

    goto/16 :goto_6

    .line 906
    .end local v5           #applyCount:I
    .end local v6           #arr$:[Landroid/content/ContentProviderResult;
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v14           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #index:I
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v21           #len$:I
    .end local v22           #operation:Landroid/content/ContentProviderOperation;
    .end local v23           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v27           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v30           #results:[Landroid/content/ContentProviderResult;
    .end local v34           #values:Landroid/content/ContentValues;
    .end local v36           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v24       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v31       #size:I
    :catch_6
    move-exception v37

    goto/16 :goto_0
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
    .line 872
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/htc/util/contacts/GroupEntity;->insertNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 873
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 874
    invoke-static {p0}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;)V

    .line 876
    :cond_0
    return v0
.end method

.method private static insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "resolver"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"

    .prologue
    const/4 v7, 0x1

    .line 815
    invoke-static {p0, p4}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    .line 818
    .local v6, visible:I
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 820
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "title"

    invoke-virtual {v5, v8, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v8, "notes"

    invoke-virtual {v5, v8, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v8, "account_name"

    invoke-virtual {v5, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v8, "account_type"

    invoke-virtual {v5, v8, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v8, "should_sync"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string v8, "group_visible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 828
    .local v2, groupUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 830
    .local v0, gId:J
    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 831
    .local v3, rawContactUri:Landroid/net/Uri;
    const-string v8, "data"

    invoke-static {v3, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 833
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 834
    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v8, "data1"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 837
    if-eqz p4, :cond_0

    const-string v8, "com.google"

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 838
    const-string v8, "data5"

    const-string v9, "1"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 842
    return v7

    .line 815
    .end local v0           #gId:J
    .end local v2           #groupUri:Landroid/net/Uri;
    .end local v3           #rawContactUri:Landroid/net/Uri;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #visible:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static insertNewGroupForARawContact(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/util/contacts/GroupEntity;->insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 804
    .local v6, result:Z
    if-eqz v6, :cond_0

    .line 805
    invoke-static {p0, p5}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;)V

    .line 807
    :cond_0
    return v6
.end method

.method private static isReadOnlyAccountType(Ljava/lang/String;)Z
    .locals 2
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 791
    if-eqz p0, :cond_1

    .line 792
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 797
    :cond_1
    return v0
.end method

.method public static processMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .parameter "resolver"
    .parameter
    .parameter
    .parameter
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
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, inContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    .local p3, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    const-string v6, "contact_id IN (  "

    .line 155
    .local v6, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 157
    .local v11, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 158
    .local v23, size:I
    if-eqz p1, :cond_0

    if-nez v23, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 163
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 164
    .local v12, cid:J
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v3, v23, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 167
    const-string v3, ", "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 170
    .end local v12           #cid:J
    :cond_3
    const-string v3, " )  "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 173
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/util/contacts/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 174
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v18, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v19, rawContactlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    if-eqz v14, :cond_7

    .line 178
    :cond_4
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 179
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 180
    .local v20, rawId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, account_name:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, account_type:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 185
    .local v17, idDelete:I
    if-gtz v17, :cond_4

    .line 189
    invoke-static {v10}, Lcom/htc/util/contacts/GroupEntity;->isReadOnlyAccountType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 193
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 194
    new-instance v22, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/htc/util/contacts/GroupEntity$RawContactData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 195
    .local v22, rawdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v22           #rawdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    :cond_5
    new-instance v15, Lcom/htc/util/contacts/GroupEntity$AccountData;

    invoke-direct {v15, v9, v10}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v15, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 199
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 202
    .end local v9           #account_name:Ljava/lang/String;
    .end local v10           #account_type:Ljava/lang/String;
    .end local v15           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v17           #idDelete:I
    .end local v20           #rawId:J
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_7
    if-eqz p2, :cond_8

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    :cond_8
    if-eqz p3, :cond_0

    .line 209
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 143
    .local v1, attachuri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 144
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 145
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 146
    sget-object v2, Lcom/htc/util/contacts/GroupEntity;->sContactProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 147
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
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    const-string v7, "content://com.android.contacts/groups_member/name"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 665
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, key:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 667
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    const-string v4, "raw_contact_id IN ( "

    .line 671
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 672
    .local v5, size:I
    if-gtz v5, :cond_0

    .line 687
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 677
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 678
    .local v1, data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 679
    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_1

    .line 680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 683
    .end local v1           #data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
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

    .line 684
    const-string v7, "  AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V
    .locals 20
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
    .line 240
    .local p1, toBeAddedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toBeRemovedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v17, "GroupEntity"

    const-string v18, "doUpdateFavorite E"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v3, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 243
    .local v8, id:Ljava/lang/Long;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v8           #id:Ljava/lang/Long;
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v11, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 248
    .restart local v8       #id:Ljava/lang/Long;
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    .end local v8           #id:Ljava/lang/Long;
    :cond_1
    const-string v17, "GroupEntity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mToBeAddedId:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v17, "GroupEntity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mToBeRemovedId:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 257
    .local v12, resolver:Landroid/content/ContentResolver;
    sget-object v14, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 260
    .local v14, updateUri:Landroid/net/Uri;
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/htc/util/contacts/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, where:Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 262
    .local v15, values:Landroid/content/ContentValues;
    const-string v17, "starred"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v14, v15, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 266
    const-string v17, "starred"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/htc/util/contacts/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 268
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v14, v15, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 272
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 273
    sget-object v14, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v17, v17, v18

    mul-int/lit8 v13, v17, 0x4

    .line 275
    .local v13, size:I
    if-lez v13, :cond_4

    .line 276
    const/4 v9, 0x0

    .line 277
    .local v9, jpegData:[B
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 278
    .local v10, out:Ljava/io/ByteArrayOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v18, Lcom/htc/util/contacts/GroupEntity;->COMPESS_QUALITY:I

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 280
    :try_start_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 281
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 282
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 283
    if-eqz v9, :cond_2

    .line 284
    const-string v17, "photo"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_2
    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v14, v15, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    .end local v9           #jpegData:[B
    .end local v10           #out:Ljava/io/ByteArrayOutputStream;
    .end local v13           #size:I
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v5, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 300
    .local v4, data:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 301
    .local v6, deletedPerson:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 291
    .end local v4           #data:Ljava/lang/Long;
    .end local v5           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #deletedPerson:I
    .restart local v13       #size:I
    :cond_4
    sget-object v14, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 292
    const-string v18, "photo"

    const/16 v17, 0x0

    check-cast v17, [B

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 293
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v14, v15, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 303
    .end local v13           #size:I
    .restart local v5       #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const-string v17, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 308
    .end local v5           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    return-void

    .line 306
    :cond_6
    const-string v17, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 286
    .restart local v9       #jpegData:[B
    .restart local v10       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #size:I
    :catch_0
    move-exception v17

    goto :goto_2
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "resolver"
    .parameter "newTitle"

    .prologue
    .line 443
    const-string v3, "content://com.android.contacts/group_with_favorite"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 444
    .local v1, updateGroupUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 445
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/contacts/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 451
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 453
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

    .line 456
    const-string v6, "content://com.android.contacts/group_with_favorite"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 458
    .local v4, updateGroupUri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 459
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/util/contacts/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 462
    const-string v6, "title"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    const/4 v0, 0x0

    .line 466
    .local v0, jpegData:[B
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 467
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    mul-int/lit8 v3, v6, 0x4

    .line 468
    .local v3, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 469
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v8, Lcom/htc/util/contacts/GroupEntity;->COMPESS_QUALITY:I

    invoke-virtual {p3, v6, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 471
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 472
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 473
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 474
    if-eqz v0, :cond_1

    .line 475
    const-string v6, "photo"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 484
    invoke-virtual {p1, v4, v5, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    :cond_2
    return-void

    .line 481
    :cond_3
    const-string v8, "photo"

    move-object v6, v7

    check-cast v6, [B

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 477
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .line 426
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "GroupEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup E:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {p0, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 428
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 431
    :cond_0
    const-string v1, "GroupEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toAddList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v1, "GroupEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toRemoveList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {v0}, Lcom/htc/util/contacts/GroupEntity;->dumpContactList()V

    .line 435
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 436
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 438
    invoke-direct {v0, p0, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 439
    const-string v1, "GroupEntity"

    const-string v2, "updateGroup X"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
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
    .line 398
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "GroupEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup E:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {p0, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 400
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string v1, "GroupEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toAddList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v1, "GroupEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toRemoveList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {v0}, Lcom/htc/util/contacts/GroupEntity;->dumpContactList()V

    .line 407
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 409
    if-eqz p5, :cond_1

    .line 410
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 412
    :cond_1
    invoke-direct {v0, p0, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 413
    const-string v1, "GroupEntity"

    const-string v2, "updateGroup X"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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
    .line 364
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 369
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGroup E:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v1, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 371
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 374
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 375
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toAddList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toRemoveList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {v0}, Lcom/htc/util/contacts/GroupEntity;->dumpContactList()V

    .line 379
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 380
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 382
    invoke-direct {v0, v1, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 383
    const-string v2, "GroupEntity"

    const-string v3, "updateGroup X"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
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
    .line 329
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 330
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGroup E:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-static {v1, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 338
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 341
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 342
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toAddList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v2, "GroupEntity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toRemoveList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {v0}, Lcom/htc/util/contacts/GroupEntity;->dumpContactList()V

    .line 346
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 348
    if-eqz p5, :cond_2

    .line 349
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 351
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 352
    const-string v2, "GroupEntity"

    const-string v3, "updateGroup X"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public buildDiff(Landroid/content/ContentResolver;)V
    .locals 18
    .parameter "resolver"

    .prologue
    .line 498
    const-string v15, "GroupEntity"

    const-string v16, "buildDiff E "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/contacts/GroupEntity;->dumpContactList()V

    .line 501
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v12, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1, v12}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, addGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 507
    .local v6, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    const-string v15, "GroupEntity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mAccountList.contains(data)?  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "size:  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 509
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v6           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v13, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 516
    .local v10, id:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 517
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    .end local v10           #id:J
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v14, removedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v15}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 524
    const-string v15, "GroupEntity"

    const-string v16, "--------------------"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v15, "GroupEntity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: removedList   "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v15, "GroupEntity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: removedMemberList   "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v15, "GroupEntity"

    const-string v16, "--------------------"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v3, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 532
    .restart local v10       #id:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 533
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 536
    .end local v10           #id:J
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v4, addedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v15}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 539
    const-string v15, "GroupEntity"

    const-string v16, "--------------------"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v15, "GroupEntity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: addList   "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v15, "GroupEntity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: addedMemberList   "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v15, "GroupEntity"

    const-string v16, "--------------------"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v15, "GroupEntity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: addGroupList   "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/util/contacts/GroupEntity;->createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v5

    .line 549
    .local v5, bNewGroups:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/util/contacts/GroupEntity;->addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/htc/util/contacts/GroupEntity;->removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 557
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 558
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v7, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 560
    .local v6, data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    iget-wide v15, v6, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    long-to-int v8, v15

    .line 561
    .local v8, deletedPerson:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 563
    .end local v6           #data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v8           #deletedPerson:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 569
    .end local v7           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    .line 570
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;)V

    .line 572
    :cond_8
    const-string v15, "GroupEntity"

    const-string v16, "buildDiff X "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 565
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public removeContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method
