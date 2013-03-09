.class Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;
.super Ljava/lang/Object;
.source "ContactEditorView2.java"

# interfaces
.implements Lcom/android/htccontacts/ui/widget/EditorItemDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/ContactEditorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupEditorItemDisplay"
.end annotation


# instance fields
.field mGroupIndex:I

.field resolver:Landroid/content/ContentResolver;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->mGroupIndex:I

    .line 1136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->viewRef:Ljava/lang/ref/WeakReference;

    .line 1137
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->resolver:Landroid/content/ContentResolver;

    .line 1138
    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;I)V
    .locals 1
    .parameter "v"
    .parameter "groupIndex"

    .prologue
    .line 1140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->mGroupIndex:I

    .line 1141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->viewRef:Ljava/lang/ref/WeakReference;

    .line 1142
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->resolver:Landroid/content/ContentResolver;

    .line 1143
    iput p2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->mGroupIndex:I

    .line 1144
    return-void
.end method


# virtual methods
.method public obtainDisplayString(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)Ljava/lang/String;
    .locals 1
    .parameter "kind"
    .parameter "entry"
    .parameter "state"

    .prologue
    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->obtainDisplayStringDelayed(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainDisplayStringDelayed(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)Ljava/lang/String;
    .locals 45
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "callback"

    .prologue
    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    .line 1150
    .local v42, view:Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    if-nez v42, :cond_0

    .line 1151
    const/4 v3, 0x0

    .line 1324
    :goto_0
    return-object v3

    .line 1155
    :cond_0
    new-instance v38, Ljava/util/HashSet;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    .line 1157
    .local v38, titleSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    const-string v11, "data1"

    .line 1158
    .local v11, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1159
    .local v10, buffer:Ljava/lang/StringBuffer;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v23, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v32, 0x0

    .line 1161
    .local v32, queryNecessary:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 1162
    .local v25, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v25, :cond_4

    .line 1163
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1164
    .local v15, e:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v15}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1166
    invoke-virtual {v15, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1168
    .local v29, obj:Ljava/lang/String;
    const-wide/16 v21, -0x1

    .line 1170
    .local v21, id:J
    :try_start_0
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v21

    .line 1173
    :goto_2
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupTitleCacheMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 1174
    .local v39, titleValue:Ljava/lang/String;
    const/16 v16, -0x1

    .line 1175
    .local v16, groupIsReadOnly:I
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupIsReadOnlyCachMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1176
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupIsReadOnlyCachMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1178
    :cond_2
    if-nez v39, :cond_3

    .line 1179
    const-wide/16 v43, 0x0

    cmp-long v3, v21, v43

    if-lez v3, :cond_1

    .line 1180
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    const/16 v32, 0x1

    goto :goto_1

    .line 1185
    :cond_3
    new-instance v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1192
    .end local v15           #e:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v16           #groupIsReadOnly:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #id:J
    .end local v29           #obj:Ljava/lang/String;
    .end local v39           #titleValue:Ljava/lang/String;
    :cond_4
    const/16 v41, 0x0

    .line 1193
    .local v41, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p4, :cond_7

    if-eqz v32, :cond_7

    .line 1194
    #getter for: Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mQueryHandler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    invoke-static/range {v42 .. v42}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->access$000(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1195
    new-instance v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

    move-object/from16 v0, v42

    invoke-direct {v3, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    move-object/from16 v0, v42

    #setter for: Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mQueryHandler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    invoke-static {v0, v3}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->access$002(Lcom/android/htccontacts/ui/widget/ContactEditorView2;Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;)Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

    .line 1197
    :cond_5
    #getter for: Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mQueryHandler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    invoke-static/range {v42 .. v42}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->access$000(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;

    move-result-object v18

    .line 1198
    .local v18, handler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    const v3, 0xff01

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 1199
    .local v26, message:Landroid/os/Message;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1200
    .local v13, data:Landroid/os/Bundle;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1201
    .local v34, size:I
    move/from16 v0, v34

    new-array v9, v0, [J

    .line 1202
    .local v9, array:[J
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_6

    .line 1203
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    aput-wide v43, v9, v19

    .line 1202
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1206
    :cond_6
    const-string v3, "data"

    invoke-virtual {v13, v3, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1207
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1208
    move-object/from16 v0, p4

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1209
    move-object/from16 v4, p1

    .line 1210
    .local v4, aKind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v5, p2

    .line 1211
    .local v5, aDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v6, p3

    .line 1212
    .local v6, aState:Lcom/android/htccontacts/model/EntityDelta;
    move-object/from16 v7, p4

    .line 1213
    .local v7, aCall:Lcom/android/htccontacts/ui/widget/DelayStringCallback;
    new-instance v2, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$1;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)V

    .line 1219
    .local v2, runnable:Ljava/lang/Runnable;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1223
    .end local v2           #runnable:Ljava/lang/Runnable;
    .end local v4           #aKind:Lcom/android/htccontacts/model/DataKind;
    .end local v5           #aDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #aState:Lcom/android/htccontacts/model/EntityDelta;
    .end local v7           #aCall:Lcom/android/htccontacts/ui/widget/DelayStringCallback;
    .end local v9           #array:[J
    .end local v13           #data:Landroid/os/Bundle;
    .end local v18           #handler:Lcom/android/htccontacts/ui/widget/ContactEditorView2$QueryHandler;
    .end local v19           #i:I
    .end local v26           #message:Landroid/os/Message;
    .end local v34           #size:I
    :cond_7
    if-eqz v32, :cond_8

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->resolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/htccontacts/util/ContactsUtils;->getGroupDataByIdList(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v41

    .line 1227
    :cond_8
    if-eqz v41, :cond_c

    .line 1228
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/ContentValues;

    .line 1230
    .local v40, value:Landroid/content/ContentValues;
    const-string v3, "sortorder"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    .line 1231
    .local v35, sortorderObj:Ljava/lang/Integer;
    if-eqz v35, :cond_a

    .line 1232
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_9

    .line 1241
    :cond_a
    const-string v3, "title"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1242
    .local v37, title:Ljava/lang/String;
    if-eqz v37, :cond_b

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1246
    :cond_b
    const-string v3, "group_is_read_only"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1247
    .restart local v16       #groupIsReadOnly:I
    const-string v3, "_id"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 1248
    .restart local v21       #id:J
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1249
    new-instance v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1250
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupTitleCacheMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mGroupIsReadOnlyCachMap:Ljava/util/HashMap;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1257
    .end local v16           #groupIsReadOnly:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #id:J
    .end local v35           #sortorderObj:Ljava/lang/Integer;
    .end local v37           #title:Ljava/lang/String;
    .end local v40           #value:Landroid/content/ContentValues;
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v14

    .line 1258
    .local v14, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "starred"

    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v14, v3, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_14

    const/16 v24, 0x1

    .line 1260
    .local v24, isFovrite:Z
    :goto_5
    if-eqz v24, :cond_e

    .line 1261
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 1264
    :cond_d
    const-string v33, "Favorite_8656150684447252476_6727701920173350445"

    .line 1265
    .local v33, seq:Ljava/lang/CharSequence;
    if-eqz v33, :cond_e

    .line 1267
    new-instance v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-direct {v3, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1272
    .end local v33           #seq:Ljava/lang/CharSequence;
    :cond_e
    new-instance v12, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$2;-><init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;)V

    .line 1282
    .local v12, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->mGroupIndex:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v3, v0, :cond_f

    .line 1284
    #getter for: Lcom/android/htccontacts/ui/widget/ContactEditorView2;->mListNewAddedGroup:Ljava/util/ArrayList;
    invoke-static/range {v42 .. v42}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->access$100(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->mGroupIndex:I

    move/from16 v43, v0

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1285
    .local v8, appendedNewGroupTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    if-eqz v8, :cond_f

    .line 1286
    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1293
    .end local v8           #appendedNewGroupTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    :cond_f
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v28, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1296
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1298
    const-string v31, ""

    .line 1299
    .local v31, preShowString:Ljava/lang/String;
    const/16 v30, -0x1

    .line 1300
    .local v30, preGroupIsReadOnly:I
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 1305
    .local v17, groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    const-string v43, "My Contacts"

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    const/16 v43, 0x1

    move/from16 v0, v43

    if-eq v3, v0, :cond_10

    .line 1309
    :cond_11
    invoke-virtual/range {v42 .. v42}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v3, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 1311
    .local v27, name:Ljava/lang/String;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    move/from16 v36, v0

    .line 1312
    .local v36, thisGroupIsReadOnly:I
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move/from16 v0, v36

    move/from16 v1, v30

    if-eq v0, v1, :cond_13

    .line 1313
    :cond_12
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1314
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1316
    :cond_13
    move-object/from16 v31, v27

    .line 1317
    move/from16 v30, v36

    .line 1318
    goto :goto_6

    .line 1258
    .end local v12           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    .end local v17           #groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v24           #isFovrite:Z
    .end local v27           #name:Ljava/lang/String;
    .end local v28           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v30           #preGroupIsReadOnly:I
    .end local v31           #preShowString:Ljava/lang/String;
    .end local v36           #thisGroupIsReadOnly:I
    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 1320
    .restart local v12       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v24       #isFovrite:Z
    .restart local v28       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .restart local v30       #preGroupIsReadOnly:I
    .restart local v31       #preShowString:Ljava/lang/String;
    :cond_15
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v34

    .line 1321
    .restart local v34       #size:I
    if-lez v34, :cond_16

    .line 1322
    add-int/lit8 v3, v34, -0x1

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1324
    :cond_16
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1171
    .end local v12           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/String;>;"
    .end local v14           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v24           #isFovrite:Z
    .end local v28           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v30           #preGroupIsReadOnly:I
    .end local v31           #preShowString:Ljava/lang/String;
    .end local v34           #size:I
    .end local v41           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15       #e:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v21       #id:J
    .restart local v29       #obj:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method
