.class Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiverContacts"
.end annotation


# instance fields
.field rRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    .locals 1
    .parameter
    .parameter "recipientInfo"

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->rRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 2011
    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->rRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    .line 2012
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 2015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v4}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->rRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    iget-object v8, v4, Lcom/htc/android/mail/ReadScreen$RecipientListInfo;->receiverlist:Ljava/util/ArrayList;

    .line 2021
    .local v8, address:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ReceiverList;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2025
    const-wide/16 v5, -0x1

    .line 2026
    .local v5, contactId:J
    const-string v19, "lower(data1) IN ("

    .line 2028
    .local v19, selection:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2029
    .local v20, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 2030
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/ReceiverList;

    iget-object v13, v4, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    .line 2031
    .local v13, email:Ljava/lang/String;
    if-nez v13, :cond_3

    .line 2029
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2032
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 2033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2035
    add-int/lit8 v4, v20, -0x1

    if-eq v14, v4, :cond_2

    .line 2036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 2039
    .end local v13           #email:Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, ")"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2042
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/android/mail/ReceiverList;

    .line 2043
    .local v17, m:Lcom/htc/android/mail/ReceiverList;
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/htc/android/mail/ReceiverList;->contactId:J

    goto :goto_3

    .line 2046
    .end local v17           #m:Lcom/htc/android/mail/ReceiverList;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v4}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v4, v0, v1, v2, v3}, Lcom/htc/android/mail/ReadScreen;->getContactCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2047
    .local v11, contactCursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 2049
    .local v18, profileCursor:Landroid/database/Cursor;
    if-nez v11, :cond_6

    .line 2050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v4}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v4, v0, v1, v2, v3}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2051
    if-eqz v18, :cond_0

    .line 2059
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-lt v4, v0, :cond_7

    .line 2060
    const/16 v16, -0x1

    .line 2061
    .local v16, id:I
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2062
    const-string v4, "data1"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2063
    .local v7, data:Ljava/lang/String;
    const-string v4, "contact_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2066
    .local v10, _Id:Ljava/lang/String;
    const-string v4, "display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2069
    .local v9, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 2080
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateMailAddress(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static/range {v4 .. v9}, Lcom/htc/android/mail/ReadScreen;->access$2900(Lcom/htc/android/mail/ReadScreen;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_4

    .line 2070
    :catch_0
    move-exception v12

    .line 2071
    .local v12, e:Ljava/lang/NumberFormatException;
    const-string v4, "ReadScreen"

    const-string v21, "NumberFormatException occurs in getContactId()"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    .line 2084
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #_Id:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .end local v16           #id:I
    :cond_7
    if-eqz v11, :cond_8

    .line 2085
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2087
    :cond_8
    const/4 v11, 0x0

    .line 2092
    if-nez v18, :cond_9

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v4}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->MAIL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v4, v0, v1, v2, v3}, Lcom/htc/android/mail/ReadScreen;->getProfileCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2096
    :cond_9
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-lt v4, v0, :cond_a

    .line 2097
    :goto_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2098
    const-string v4, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2099
    .restart local v7       #data:Ljava/lang/String;
    const-string v4, "contact_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2100
    .restart local v10       #_Id:Ljava/lang/String;
    const-string v4, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2103
    .restart local v9       #name:Ljava/lang/String;
    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    .line 2109
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateMailAddress(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static/range {v4 .. v9}, Lcom/htc/android/mail/ReadScreen;->access$2900(Lcom/htc/android/mail/ReadScreen;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_6

    .line 2104
    :catch_1
    move-exception v12

    .line 2105
    .restart local v12       #e:Ljava/lang/NumberFormatException;
    const-string v4, "ReadScreen"

    const-string v21, "NumberFormatException occurs in getContactId()"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_7

    .line 2113
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #_Id:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/NumberFormatException;
    :cond_a
    if-eqz v18, :cond_b

    .line 2114
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2116
    :cond_b
    const/16 v18, 0x0

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->this$0:Lcom/htc/android/mail/ReadScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$UpdateReceiverContacts;->rRecipientInfo:Lcom/htc/android/mail/ReadScreen$RecipientListInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/htc/android/mail/ReadScreen;->updateContactButtonUI(Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V
    invoke-static {v4, v0}, Lcom/htc/android/mail/ReadScreen;->access$3000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$RecipientListInfo;)V

    goto/16 :goto_0
.end method
