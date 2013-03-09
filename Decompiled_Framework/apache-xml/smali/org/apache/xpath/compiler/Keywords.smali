.class public Lorg/apache/xpath/compiler/Keywords;
.super Ljava/lang/Object;
.source "Keywords.java"


# static fields
.field private static final FROM_ANCESTORS_OR_SELF_STRING:Ljava/lang/String; = "ancestor-or-self"

.field private static final FROM_ANCESTORS_STRING:Ljava/lang/String; = "ancestor"

.field private static final FROM_ATTRIBUTES_STRING:Ljava/lang/String; = "attribute"

.field private static final FROM_CHILDREN_STRING:Ljava/lang/String; = "child"

.field private static final FROM_DESCENDANTS_OR_SELF_STRING:Ljava/lang/String; = "descendant-or-self"

.field private static final FROM_DESCENDANTS_STRING:Ljava/lang/String; = "descendant"

.field private static final FROM_FOLLOWING_SIBLINGS_STRING:Ljava/lang/String; = "following-sibling"

.field private static final FROM_FOLLOWING_STRING:Ljava/lang/String; = "following"

.field private static final FROM_NAMESPACE_STRING:Ljava/lang/String; = "namespace"

.field private static final FROM_PARENT_STRING:Ljava/lang/String; = "parent"

.field private static final FROM_PRECEDING_SIBLINGS_STRING:Ljava/lang/String; = "preceding-sibling"

.field private static final FROM_PRECEDING_STRING:Ljava/lang/String; = "preceding"

.field private static final FROM_SELF_ABBREVIATED_STRING:Ljava/lang/String; = "."

.field private static final FROM_SELF_STRING:Ljava/lang/String; = "self"

.field public static final FUNC_BOOLEAN_STRING:Ljava/lang/String; = "boolean"

.field public static final FUNC_CEILING_STRING:Ljava/lang/String; = "ceiling"

.field public static final FUNC_CONCAT_STRING:Ljava/lang/String; = "concat"

.field public static final FUNC_CONTAINS_STRING:Ljava/lang/String; = "contains"

.field public static final FUNC_COUNT_STRING:Ljava/lang/String; = "count"

.field public static final FUNC_CURRENT_STRING:Ljava/lang/String; = "current"

.field public static final FUNC_DOCLOCATION_STRING:Ljava/lang/String; = "document-location"

.field public static final FUNC_EXT_ELEM_AVAILABLE_STRING:Ljava/lang/String; = "element-available"

.field public static final FUNC_EXT_FUNCTION_AVAILABLE_STRING:Ljava/lang/String; = "function-available"

.field public static final FUNC_FALSE_STRING:Ljava/lang/String; = "false"

.field public static final FUNC_FLOOR_STRING:Ljava/lang/String; = "floor"

.field public static final FUNC_GENERATE_ID_STRING:Ljava/lang/String; = "generate-id"

.field static final FUNC_ID_STRING:Ljava/lang/String; = "id"

.field public static final FUNC_KEY_STRING:Ljava/lang/String; = "key"

.field public static final FUNC_LANG_STRING:Ljava/lang/String; = "lang"

.field public static final FUNC_LAST_STRING:Ljava/lang/String; = "last"

.field public static final FUNC_LOCAL_PART_STRING:Ljava/lang/String; = "local-name"

.field public static final FUNC_NAMESPACE_STRING:Ljava/lang/String; = "namespace-uri"

.field public static final FUNC_NAME_STRING:Ljava/lang/String; = "name"

.field public static final FUNC_NORMALIZE_SPACE_STRING:Ljava/lang/String; = "normalize-space"

.field public static final FUNC_NOT_STRING:Ljava/lang/String; = "not"

.field public static final FUNC_NUMBER_STRING:Ljava/lang/String; = "number"

.field public static final FUNC_POSITION_STRING:Ljava/lang/String; = "position"

.field public static final FUNC_ROUND_STRING:Ljava/lang/String; = "round"

.field public static final FUNC_STARTS_WITH_STRING:Ljava/lang/String; = "starts-with"

.field public static final FUNC_STRING_LENGTH_STRING:Ljava/lang/String; = "string-length"

.field public static final FUNC_STRING_STRING:Ljava/lang/String; = "string"

.field public static final FUNC_SUBSTRING_AFTER_STRING:Ljava/lang/String; = "substring-after"

.field public static final FUNC_SUBSTRING_BEFORE_STRING:Ljava/lang/String; = "substring-before"

.field public static final FUNC_SUBSTRING_STRING:Ljava/lang/String; = "substring"

.field public static final FUNC_SUM_STRING:Ljava/lang/String; = "sum"

.field public static final FUNC_SYSTEM_PROPERTY_STRING:Ljava/lang/String; = "system-property"

.field public static final FUNC_TRANSLATE_STRING:Ljava/lang/String; = "translate"

.field public static final FUNC_TRUE_STRING:Ljava/lang/String; = "true"

.field public static final FUNC_UNPARSED_ENTITY_URI_STRING:Ljava/lang/String; = "unparsed-entity-uri"

.field private static final NODETYPE_ANYELEMENT_STRING:Ljava/lang/String; = "*"

.field private static final NODETYPE_COMMENT_STRING:Ljava/lang/String; = "comment"

.field private static final NODETYPE_NODE_STRING:Ljava/lang/String; = "node"

.field private static final NODETYPE_PI_STRING:Ljava/lang/String; = "processing-instruction"

.field private static final NODETYPE_TEXT_STRING:Ljava/lang/String; = "text"

.field private static m_axisnames:Ljava/util/Hashtable;

.field private static m_keywords:Ljava/util/Hashtable;

.field private static m_nodetests:Ljava/util/Hashtable;

.field private static m_nodetypes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x409

    const/16 v7, 0x408

    const/16 v6, 0x407

    const/16 v5, 0x406

    const/16 v4, 0x30

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "ancestor"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "ancestor-or-self"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "attribute"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "child"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "descendant"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "descendant-or-self"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "following"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "following-sibling"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "parent"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "preceding"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "preceding-sibling"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "self"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    const-string v1, "namespace"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    const-string v1, "comment"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    const-string v1, "text"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    const-string v1, "processing-instruction"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    const-string v1, "node"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    const-string v1, "*"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    const-string v1, "."

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    const-string v1, "id"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    const-string v1, "key"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    const-string v1, "comment"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    const-string v1, "text"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    const-string v1, "processing-instruction"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    const-string v1, "node"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAxisName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getKeyWord(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getNodeType(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
