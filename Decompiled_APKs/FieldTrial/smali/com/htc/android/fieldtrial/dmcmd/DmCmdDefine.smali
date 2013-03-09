.class public Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;
.super Ljava/lang/Object;
.source "DmCmdDefine.java"


# static fields
.field private static final DBG:Z = true

.field private static final DEFINE_FILENAME:Ljava/lang/String; = "dmitem_define"

.field public static final DM_BAND_CLASS:I = 0x63

.field public static final DM_CMD_CODE_PRL_READ:I = 0x49

.field public static final DM_GPS_INFO:I = 0xd8

.field public static final DM_HDR_RX_INFO:I = 0xdf

.field public static final DM_PILOT_SETS:I = 0x40

.field public static final DM_RADIO_INFO:I = 0x7c

.field public static final DM_RX_INFO:I = 0xcd

.field public static final DM_STATUS:I = 0xc

.field public static final DM_VERSION_NUMBER:I = 0x0

.field private static ITEM_CUSTOM_ATTR:Ljava/lang/String; = null

.field private static ITEM_ID:Ljava/lang/String; = null

.field private static ITEM_INDEX:Ljava/lang/String; = null

.field private static ITEM_INDEX_LENGTH:Ljava/lang/String; = null

.field private static ITEM_NAME:Ljava/lang/String; = null

.field private static ITEM_RELATION:Ljava/lang/String; = null

.field private static ITEM_RULE:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DmCmdDefine"

.field private static final NV_PACKAGE_PRATH:Ljava/lang/String; = "com.htc.android.fieldtrial.nvitem."

.field private static final PACKAGE_PRATH:Ljava/lang/String; = "com.htc.android.fieldtrial.dmcmd."

.field private static PARSE_ITEM_START:Ljava/lang/String; = null

.field private static PARSE_NVITEM_START:Ljava/lang/String; = null

.field private static PARSE_RELATION_START:Ljava/lang/String; = null

.field private static final RELATIONS_FILENAME:Ljava/lang/String; = "relations"

.field private static RELATION_REQUEST:Ljava/lang/String;

.field private static RELATION_RESPONSE:Ljava/lang/String;

.field private static mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;


# instance fields
.field private mRuleClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/fieldtrial/internal/IRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "id"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_ID:Ljava/lang/String;

    .line 41
    const-string v0, "name"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "rule"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_RULE:Ljava/lang/String;

    .line 43
    const-string v0, "relation"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_RELATION:Ljava/lang/String;

    .line 44
    const-string v0, "index"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_INDEX:Ljava/lang/String;

    .line 45
    const-string v0, "indexlen"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_INDEX_LENGTH:Ljava/lang/String;

    .line 46
    const-string v0, "custom_attr"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_CUSTOM_ATTR:Ljava/lang/String;

    .line 47
    const-string v0, "request"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->RELATION_REQUEST:Ljava/lang/String;

    .line 48
    const-string v0, "response"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->RELATION_RESPONSE:Ljava/lang/String;

    .line 49
    const-string v0, "item"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->PARSE_ITEM_START:Ljava/lang/String;

    .line 50
    const-string v0, "nvitem"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->PARSE_NVITEM_START:Ljava/lang/String;

    .line 51
    const-string v0, "dmrelation"

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->PARSE_RELATION_START:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v0

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mRuleClassMap:Ljava/util/HashMap;

    .line 57
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->createDefine()V

    .line 58
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->createInstance()V

    .line 59
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->createRelations()V

    .line 60
    return-void
.end method

