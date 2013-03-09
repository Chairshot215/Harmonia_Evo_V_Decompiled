.class public Lcom/htc/android/epst/internal/StructInitializer;
.super Ljava/lang/Object;
.source "StructInitializer.java"


# static fields
.field private static final ATTR_CUSTOM_ATTR:Ljava/lang/String; = "custom_attr"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final ATTR_INDEX_LENGTH:Ljava/lang/String; = "indexlen"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_RULE:Ljava/lang/String; = "rule"

.field private static final DATA_RELATION_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DATA_RELATION_ATTR_RELATION:Ljava/lang/String; = "relation"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DM_NVI_ID:I = 0x26

.field private static final DM_PACKAGE_PATH:Ljava/lang/String; = "com.htc.android.epst.dmcmd."

.field private static final LOG_TAG:Ljava/lang/String; = "StructInitializer"

.field private static final NVDEFINE_FILENAME:Ljava/lang/String; = "initializ"

.field private static final NV_PACKAGE_PATH:Ljava/lang/String; = "com.htc.android.epst.nvitem."

.field private static final PARSE_DATA_RELATION_START:Ljava/lang/String; = "datarelation"

.field private static final PARSE_DM_CMD_START:Ljava/lang/String; = "dmcmd"

.field private static final PARSE_ITEM_RELATION_START:Ljava/lang/String; = "nvrelation"

.field private static final PARSE_NV_ITEM_START:Ljava/lang/String; = "nvitem"

.field private static final RELATIONS_FILENAME:Ljava/lang/String; = "relations"

.field private static final RELATION_REQUEST:Ljava/lang/String; = "request"

.field private static final RELATION_RESPONSE:Ljava/lang/String; = "response"

.field private static mRecordList:Lcom/htc/android/epst/internal/RecordList;


# instance fields
.field private mRuleClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/epst/internal/IRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    sput-boolean v0, Lcom/htc/android/epst/internal/StructInitializer;->DBG:Z

    .line 41
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/internal/StructInitializer;->mRuleClassMap:Ljava/util/HashMap;

    .line 45
    invoke-direct {p0}, Lcom/htc/android/epst/internal/StructInitializer;->createDefine()V

    .line 46
    invoke-direct {p0}, Lcom/htc/android/epst/internal/StructInitializer;->createInstance()V

    .line 47
    invoke-direct {p0}, Lcom/htc/android/epst/internal/StructInitializer;->createRelations()V

    .line 48
    return-void
.end method

