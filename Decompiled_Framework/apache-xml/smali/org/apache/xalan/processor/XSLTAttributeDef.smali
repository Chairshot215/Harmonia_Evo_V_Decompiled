.class public Lorg/apache/xalan/processor/XSLTAttributeDef;
.super Ljava/lang/Object;
.source "XSLTAttributeDef.java"


# static fields
.field static final ERROR:I = 0x1

.field static final FATAL:I = 0x0

.field static final S_FOREIGNATTR_SETTER:Ljava/lang/String; = "setForeignAttr"

.field static final T_AVT:I = 0x3

.field static final T_AVT_QNAME:I = 0x12

.field static final T_CDATA:I = 0x1

.field static final T_CHAR:I = 0x6

.field static final T_ENUM:I = 0xb

.field static final T_ENUM_OR_PQNAME:I = 0x10

.field static final T_EXPR:I = 0x5

.field static final T_NCNAME:I = 0x11

.field static final T_NMTOKEN:I = 0xd

.field static final T_NUMBER:I = 0x7

.field static final T_PATTERN:I = 0x4

.field static final T_PREFIXLIST:I = 0x14

.field static final T_PREFIX_URLLIST:I = 0xf

.field static final T_QNAME:I = 0x9

.field static final T_QNAMES:I = 0xa

.field static final T_QNAMES_RESOLVE_NULL:I = 0x13

.field static final T_SIMPLEPATTERNLIST:I = 0xc

.field static final T_STRINGLIST:I = 0xe

.field static final T_URL:I = 0x2

.field static final T_YESNO:I = 0x8

.field static final WARNING:I = 0x2

.field static final m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;


# instance fields
.field private m_default:Ljava/lang/String;

.field private m_enums:Lorg/apache/xml/utils/StringToIntTable;

.field m_errorType:I

.field private m_name:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_required:Z

.field m_setterString:Ljava/lang/String;

.field private m_supportsAVT:Z

.field private m_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const-string v1, "*"

    const-string v2, "*"

    const/4 v3, 0x1

    const/4 v6, 0x2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    iput p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    iput-object p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    iput-boolean p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    new-instance v0, Lorg/apache/xml/utils/StringToIntTable;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    new-instance v0, Lorg/apache/xml/utils/StringToIntTable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p11, p12}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/16 v2, 0x10

    :goto_0
    iput v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    new-instance v2, Lorg/apache/xml/utils/StringToIntTable;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v2, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v2, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    move/from16 v0, p12

    invoke-virtual {v2, p11, v0}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    move-object/from16 v0, p13

    move/from16 v1, p14

    invoke-virtual {v2, v0, v1}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/16 v2, 0xb

    goto :goto_0
.end method

