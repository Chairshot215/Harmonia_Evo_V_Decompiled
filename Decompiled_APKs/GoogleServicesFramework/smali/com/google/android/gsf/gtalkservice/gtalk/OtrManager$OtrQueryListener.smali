.class Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;
.super Ljava/lang/Object;
.source "OtrManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtrQueryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)V

    return-void
.end method

.method private processOtrQueryResult(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;)V
    .locals 15
    .parameter "otrQuery"

    .prologue
    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->getDefaultValue()Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    move-result-object v0

    .line 163
    .local v0, def:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;
    sget-object v12, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$3;->$SwitchMap$com$google$android$gsf$gtalkservice$extensions$OtrQuery$DefaultValue:[I

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 169
    const/4 v1, 0x0

    .line 175
    .local v1, defaultValue:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 176
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v9, selection1:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v10, selection2:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 180
    .local v3, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .line 181
    .local v6, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->isEnabled()Z

    move-result v2

    .line 183
    .local v2, enabled:Z
    if-eq v2, v1, :cond_0

    .line 184
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    if-lez v3, :cond_1

    .line 185
    const-string v12, " OR "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v12, " AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    const-string v12, "username"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v12, "username"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!=?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 165
    .end local v1           #defaultValue:Z
    .end local v2           #enabled:Z
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    .end local v7           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;>;"
    .end local v9           #selection1:Ljava/lang/StringBuilder;
    .end local v10           #selection2:Ljava/lang/StringBuilder;
    :pswitch_0
    const/4 v1, 0x1

    .line 166
    .restart local v1       #defaultValue:Z
    goto :goto_0

    .line 195
    .restart local v3       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;>;"
    .restart local v9       #selection1:Ljava/lang/StringBuilder;
    .restart local v10       #selection2:Ljava/lang/StringBuilder;
    :cond_2
    new-array v11, v3, [Ljava/lang/String;

    .line 198
    .local v11, selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 200
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .line 201
    .restart local v6       #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->getJid()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, jid:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->isEnabled()Z

    move-result v2

    .line 204
    .restart local v2       #enabled:Z
    if-eq v2, v1, :cond_3

    .line 205
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aput-object v8, v11, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 209
    .end local v2           #enabled:Z
    .end local v6           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    .end local v8           #jid:Ljava/lang/String;
    :cond_4
    if-lez v3, :cond_5

    .line 210
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v1, :cond_6

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v12, v14, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 216
    :cond_5
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v1, :cond_7

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v12, v14, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 220
    return-void

    .line 210
    :cond_6
    const/4 v12, 0x1

    goto :goto_3

    .line 216
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processOtrQuerySet(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;)V
    .locals 15
    .parameter "otrQuery"

    .prologue
    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 226
    .local v5, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;>;"
    const/4 v12, 0x3

    new-array v7, v12, [Ljava/lang/StringBuilder;

    .line 227
    .local v7, selection:[Ljava/lang/StringBuilder;
    const/4 v12, 0x3

    new-array v11, v12, [I

    .line 229
    .local v11, selectionArgsCount:[I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .line 230
    .local v4, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->getJid()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, jid:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->isEnabled()Z

    move-result v1

    .line 232
    .local v1, enabled:Z
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->getChangedByBuddy()Z

    move-result v0

    .line 240
    .local v0, changedByBuddy:Z
    if-eqz v1, :cond_3

    .line 241
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    .line 246
    .local v3, index:I
    :goto_1
    aget-object v12, v7, v3

    if-nez v12, :cond_0

    .line 247
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v12, v7, v3

    .line 250
    :cond_0
    aget v12, v11, v3

    add-int/lit8 v13, v12, 0x1

    aput v13, v11, v3

    if-lez v12, :cond_1

    .line 251
    aget-object v12, v7, v3

    const-string v13, " OR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    aget-object v12, v7, v3

    const-string v13, "username"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    .end local v3           #index:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 243
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #index:I
    goto :goto_1

    .line 256
    .end local v0           #changedByBuddy:Z
    .end local v1           #enabled:Z
    .end local v3           #index:I
    .end local v4           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    .end local v6           #jid:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 257
    .local v8, selectionArgs0:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 258
    .local v9, selectionArgs1:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 260
    .local v10, selectionArgs2:[Ljava/lang/String;
    const/4 v12, 0x0

    aget v12, v11, v12

    if-lez v12, :cond_5

    .line 261
    const/4 v12, 0x0

    aget v12, v11, v12

    new-array v8, v12, [Ljava/lang/String;

    .line 264
    :cond_5
    const/4 v12, 0x1

    aget v12, v11, v12

    if-lez v12, :cond_6

    .line 265
    const/4 v12, 0x1

    aget v12, v11, v12

    new-array v9, v12, [Ljava/lang/String;

    .line 268
    :cond_6
    const/4 v12, 0x2

    aget v12, v11, v12

    if-lez v12, :cond_7

    .line 269
    const/4 v12, 0x2

    aget v12, v11, v12

    new-array v10, v12, [Ljava/lang/String;

    .line 272
    :cond_7
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 273
    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 274
    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 276
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .line 277
    .restart local v4       #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->getJid()Ljava/lang/String;

    move-result-object v6

    .line 278
    .restart local v6       #jid:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->isEnabled()Z

    move-result v1

    .line 280
    .restart local v1       #enabled:Z
    if-eqz v1, :cond_9

    .line 281
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->getChangedByBuddy()Z

    move-result v0

    .line 282
    .restart local v0       #changedByBuddy:Z
    if-eqz v0, :cond_8

    .line 283
    const/4 v12, 0x2

    aget v13, v11, v12

    add-int/lit8 v14, v13, 0x1

    aput v14, v11, v12

    aput-object v6, v10, v13

    goto :goto_2

    .line 285
    :cond_8
    const/4 v12, 0x1

    aget v13, v11, v12

    add-int/lit8 v14, v13, 0x1

    aput v14, v11, v12

    aput-object v6, v9, v13

    goto :goto_2

    .line 288
    .end local v0           #changedByBuddy:Z
    :cond_9
    const/4 v12, 0x0

    aget v13, v11, v12

    add-int/lit8 v14, v13, 0x1

    aput v14, v11, v12

    aput-object v6, v8, v13

    goto :goto_2

    .line 292
    .end local v1           #enabled:Z
    .end local v4           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    .end local v6           #jid:Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    aget v12, v11, v12

    if-lez v12, :cond_b

    .line 293
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 298
    :cond_b
    const/4 v12, 0x1

    aget v12, v11, v12

    if-lez v12, :cond_c

    .line 299
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v9}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 304
    :cond_c
    const/4 v12, 0x2

    aget v12, v11, v12

    if-lez v12, :cond_d

    .line 305
    iget-object v12, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x3

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v10}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 309
    :cond_d
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter "packet"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 137
    move-object v6, p1

    check-cast v6, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    .line 138
    .local v6, otrQuery:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v0

    .line 139
    .local v0, accountId:J
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->getEtag()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, etag:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->getNotModified()Ljava/lang/Boolean;

    move-result-object v5

    .line 141
    .local v5, notModifiedBoolean:Ljava/lang/Boolean;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v3

    .line 144
    .local v4, notModified:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 145
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    const-string v8, "OTR not modified"

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_1
    return-void

    .end local v4           #notModified:Z
    :cond_1
    move v4, v7

    .line 141
    goto :goto_0

    .line 149
    .restart local v4       #notModified:Z
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v8

    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v8, v9, :cond_3

    .line 150
    .local v3, isResult:Z
    :goto_2
    if-eqz v3, :cond_4

    .line 151
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->processOtrQueryResult(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;)V

    .line 156
    :goto_3
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setOtrEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto :goto_1

    .end local v3           #isResult:Z
    :cond_3
    move v3, v7

    .line 149
    goto :goto_2

    .line 153
    .restart local v3       #isResult:Z
    :cond_4
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$OtrQueryListener;->processOtrQuerySet(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;)V

    goto :goto_3
.end method