.method private createDefine()V
    .locals 3

    .prologue
    .line 74
    const-string v1, "initializ"

    invoke-direct {p0, v1}, Lcom/htc/android/epst/internal/StructInitializer;->findXmlFile(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 75
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "can\'t find xml file : initializ.xml"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/epst/internal/StructInitializer;->parseItemXml(Landroid/content/res/XmlResourceParser;)V

    .line 79
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 80
    return-void
.end method

.method private createInstance()V
    .locals 10

    .prologue
    .line 165
    sget-object v7, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual {v7}, Lcom/htc/android/epst/internal/RecordList;->length()I

    move-result v4

    .line 166
    .local v4, itemLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 167
    sget-object v7, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual {v7, v3}, Lcom/htc/android/epst/internal/RecordList;->get(I)Lcom/htc/android/epst/internal/Record;

    move-result-object v5

    .line 168
    .local v5, record:Lcom/htc/android/epst/internal/Record;
    const-string v2, ""

    .line 169
    .local v2, fullpath:Ljava/lang/String;
    iget v7, v5, Lcom/htc/android/epst/internal/Record;->type:I

    if-nez v7, :cond_1

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.htc.android.epst.nvitem."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 177
    .local v6, tmpInstance:Ljava/lang/Object;
    if-eqz v6, :cond_3

    .line 178
    check-cast v6, Lcom/htc/android/epst/internal/StructBase;

    .end local v6           #tmpInstance:Ljava/lang/Object;
    iput-object v6, v5, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    .line 179
    iget v7, v5, Lcom/htc/android/epst/internal/Record;->type:I

    if-nez v7, :cond_2

    .line 180
    iget-object v7, v5, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    iget v8, v5, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    invoke-virtual {v7, v8}, Lcom/htc/android/epst/internal/StructBase;->setCmdId(I)V

    .line 184
    :goto_2
    iget-object v7, v5, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    iget-object v8, v5, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/android/epst/internal/StructBase;->mName:Ljava/lang/String;

    .line 185
    sget-boolean v7, Lcom/htc/android/epst/internal/StructInitializer;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "StructInitializer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create structure success : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.htc.android.epst.dmcmd."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 182
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    iget-object v7, v5, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    iget v8, v5, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    invoke-virtual {v7, v8}, Lcom/htc/android/epst/internal/StructBase;->setCmdId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 189
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "StructInitializer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 187
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #tmpInstance:Ljava/lang/Object;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t create struct "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #fullpath:Ljava/lang/String;
    .end local v5           #record:Lcom/htc/android/epst/internal/Record;
    .end local v6           #tmpInstance:Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private createRelations()V
    .locals 3

    .prologue
    .line 199
    const-string v1, "relations"

    invoke-direct {p0, v1}, Lcom/htc/android/epst/internal/StructInitializer;->findXmlFile(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 200
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "can\'t find xml file : relations.xml"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/epst/internal/StructInitializer;->parseRelationXml(Landroid/content/res/XmlResourceParser;)V

    .line 204
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 205
    return-void
.end method

.method private createRule(Ljava/lang/String;)Lcom/htc/android/epst/internal/IRule;
    .locals 6
    .parameter "ruleClassName"

    .prologue
    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, ruleInstance:Lcom/htc/android/epst/internal/IRule;
    iget-object v4, p0, Lcom/htc/android/epst/internal/StructInitializer;->mRuleClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/android/epst/internal/IRule;

    move-object v3, v0

    .line 152
    if-eqz v3, :cond_0

    .line 153
    iget-object v4, p0, Lcom/htc/android/epst/internal/StructInitializer;->mRuleClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "StructInitializer"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/htc/android/epst/internal/StructInitializer;->mRuleClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ruleInstance:Lcom/htc/android/epst/internal/IRule;
    check-cast v3, Lcom/htc/android/epst/internal/IRule;

    .restart local v3       #ruleInstance:Lcom/htc/android/epst/internal/IRule;
    goto :goto_0
.end method

.method private establishRequestResponseRelation(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, nvRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, dataRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/epst/internal/RecordList;->length()I

    move-result v8

    .line 259
    .local v8, recordLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 260
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/internal/RecordList;->get(I)Lcom/htc/android/epst/internal/Record;

    move-result-object v7

    .line 261
    .local v7, record:Lcom/htc/android/epst/internal/Record;
    iget-object v0, v7, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 262
    iget-object v0, v7, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    .line 263
    sget-boolean v17, Lcom/htc/android/epst/internal/StructInitializer;->DBG:Z

    if-eqz v17, :cond_0

    const-string v17, "StructInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "structure "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v7, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " create relations with its self"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v7           #record:Lcom/htc/android/epst/internal/Record;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 267
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 269
    .local v10, relationEnt:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 270
    .local v11, request:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 271
    .local v13, response:Ljava/lang/String;
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/android/epst/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;

    move-result-object v12

    .line 272
    .local v12, requestRecord:Lcom/htc/android/epst/internal/Record;
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/android/epst/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;

    move-result-object v14

    .line 273
    .local v14, responseRecord:Lcom/htc/android/epst/internal/Record;
    if-eqz v12, :cond_3

    if-nez v14, :cond_4

    .line 274
    :cond_3
    new-instance v17, Ljava/lang/NullPointerException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "structures "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " defines in relation.xml not initialize"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 276
    :cond_4
    iget-object v0, v14, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    .line 277
    sget-boolean v17, Lcom/htc/android/epst/internal/StructInitializer;->DBG:Z

    if-eqz v17, :cond_2

    const-string v17, "StructInitializer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "structure "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " create relations with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    .end local v10           #relationEnt:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #request:Ljava/lang/String;
    .end local v12           #requestRecord:Lcom/htc/android/epst/internal/Record;
    .end local v13           #response:Ljava/lang/String;
    .end local v14           #responseRecord:Lcom/htc/android/epst/internal/Record;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 284
    .restart local v10       #relationEnt:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, name:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 286
    .local v15, structlist:Ljava/lang/String;
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/htc/android/epst/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;

    move-result-object v7

    .line 287
    .restart local v7       #record:Lcom/htc/android/epst/internal/Record;
    if-eqz v7, :cond_6

    iget-object v0, v7, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/android/epst/internal/DataChangeListener;

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 288
    :cond_6
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "struct "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not found or struct not implements DataChangeListener"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 290
    :cond_7
    const/4 v6, 0x0

    .line 291
    .local v6, pos:I
    :goto_2
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_a

    .line 292
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 293
    .local v16, tmpName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, registerName:Ljava/lang/String;
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/android/epst/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;

    move-result-object v4

    .line 295
    .local v4, listener:Lcom/htc/android/epst/internal/Record;
    if-eqz v4, :cond_8

    iget-object v0, v4, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/android/epst/internal/DataChangeListener;

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 296
    :cond_8
    new-instance v17, Ljava/lang/NullPointerException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "struct "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " didn\'t find in relations.xml or struct didn\'t implement DataChangeListener"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 298
    :cond_9
    iget-object v0, v7, Lcom/htc/android/epst/internal/Record;->relation:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/android/epst/internal/DataChangeListener;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 301
    goto :goto_2

    .line 303
    .end local v4           #listener:Lcom/htc/android/epst/internal/Record;
    .end local v9           #registerName:Ljava/lang/String;
    .end local v16           #tmpName:Ljava/lang/String;
    :cond_a
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_e

    .line 304
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 305
    .restart local v9       #registerName:Ljava/lang/String;
    if-nez v9, :cond_b

    .line 306
    new-instance v17, Ljava/lang/NullPointerException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "struct "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " didn\'t find in relations.xml or struct didn\'t implement DataChangeListener"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 308
    :cond_b
    sget-object v17, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/android/epst/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;

    move-result-object v4

    .line 309
    .restart local v4       #listener:Lcom/htc/android/epst/internal/Record;
    if-eqz v4, :cond_c

    iget-object v0, v4, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/htc/android/epst/internal/DataChangeListener;

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 310
    :cond_c
    new-instance v17, Ljava/lang/NullPointerException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "struct "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " didn\'t find in relations.xml or struct didn\'t implement DataChangeListener"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 312
    :cond_d
    iget-object v0, v7, Lcom/htc/android/epst/internal/Record;->relation:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/android/epst/internal/DataChangeListener;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v4           #listener:Lcom/htc/android/epst/internal/Record;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #pos:I
    .end local v7           #record:Lcom/htc/android/epst/internal/Record;
    .end local v9           #registerName:Ljava/lang/String;
    .end local v10           #relationEnt:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #structlist:Ljava/lang/String;
    :cond_e
    return-void
.end method

.method private findXmlFile(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 11
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/Utility;->getEpstActivity()Landroid/app/Activity;

    move-result-object v1

    .line 53
    .local v1, epstContext:Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 54
    const-class v7, Lcom/htc/android/epst/R$xml;

    .line 55
    .local v7, stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    .local v2, fIDs:[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_1

    .line 57
    aget-object v3, v2, v4

    .line 58
    .local v3, fld:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 59
    .local v5, nID:I
    sget-boolean v8, Lcom/htc/android/epst/internal/StructInitializer;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "StructInitializer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 61
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 70
    .end local v1           #epstContext:Landroid/app/Activity;
    .end local v2           #fIDs:[Ljava/lang/reflect/Field;
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v4           #i:I
    .end local v5           #nID:I
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-object v6

    .line 56
    .restart local v1       #epstContext:Landroid/app/Activity;
    .restart local v2       #fIDs:[Ljava/lang/reflect/Field;
    .restart local v3       #fld:Ljava/lang/reflect/Field;
    .restart local v4       #i:I
    .restart local v5       #nID:I
    .restart local v7       #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v1           #epstContext:Landroid/app/Activity;
    .end local v2           #fIDs:[Ljava/lang/reflect/Field;
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v4           #i:I
    .end local v5           #nID:I
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "StructInitializer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseItemXml(Landroid/content/res/XmlResourceParser;)V
    .locals 14
    .parameter "parser"

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 83
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 85
    .local v1, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 86
    .local v4, eventType:I
    :goto_0
    if-eq v4, v13, :cond_4

    .line 87
    const/4 v11, 0x2

    if-ne v4, v11, :cond_e

    .line 88
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, curTagName:Ljava/lang/String;
    const-string v11, "nvitem"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "dmcmd"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 90
    :cond_0
    new-instance v7, Lcom/htc/android/epst/internal/Record;

    invoke-direct {v7}, Lcom/htc/android/epst/internal/Record;-><init>()V

    .line 91
    .local v7, record:Lcom/htc/android/epst/internal/Record;
    const-string v11, "nvitem"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 92
    const/4 v11, 0x0

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->type:I

    .line 96
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    .line 97
    .local v10, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_c

    .line 98
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, attrName:Ljava/lang/String;
    const-string v11, "id"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 100
    iget v11, v7, Lcom/htc/android/epst/internal/Record;->type:I

    if-nez v11, :cond_5

    .line 101
    const/16 v11, 0x26

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    .line 102
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    .line 97
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 93
    .end local v0           #attrName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v10           #size:I
    :cond_3
    const-string v11, "dmcmd"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 94
    const/4 v11, 0x1

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    .end local v2           #curTagName:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v7           #record:Lcom/htc/android/epst/internal/Record;
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "StructInitializer"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    return-void

    .line 104
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v2       #curTagName:Ljava/lang/String;
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #record:Lcom/htc/android/epst/internal/Record;
    .restart local v10       #size:I
    :cond_5
    const/4 v11, -0x1

    :try_start_1
    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    .line 105
    const/4 v11, 0x0

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    goto :goto_3

    .line 107
    :cond_6
    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 108
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    goto :goto_3

    .line 109
    :cond_7
    const-string v11, "rule"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 110
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, ruleClassName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/android/epst/internal/StructInitializer;->createRule(Ljava/lang/String;)Lcom/htc/android/epst/internal/IRule;

    move-result-object v9

    .line 112
    .local v9, ruleInstance:Lcom/htc/android/epst/internal/IRule;
    if-eqz v9, :cond_2

    .line 113
    iput-object v9, v7, Lcom/htc/android/epst/internal/Record;->rule:Lcom/htc/android/epst/internal/IRule;

    goto :goto_3

    .line 115
    .end local v8           #ruleClassName:Ljava/lang/String;
    .end local v9           #ruleInstance:Lcom/htc/android/epst/internal/IRule;
    :cond_8
    const-string v11, "custom_attr"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 116
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/htc/android/epst/internal/Record;->customAttr:Ljava/lang/String;

    goto :goto_3

    .line 117
    :cond_9
    const-string v11, "index"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 118
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    .line 119
    .local v6, index:I
    if-ne v6, v12, :cond_a

    .line 120
    const/4 v11, 0x0

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->index:I

    goto :goto_3

    .line 122
    :cond_a
    iput v6, v7, Lcom/htc/android/epst/internal/Record;->index:I

    goto :goto_3

    .line 124
    .end local v6           #index:I
    :cond_b
    const-string v11, "indexlen"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    iput v11, v7, Lcom/htc/android/epst/internal/Record;->indexlen:I

    goto :goto_3

    .line 128
    .end local v0           #attrName:Ljava/lang/String;
    :cond_c
    iget v11, v7, Lcom/htc/android/epst/internal/Record;->index:I

    if-eqz v11, :cond_d

    iget v11, v7, Lcom/htc/android/epst/internal/Record;->index:I

    if-eq v11, v12, :cond_d

    .line 129
    iget v11, v7, Lcom/htc/android/epst/internal/Record;->indexlen:I

    if-nez v11, :cond_d

    iget v11, v7, Lcom/htc/android/epst/internal/Record;->indexlen:I

    if-ne v11, v12, :cond_d

    .line 130
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "define index value, you also must define the index length(byte)"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 133
    :cond_d
    sget-object v11, Lcom/htc/android/epst/internal/StructInitializer;->mRecordList:Lcom/htc/android/epst/internal/RecordList;

    invoke-virtual {v11, v7}, Lcom/htc/android/epst/internal/RecordList;->add(Lcom/htc/android/epst/internal/Record;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 134
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "duplicate item added"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 138
    .end local v2           #curTagName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #record:Lcom/htc/android/epst/internal/Record;
    .end local v10           #size:I
    :cond_e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_0
.end method

.method private parseRelationXml(Landroid/content/res/XmlResourceParser;)V
    .locals 14
    .parameter "parser"

    .prologue
    .line 208
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 210
    .local v1, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 211
    .local v4, eventType:I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v7, nvRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v2, dataRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v12, 0x1

    if-eq v4, v12, :cond_c

    .line 214
    const/4 v12, 0x2

    if-ne v4, v12, :cond_5

    .line 215
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "nvrelation"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 216
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    .line 217
    .local v10, size:I
    const/4 v8, 0x0

    .line 218
    .local v8, request:Ljava/lang/String;
    const/4 v9, 0x0

    .line 219
    .local v9, response:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v10, :cond_2

    .line 220
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, attrName:Ljava/lang/String;
    const-string v12, "request"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 222
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 223
    :cond_1
    const-string v12, "response"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 224
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 227
    .end local v0           #attrName:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    if-nez v9, :cond_4

    .line 228
    :cond_3
    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "must define request and response structure in the relation.xml"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2           #dataRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v7           #nvRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #request:Ljava/lang/String;
    .end local v9           #response:Ljava/lang/String;
    .end local v10           #size:I
    :catch_0
    move-exception v3

    .line 253
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "StructInitializer"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v3           #e:Ljava/lang/Exception;
    :goto_3
    return-void

    .line 230
    .restart local v2       #dataRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #nvRelationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #request:Ljava/lang/String;
    .restart local v9       #response:Ljava/lang/String;
    .restart local v10       #size:I
    :cond_4
    :try_start_1
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v5           #i:I
    .end local v8           #request:Ljava/lang/String;
    .end local v9           #response:Ljava/lang/String;
    .end local v10           #size:I
    :cond_5
    :goto_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_0

    .line 231
    :cond_6
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "datarelation"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 232
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    .line 233
    .restart local v10       #size:I
    const/4 v6, 0x0

    .line 234
    .local v6, name:Ljava/lang/String;
    const/4 v11, 0x0

    .line 235
    .local v11, structlist:Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v10, :cond_9

    .line 236
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0       #attrName:Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 238
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 239
    :cond_8
    const-string v12, "relation"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 240
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 243
    .end local v0           #attrName:Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_b

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 244
    :cond_a
    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "must define name and structure in the relation.xml"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 246
    :cond_b
    invoke-virtual {v2, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 251
    .end local v5           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v10           #size:I
    .end local v11           #structlist:Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v7, v2}, Lcom/htc/android/epst/internal/StructInitializer;->establishRequestResponseRelation(Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