.method private getEnum(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringToIntTable;->get(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getEnumNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringToIntTable;->keys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getListOfEnums()Ljava/lang/StringBuffer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnumNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2

    instance-of v1, p1, Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1

    const-class v0, Lorg/apache/xpath/XPath;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_5

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_6

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_6
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_7

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_7
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_8
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0
.end method

.method private handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getErrorType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p2, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v3, "yes"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "INVALID_BOOLEAN"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v1

    aput-object p5, v4, v0

    invoke-direct {p0, p1, v3, v4, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/Boolean;

    const-string v3, "yes"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method getDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-object v0
.end method

.method getErrorType()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method getRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    return v0
.end method

.method public getSetterMethodName()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    if-nez v4, :cond_6

    sget-object v4, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    if-ne v4, p0, :cond_0

    const-string v4, "setForeignAttr"

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "addLiteralResultAttribute"

    iput-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v4, v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :cond_3
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    :cond_6
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    goto :goto_0
.end method

.method getSupportsAVT()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    return v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    return v0
.end method

.method processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v7

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xalan/templates/AVT;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "INVALID_QNAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-gez v9, :cond_3

    move-object/from16 v10, p5

    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v10}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const-string v2, "INVALID_QNAME"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_1

    :catch_0
    move-exception v12

    move-object v1, v8

    :goto_2
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    move-object v0, p5

    goto :goto_0
.end method

.method processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "INVALID_TCHAR"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const-string v1, "INVALID_TCHAR"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method

.method processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Lorg/apache/xalan/templates/AVT;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_0
    return-object v2

    :catch_0
    move-exception v11

    move-object v1, v8

    :goto_1
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_0
    move-object v1, v8

    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result v10

    const/16 v2, -0x2710

    if-ne v10, v2, :cond_2

    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v2, "INVALID_ENUM"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v2, Lorg/apache/xalan/templates/AVT;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->isSimple()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v12, v2

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result v11

    const/16 v3, -0x2710

    if-eq v11, v3, :cond_3

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(I)V

    :cond_2
    move-object v2, v12

    goto :goto_0

    :catch_0
    move-exception v15

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    :cond_3
    :try_start_1
    new-instance v13, Lorg/apache/xml/utils/QName;

    const/4 v3, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    if-nez v12, :cond_4

    move-object v12, v13

    :cond_4
    invoke-virtual {v13}, Lorg/apache/xml/utils/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v3, " <qname-but-not-ncname>"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "INVALID_ENUM"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v10

    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v3, " <qname-but-not-ncname>"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "INVALID_ENUM"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0

    :catch_2
    move-exception v14

    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v3, " <qname-but-not-ncname>"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "INVALID_ENUM"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v14}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "INVALID_NCNAME"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    move-object v0, v7

    :goto_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "INVALID_NCNAME"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p5

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "INVALID_NMTOKEN"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "INVALID_NMTOKEN"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p5, v2, v4

    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v0, v8

    goto :goto_0

    :cond_2
    move-object v0, p5

    goto :goto_0
.end method

.method processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v9

    move-object v0, v7

    :goto_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v8

    move-object v0, v7

    :goto_2
    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v8

    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v4, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-instance v3, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v3, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "ER_CANT_RESOLVE_NSPREFIX"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    return-object v3
.end method

.method processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v4, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-instance v3, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v3, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "ER_CANT_RESOLVE_NSPREFIX"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    return-object v3
.end method

.method processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v1, Lorg/apache/xml/utils/QName;

    const/4 v4, 0x1

    invoke-direct {v1, p5, p1, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v4, "INVALID_QNAME"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    aput-object p5, v5, v6

    invoke-direct {p0, p1, v4, v5, v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "INVALID_QNAME"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    aput-object p5, v5, v6

    invoke-direct {p0, p1, v4, v5, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    move-object v1, v3

    goto :goto_0
.end method

.method processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t\n\r\u000c"

    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v4, Lorg/apache/xml/utils/QName;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method final processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v5, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-direct {v6, v0, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/apache/xml/utils/QName;

    invoke-direct {v6, v4, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " \t\n\r\u000c"

    invoke-direct {v5, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_0
    return-object v3
.end method

.method processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 5

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t\n\r\u000c"

    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-instance v2, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    move-object v0, p5

    goto :goto_0
.end method

.method processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getType()I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-direct/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_b
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v10, "xmlns"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "xmlns:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSetterMethodName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    :try_start_0
    const-string v10, "setForeignAttr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x4

    new-array v1, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v7, v1, v10

    const/4 v10, 0x1

    aput-object v7, v1, v10

    const/4 v10, 0x2

    aput-object v7, v1, v10

    const/4 v10, 0x3

    aput-object v7, v1, v10

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v10, 0x4

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v2, v10

    const/4 v10, 0x1

    aput-object p3, v2, v10

    const/4 v10, 0x2

    aput-object p4, v2, v10

    const/4 v10, 0x3

    aput-object p5, v2, v10

    :goto_1
    move-object/from16 v0, p6

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-direct {p0, v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v1, v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    :goto_2
    const/4 v10, 0x1

    :try_start_2
    new-array v2, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v2, v10

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v1, v10

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    goto :goto_2

    :catch_1
    move-exception v6

    const-string v10, "setForeignAttr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "ER_FAILED_CALLING_METHOD"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p1, v10, v11, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    const-string v10, "ER_FAILED_CALLING_METHOD"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p1, v10, v11, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v6

    const-string v10, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "name"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {p0, p1, v10, v11, v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    return-void
.end method

.method setDefault(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-void
.end method