.method private createDefine()V
    .locals 3

    .prologue
    .line 86
    const-string v1, "dmitem_define"

    invoke-direct {p0, v1}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->findXmlFile(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 87
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "can\'t find xml file : dmitem_define.xml"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->parseItemXml(Landroid/content/res/XmlResourceParser;)V

    .line 91
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 92
    return-void
.end method

.method private createInstance()V
    .locals 10

    .prologue
    .line 179
    sget-object v7, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v7}, Lcom/htc/android/fieldtrial/internal/RecordList;->length()I

    move-result v4

    .line 180
    .local v4, itemLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 181
    sget-object v7, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v7, v3}, Lcom/htc/android/fieldtrial/internal/RecordList;->get(I)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v5

    .line 182
    .local v5, record:Lcom/htc/android/fieldtrial/internal/Record;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.htc.android.fieldtrial.dmcmd."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, fullpath:Ljava/lang/String;
    iget v7, v5, Lcom/htc/android/fieldtrial/internal/Record;->type:I

    if-nez v7, :cond_0

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.htc.android.fieldtrial.nvitem."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 190
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 191
    .local v6, tmpInstance:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 192
    iget v7, v5, Lcom/htc/android/fieldtrial/internal/Record;->type:I

    if-nez v7, :cond_1

    .line 193
    check-cast v6, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;

    .end local v6           #tmpInstance:Ljava/lang/Object;
    iput-object v6, v5, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    .line 194
    iget-object v7, v5, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    iget v8, v5, Lcom/htc/android/fieldtrial/internal/Record;->nvitemId:I

    invoke-virtual {v7, v8}, Lcom/htc/android/fieldtrial/internal/StructBase;->setCmdId(I)V

    .line 199
    :goto_1
    iget-object v7, v5, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    iget-object v8, v5, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/android/fieldtrial/internal/StructBase;->mName:Ljava/lang/String;

    .line 200
    const-string v7, "DmCmdDefine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create structure success : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #tmpInstance:Ljava/lang/Object;
    :cond_1
    check-cast v6, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    .end local v6           #tmpInstance:Ljava/lang/Object;
    iput-object v6, v5, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    .line 197
    iget-object v7, v5, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    iget v8, v5, Lcom/htc/android/fieldtrial/internal/Record;->dmCmdId:I

    invoke-virtual {v7, v8}, Lcom/htc/android/fieldtrial/internal/StructBase;->setCmdId(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 204
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 202
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #tmpInstance:Ljava/lang/Object;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t create struct "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 206
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #tmpInstance:Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 208
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 212
    .end local v1           #e:Ljava/lang/InstantiationException;
    .end local v2           #fullpath:Ljava/lang/String;
    .end local v5           #record:Lcom/htc/android/fieldtrial/internal/Record;
    :cond_3
    return-void
.end method

.method private createRelations()V
    .locals 4

    .prologue
    .line 218
    const-string v2, "relations"

    invoke-direct {p0, v2}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->findXmlFile(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 219
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_0

    .line 220
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "can\'t find xml file : relations.xml"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->parseRelationXml(Landroid/content/res/XmlResourceParser;)Ljava/util/HashMap;

    move-result-object v1

    .line 223
    .local v1, relationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 224
    invoke-direct {p0, v1}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->establishRequestResponseRelation(Ljava/util/HashMap;)V

    .line 225
    return-void
.end method

.method private createRule(Ljava/lang/String;)Lcom/htc/android/fieldtrial/internal/IRule;
    .locals 6
    .parameter "ruleClassName"

    .prologue
    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, ruleInstance:Lcom/htc/android/fieldtrial/internal/IRule;
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mRuleClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 164
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 165
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/android/fieldtrial/internal/IRule;

    move-object v3, v0

    .line 166
    if-eqz v3, :cond_0

    .line 167
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mRuleClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "DmCmdDefine"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mRuleClassMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ruleInstance:Lcom/htc/android/fieldtrial/internal/IRule;
    check-cast v3, Lcom/htc/android/fieldtrial/internal/IRule;

    .restart local v3       #ruleInstance:Lcom/htc/android/fieldtrial/internal/IRule;
    goto :goto_0
.end method

.method private establishRequestResponseRelation(Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 265
    .local v4, relationEnt:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    .local v5, request:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 267
    .local v7, response:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v9, v5}, Lcom/htc/android/fieldtrial/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v6

    .line 268
    .local v6, requestRecord:Lcom/htc/android/fieldtrial/internal/Record;
    sget-object v9, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v9, v7}, Lcom/htc/android/fieldtrial/internal/RecordList;->getByName(Ljava/lang/String;)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v8

    .line 269
    .local v8, responseRecord:Lcom/htc/android/fieldtrial/internal/Record;
    if-eqz v6, :cond_0

    if-nez v8, :cond_1

    .line 270
    :cond_0
    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "structures "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "defines in relation.xml not initialize"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 272
    :cond_1
    iget-object v9, v8, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    iput-object v9, v6, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    .line 273
    const-string v9, "DmCmdDefine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "structure "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " create relations with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v4           #relationEnt:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #request:Ljava/lang/String;
    .end local v6           #requestRecord:Lcom/htc/android/fieldtrial/internal/Record;
    .end local v7           #response:Ljava/lang/String;
    .end local v8           #responseRecord:Lcom/htc/android/fieldtrial/internal/Record;
    :cond_2
    sget-object v9, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v9}, Lcom/htc/android/fieldtrial/internal/RecordList;->length()I

    move-result v3

    .line 276
    .local v3, recordLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 277
    sget-object v9, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v9, v0}, Lcom/htc/android/fieldtrial/internal/RecordList;->get(I)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v2

    .line 278
    .local v2, record:Lcom/htc/android/fieldtrial/internal/Record;
    iget-object v9, v2, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    if-nez v9, :cond_3

    .line 279
    iget-object v9, v2, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    iput-object v9, v2, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    .line 280
    const-string v9, "DmCmdDefine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "structure "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " create relations with its self"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    .end local v2           #record:Lcom/htc/android/fieldtrial/internal/Record;
    :cond_4
    return-void
