.class Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "EditContactActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessGroupPickerResultTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Lcom/android/htccontacts/ui/EditContactActivity2;",
        ">;"
    }
.end annotation


# instance fields
.field mTargetGroupKind:Lcom/android/htccontacts/model/DataKind;

.field mTargetState:Lcom/android/htccontacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 5141
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 5142
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 54
    .parameter "target"
    .parameter "params"

    .prologue
    .line 5155
    const/4 v3, 0x0

    aget-object v15, p2, v3

    .line 5156
    .local v15, data:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5157
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 5374
    :goto_0
    return-object v3

    .line 5160
    :cond_0
    const-string v3, "extra_info_index"

    const/4 v4, -0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 5162
    .local v34, nSelectIndex:I
    if-gez v34, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 5164
    :cond_1
    const-string v3, "SELECTED_ID"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v44

    .line 5165
    .local v44, selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "SELECTED_TITLE"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v46

    .line 5166
    .local v46, selectedTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "EXTRA_OUT_GOOGLE_STARRED_GROUP_ID"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v40

    .line 5168
    .local v40, outStarredGruopIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "SELECTED_GROUP_IS_READ_ONLY"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v43

    .line 5169
    .local v43, selectedGroupIsReadOnly:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->createGroupStructureList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v26

    .line 5173
    .local v26, groupStructureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 5174
    .local v37, newId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 5175
    .local v33, missingId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 5181
    .local v25, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v48

    .line 5182
    .local v48, state:Lcom/android/htccontacts/model/EntityDelta;
    if-nez v48, :cond_2

    .line 5183
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 5186
    :cond_2
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v53

    .line 5188
    .local v53, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v53, :cond_4

    .line 5189
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 5190
    .local v52, valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v52 .. v52}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5191
    const-string v3, "data1"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    .line 5192
    .local v32, longvalue:Ljava/lang/Long;
    if-eqz v32, :cond_3

    .line 5193
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5199
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v32           #longvalue:Ljava/lang/Long;
    .end local v52           #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 5201
    .local v10, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 5202
    .local v23, groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    const-string v4, "My Contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 5205
    :cond_6
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5206
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 5209
    .end local v23           #groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v47

    .line 5211
    .local v47, size:I
    if-lez v47, :cond_8

    .line 5212
    add-int/lit8 v3, v47, -0x1

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 5215
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 5216
    const/4 v3, 0x0

    const-string v4, " title IN ( "

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 5217
    const-string v3, ")"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5221
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 5222
    .local v13, contactDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_name"

    invoke-virtual {v13, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5223
    .local v11, contactAccountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v13, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5225
    .local v12, contactAccountType:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5227
    .local v6, selection:Ljava/lang/String;
    :goto_3
    const/4 v9, 0x0

    .line 5230
    .local v9, account_equal:Ljava/lang/String;
    if-eqz v11, :cond_a

    if-nez v12, :cond_c

    .line 5231
    :cond_a
    const-string v9, "0"

    .line 5243
    :goto_4
    if-eqz v6, :cond_d

    .line 5244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  AND  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5249
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or (title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "My Contacts"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND group_is_read_only=1  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5252
    const-string v3, "EditContactActivity2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5256
    .local v17, existedSelectedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5259
    .local v18, existedSelectedGroupIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "group_is_read_only"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 5260
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_f

    .line 5261
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5262
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 5263
    .local v21, gid:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 5266
    .local v49, title:Ljava/lang/String;
    new-instance v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5267
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5225
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #account_equal:Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v17           #existedSelectedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v18           #existedSelectedGroupIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21           #gid:J
    .end local v49           #title:Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 5233
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #account_equal:Ljava/lang/String;
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( account_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   AND  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 5247
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_id <  0  AND  deleted = 0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 5271
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v17       #existedSelectedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .restart local v18       #existedSelectedGroupIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5274
    :cond_f
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    .line 5276
    .local v31, isFovrite:Z
    if-eqz v46, :cond_10

    .line 5277
    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    .line 5281
    :cond_10
    if-eqz v12, :cond_12

    const-string v3, "com.google"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 5282
    if-eqz v31, :cond_12

    if-eqz v40, :cond_12

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 5283
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_11
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 5284
    .local v29, idValue:Ljava/lang/Integer;
    if-eqz v29, :cond_11

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_11

    .line 5285
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v41, v0

    .line 5286
    .local v41, rawStarredId:J
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 5287
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 5298
    .end local v29           #idValue:Ljava/lang/Integer;
    .end local v41           #rawStarredId:J
    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getNewAddedGroup(I)Ljava/util/ArrayList;

    move-result-object v35

    .line 5299
    .local v35, newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->clear()V

    .line 5300
    new-instance v36, Ljava/util/ArrayList;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5301
    .local v36, newAddedGroupTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5304
    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5306
    const-string v3, "EditContactActivity2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existedSelectedGroupIDs:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5307
    const-string v3, "EditContactActivity2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupList:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_13
    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 5309
    .local v27, i:Ljava/lang/Long;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 5314
    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 5315
    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 5319
    .end local v27           #i:Ljava/lang/Long;
    :cond_14
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_15
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 5320
    .restart local v27       #i:Ljava/lang/Long;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 5325
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 5328
    .end local v27           #i:Ljava/lang/Long;
    :cond_16
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_17
    :goto_a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 5329
    .restart local v52       #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    .line 5331
    .local v30, integer:Ljava/lang/Long;
    if-eqz v30, :cond_17

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5332
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 5333
    .local v19, gId:J
    if-eqz v40, :cond_18

    move-wide/from16 v0, v19

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 5337
    :cond_18
    invoke-virtual/range {v52 .. v52}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_a

    .line 5343
    .end local v19           #gId:J
    .end local v30           #integer:Ljava/lang/Long;
    .end local v52           #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_19
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContactsSource(I)Lcom/android/htccontacts/model/AccountType;

    move-result-object v45

    .line 5344
    .local v45, selectedSource:Lcom/android/htccontacts/model/AccountType;
    if-nez v45, :cond_1a

    .line 5345
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 5347
    :cond_1a
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v24

    .line 5348
    .local v24, groupKind:Lcom/android/htccontacts/model/DataKind;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_b
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 5349
    .restart local v27       #i:Ljava/lang/Long;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 5350
    .local v38, newIdValue:J
    move-object/from16 v0, v48

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v51

    .line 5351
    .local v51, value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    move-object/from16 v0, v51

    move-wide/from16 v1, v38

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_b

    .line 5355
    .end local v27           #i:Ljava/lang/Long;
    .end local v38           #newIdValue:J
    .end local v51           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_1b
    const-string v50, "Newly added ID: "

    .line 5356
    .local v50, tmp:Ljava/lang/String;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_c
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 5357
    .restart local v27       #i:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    goto :goto_c

    .line 5359
    .end local v27           #i:Ljava/lang/Long;
    :cond_1c
    const-string v3, "EditContactActivity2"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5360
    const-string v50, "Missing ID: "

    .line 5361
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    .line 5362
    .restart local v27       #i:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    goto :goto_d

    .line 5364
    .end local v27           #i:Ljava/lang/Long;
    :cond_1d
    const-string v3, "EditContactActivity2"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5369
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 5370
    .local v16, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "starred"

    if-eqz v31, :cond_1e

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 5372
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->mTargetGroupKind:Lcom/android/htccontacts/model/DataKind;

    .line 5373
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->mTargetState:Lcom/android/htccontacts/model/EntityDelta;

    .line 5374
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 5370
    :cond_1e
    const/4 v3, 0x0

    goto :goto_e
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5136
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, [Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->doInBackground(Lcom/android/htccontacts/ui/EditContactActivity2;[Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "target"
    .parameter "result"

    .prologue
    .line 5146
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5147
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->mTargetGroupKind:Lcom/android/htccontacts/model/DataKind;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->mTargetState:Lcom/android/htccontacts/model/EntityDelta;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5148
    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    invoke-static {p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->mTargetGroupKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->mTargetState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setGroupMemberState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 5150
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5136
    check-cast p1, Lcom/android/htccontacts/ui/EditContactActivity2;

    .end local p1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->onPostExecute(Lcom/android/htccontacts/ui/EditContactActivity2;Ljava/lang/Boolean;)V

    return-void
.end method