.end method

.method private findXmlFile(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 11
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 64
    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getFieldTrialActivity()Landroid/app/Activity;

    move-result-object v1

    .line 65
    .local v1, epstContext:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 66
    const-class v7, Lcom/htc/android/fieldtrial/R$xml;

    .line 67
    .local v7, stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 68
    .local v2, fIDs:[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 69
    aget-object v3, v2, v4

    .line 70
    .local v3, fld:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 71
    .local v5, nID:I
    const-string v8, "DmCmdDefine"

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

    .line 72
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 82
    .end local v1           #epstContext:Landroid/app/Activity;
    .end local v2           #fIDs:[Ljava/lang/reflect/Field;
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v4           #i:I
    .end local v5           #nID:I
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return-object v6

    .line 68
    .restart local v1       #epstContext:Landroid/app/Activity;
    .restart local v2       #fIDs:[Ljava/lang/reflect/Field;
    .restart local v3       #fld:Ljava/lang/reflect/Field;
    .restart local v4       #i:I
    .restart local v5       #nID:I
    .restart local v7       #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v1           #epstContext:Landroid/app/Activity;
    .end local v2           #fIDs:[Ljava/lang/reflect/Field;
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v4           #i:I
    .end local v5           #nID:I
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "DmCmdDefine"

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

    .line 95
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 97
    .local v1, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 98
    .local v4, eventType:I
    :goto_0
    if-eq v4, v13, :cond_3

    .line 99
    const/4 v11, 0x2

    if-ne v4, v11, :cond_c

    .line 101
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, curTagName:Ljava/lang/String;
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->PARSE_ITEM_START:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->PARSE_NVITEM_START:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 105
    :cond_0
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    .line 106
    .local v10, size:I
    new-instance v7, Lcom/htc/android/fieldtrial/internal/Record;

    invoke-direct {v7}, Lcom/htc/android/fieldtrial/internal/Record;-><init>()V

    .line 108
    .local v7, record:Lcom/htc/android/fieldtrial/internal/Record;
    const-string v11, "nvitem"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 109
    const/4 v11, 0x0

    iput v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->type:I

    .line 114
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v10, :cond_a

    .line 115
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, attrName:Ljava/lang/String;
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_ID:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 117
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    iput v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->dmCmdId:I

    .line 118
    iget v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->type:I

    if-nez v11, :cond_1

    .line 119
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    iput v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->nvitemId:I

    .line 114
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 111
    .end local v0           #attrName:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    const/4 v11, 0x1

    iput v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v2           #curTagName:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v7           #record:Lcom/htc/android/fieldtrial/internal/Record;
    .end local v10           #size:I
    :catch_0
    move-exception v3

    .line 156
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "DmCmdDefine"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    return-void

    .line 121
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v2       #curTagName:Ljava/lang/String;
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v7       #record:Lcom/htc/android/fieldtrial/internal/Record;
    .restart local v10       #size:I
    :cond_4
    :try_start_1
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 122
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->name:Ljava/lang/String;

    goto :goto_3

    .line 123
    :cond_5
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_RULE:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 124
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, ruleClassName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->createRule(Ljava/lang/String;)Lcom/htc/android/fieldtrial/internal/IRule;

    move-result-object v9

    .line 126
    .local v9, ruleInstance:Lcom/htc/android/fieldtrial/internal/IRule;
    if-eqz v9, :cond_1

    .line 127
    iput-object v9, v7, Lcom/htc/android/fieldtrial/internal/Record;->rule:Lcom/htc/android/fieldtrial/internal/IRule;

    goto :goto_3

    .line 129
    .end local v8           #ruleClassName:Ljava/lang/String;
    .end local v9           #ruleInstance:Lcom/htc/android/fieldtrial/internal/IRule;
    :cond_6
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_CUSTOM_ATTR:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 130
    invoke-interface {v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->customAttr:Ljava/lang/String;

    goto :goto_3

    .line 131
    :cond_7
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 132
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    .line 133
    .local v6, index:I
    if-ne v6, v12, :cond_8

    .line 134
    const/4 v11, 0x0

    iput v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->index:I

    goto :goto_3

    .line 136
    :cond_8
    iput v6, v7, Lcom/htc/android/fieldtrial/internal/Record;->index:I

    goto :goto_3

    .line 138
    .end local v6           #index:I
    :cond_9
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->ITEM_INDEX_LENGTH:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 139
    const/4 v11, -0x1

    invoke-interface {v1, v5, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    iput v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->indexlen:I

    goto :goto_3

    .line 142
    .end local v0           #attrName:Ljava/lang/String;
    :cond_a
    iget v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->index:I

    if-eqz v11, :cond_b

    iget v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->index:I

    if-eq v11, v12, :cond_b

    .line 143
    iget v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->indexlen:I

    if-nez v11, :cond_b

    iget v11, v7, Lcom/htc/android/fieldtrial/internal/Record;->indexlen:I

    if-ne v11, v12, :cond_b

    .line 144
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "define index value, you also must define the index length(byte)"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 147
    :cond_b
    sget-object v11, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->mDmCmdRecord:Lcom/htc/android/fieldtrial/internal/RecordList;

    invoke-virtual {v11, v7}, Lcom/htc/android/fieldtrial/internal/RecordList;->add(Lcom/htc/android/fieldtrial/internal/Record;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 148
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "duplicate item added"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 152
    .end local v2           #curTagName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #record:Lcom/htc/android/fieldtrial/internal/Record;
    .end local v10           #size:I
    :cond_c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_0
.end method

.method private parseRelationXml(Landroid/content/res/XmlResourceParser;)Ljava/util/HashMap;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 230
    .local v1, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    .line 231
    .local v3, eventType:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v5, relationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v9, 0x1

    if-eq v3, v9, :cond_4

    .line 233
    const/4 v9, 0x2

    if-ne v3, v9, :cond_6

    .line 234
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->PARSE_RELATION_START:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 235
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 236
    .local v8, size:I
    const/4 v6, 0x0

    .line 237
    .local v6, request:Ljava/lang/String;
    const/4 v7, 0x0

    .line 238
    .local v7, response:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_2

    .line 239
    invoke-interface {v1, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, attrName:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->RELATION_REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 241
    invoke-interface {v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    :cond_1
    sget-object v9, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;->RELATION_RESPONSE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 243
    invoke-interface {v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 246
    .end local v0           #attrName:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    if-nez v7, :cond_5

    .line 247
    :cond_3
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "must define request and response structure in the relation.xml"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v3           #eventType:I
    .end local v4           #i:I
    .end local v5           #relationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #response:Ljava/lang/String;
    .end local v8           #size:I
    :catch_0
    move-exception v2

    .line 256
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "DmCmdDefine"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v5, 0x0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    return-object v5

    .line 249
    .restart local v3       #eventType:I
    .restart local v4       #i:I
    .restart local v5       #relationMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #request:Ljava/lang/String;
    .restart local v7       #response:Ljava/lang/String;
    .restart local v8       #size:I
    :cond_5
    :try_start_1
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v4           #i:I
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #response:Ljava/lang/String;
    .end local v8           #size:I
    :cond_6
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0
.end method
