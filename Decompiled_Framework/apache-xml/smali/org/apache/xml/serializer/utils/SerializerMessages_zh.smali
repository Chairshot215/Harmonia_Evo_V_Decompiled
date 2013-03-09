.class public Lorg/apache/xml/serializer/utils/SerializerMessages_zh;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_zh.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x3a

    new-array v0, v1, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGKEY"

    aput-object v2, v1, v4

    const-string v2, "\u6d88\u606f\u5bc6\u94a5\u201c{0}\u201d\u4e0d\u5728\u6d88\u606f\u7c7b\u201c{1}\u201d\u4e2d"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "BAD_MSGFORMAT"

    aput-object v2, v1, v4

    const-string v2, "\u6d88\u606f\u7c7b\u201c{1}\u201d\u4e2d\u7684\u6d88\u606f\u201c{0}\u201d\u7684\u683c\u5f0f\u65e0\u6548\u3002"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    aput-object v2, v1, v4

    const-string v2, "\u4e32\u884c\u5668\u7c7b\u201c{0}\u201d\u4e0d\u80fd\u5b9e\u73b0 org.xml.sax.ContentHandler\u3002"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_FIND"

    aput-object v3, v2, v4

    const-string v3, "\u627e\u4e0d\u5230\u8d44\u6e90 [ {0} ]\u3002\n {1}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_RESOURCE_COULD_NOT_LOAD"

    aput-object v3, v2, v4

    const-string v3, "\u8d44\u6e90 [ {0} ] \u65e0\u6cd5\u88c5\u5165\uff1a{1} \n {2} \t {3}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    aput-object v3, v2, v4

    const-string v3, "\u7f13\u51b2\u533a\u5927\u5c0f <=0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_UTF16_SURROGATE"

    aput-object v3, v2, v4

    const-string v3, "\u68c0\u6d4b\u5230\u65e0\u6548\u7684 UTF-16 \u8d85\u5927\u5b57\u7b26\u96c6\uff1a{0}\uff1f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_OIERROR"

    aput-object v3, v2, v4

    const-string v3, "IO \u9519\u8bef"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    aput-object v3, v2, v4

    const-string v3, "\u5728\u751f\u6210\u5b50\u8282\u70b9\u4e4b\u540e\u6216\u5728\u751f\u6210\u5143\u7d20\u4e4b\u524d\u65e0\u6cd5\u6dfb\u52a0\u5c5e\u6027 {0}\u3002\u5c06\u5ffd\u7565\u5c5e\u6027\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NAMESPACE_PREFIX"

    aput-object v3, v2, v4

    const-string v3, "\u5c1a\u672a\u58f0\u660e\u524d\u7f00\u201c{0}\u201d\u7684\u540d\u79f0\u7a7a\u95f4\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_ATTRIBUTE"

    aput-object v3, v2, v4

    const-string v3, "\u5c5e\u6027\u201c{0}\u201d\u5728\u5143\u7d20\u5916\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_STRAY_NAMESPACE"

    aput-object v3, v2, v4

    const-string v3, "\u540d\u79f0\u7a7a\u95f4\u58f0\u660e\u201c{0}\u201d=\u201c{1}\u201d\u5728\u5143\u7d20\u5916\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_RESOURCE"

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u6cd5\u88c5\u5165\u201c{0}\u201d\uff08\u68c0\u67e5 CLASSPATH\uff09\uff0c\u73b0\u5728\u53ea\u4f7f\u7528\u7f3a\u7701\u503c"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_ILLEGAL_CHARACTER"

    aput-object v3, v2, v4

    const-string v3, "\u5c1d\u8bd5\u8f93\u51fa\u6574\u6570\u503c {0}\uff08\u5b83\u4e0d\u662f\u4ee5\u6307\u5b9a\u7684 {1} \u8f93\u51fa\u7f16\u7801\u8868\u793a\uff09\u7684\u5b57\u7b26\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u6cd5\u4e3a\u8f93\u51fa\u65b9\u6cd5\u201c{1}\u201d\u88c5\u5165\u5c5e\u6027\u6587\u4ef6\u201c{0}\u201d\uff08\u68c0\u67e5 CLASSPATH\uff09"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_INVALID_PORT"

    aput-object v3, v2, v4

    const-string v3, "\u7aef\u53e3\u53f7\u65e0\u6548"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PORT_WHEN_HOST_NULL"

    aput-object v3, v2, v4

    const-string v3, "\u4e3b\u673a\u4e3a\u7a7a\u65f6\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u7aef\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    aput-object v3, v2, v4

    const-string v3, "\u4e3b\u673a\u4e0d\u662f\u683c\u5f0f\u6b63\u786e\u7684\u5730\u5740"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_NOT_CONFORMANT"

    aput-object v3, v2, v4

    const-string v3, "\u6a21\u5f0f\u4e0d\u4e00\u81f4\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_FROM_NULL_STRING"

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u6cd5\u4ece\u7a7a\u5b57\u7b26\u4e32\u8bbe\u7f6e\u6a21\u5f0f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    aput-object v3, v2, v4

    const-string v3, "\u8def\u5f84\u5305\u542b\u65e0\u6548\u7684\u8f6c\u4e49\u5e8f\u5217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_PATH_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u8def\u5f84\u5305\u542b\u65e0\u6548\u7684\u5b57\u7b26\uff1a{0}"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_INVALID_CHAR"

    aput-object v3, v2, v4

    const-string v3, "\u7247\u6bb5\u5305\u542b\u65e0\u6548\u7684\u5b57\u7b26"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_WHEN_PATH_NULL"

    aput-object v3, v2, v4

    const-string v3, "\u8def\u5f84\u4e3a\u7a7a\u65f6\uff0c\u65e0\u6cd5\u8bbe\u7f6e\u7247\u6bb5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FRAG_FOR_GENERIC_URI"

    aput-object v3, v2, v4

    const-string v3, "\u53ea\u80fd\u4e3a\u7c7b\u5c5e URI \u8bbe\u7f6e\u7247\u6bb5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_SCHEME_IN_URI"

    aput-object v3, v2, v4

    const-string v3, "URI \u4e2d\u627e\u4e0d\u5230\u4efb\u4f55\u6a21\u5f0f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    aput-object v3, v2, v4

    const-string v3, "\u4e0d\u80fd\u4ee5\u7a7a\u53c2\u6570\u521d\u59cb\u5316 URI"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_FRAGMENT_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "\u8def\u5f84\u548c\u7247\u6bb5\u4e2d\u90fd\u4e0d\u80fd\u6307\u5b9a\u7247\u6bb5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_QUERY_STRING_IN_PATH"

    aput-object v3, v2, v4

    const-string v3, "\u8def\u5f84\u548c\u67e5\u8be2\u5b57\u7b26\u4e32\u4e2d\u4e0d\u80fd\u6307\u5b9a\u67e5\u8be2\u5b57\u7b26\u4e32"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_PORT_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "\u5982\u679c\u6ca1\u6709\u6307\u5b9a\u4e3b\u673a\uff0c\u5219\u4e0d\u53ef\u4ee5\u6307\u5b9a\u7aef\u53e3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NO_USERINFO_IF_NO_HOST"

    aput-object v3, v2, v4

    const-string v3, "\u5982\u679c\u6ca1\u6709\u6307\u5b9a\u4e3b\u673a\uff0c\u5219\u4e0d\u53ef\u4ee5\u6307\u5b9a\u7528\u6237\u4fe1\u606f"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u8b66\u544a\uff1a\u8981\u6c42\u8f93\u51fa\u6587\u6863\u7684\u7248\u672c\u662f\u201c{0}\u201d\u3002\u4e0d\u652f\u6301\u6b64 XML \u7248\u672c\u3002\u8f93\u51fa\u6587\u6863\u7684\u7248\u672c\u5c06\u4f1a\u662f\u201c1.0\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_SCHEME_REQUIRED"

    aput-object v3, v2, v4

    const-string v3, "\u6a21\u5f0f\u662f\u5fc5\u9700\u7684\uff01"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_FACTORY_PROPERTY_MISSING"

    aput-object v3, v2, v4

    const-string v3, "\u4f20\u9012\u7ed9 SerializerFactory \u7684 Properties \u5bf9\u8c61\u4e0d\u5177\u6709\u5c5e\u6027\u201c{0}\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_FOUND"

    aput-object v3, v2, v4

    const-string v3, "\u672a\u8bc6\u522b\u51fa\u53c2\u6570\u201c{0}\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    aput-object v3, v2, v4

    const-string v3, "\u5df2\u8bc6\u522b\u51fa\u53c2\u6570\u201c{0}\u201d\uff0c\u4f46\u65e0\u6cd5\u8bbe\u7f6e\u8bf7\u6c42\u7684\u503c\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DOMSTRING_SIZE_ERR"

    aput-object v3, v2, v4

    const-string v3, "\u4ea7\u751f\u7684\u5b57\u7b26\u4e32\u8fc7\u957f\u4e0d\u80fd\u88c5\u5165 DOMString\uff1a\u201c{0}\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "TYPE_MISMATCH_ERR"

    aput-object v3, v2, v4

    const-string v3, "\u6b64\u53c2\u6570\u540d\u79f0\u7684\u503c\u7c7b\u578b\u4e0e\u671f\u671b\u7684\u503c\u7c7b\u578b\u4e0d\u517c\u5bb9\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "no-output-specified"

    aput-object v3, v2, v4

    const-string v3, "\u5c06\u8981\u5199\u5165\u6570\u636e\u7684\u8f93\u51fa\u76ee\u6807\u4e3a\u7a7a\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unsupported-encoding"

    aput-object v3, v2, v4

    const-string v3, "\u9047\u5230\u4e0d\u53d7\u652f\u6301\u7684\u7f16\u7801\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_UNABLE_TO_SERIALIZE_NODE"

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u6cd5\u5c06\u8282\u70b9\u5e8f\u5217\u5316\u3002 "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "cdata-sections-splitted"

    aput-object v3, v2, v4

    const-string v3, "CDATA \u90e8\u5206\u5305\u542b\u4e00\u4e2a\u6216\u591a\u4e2a\u7ec8\u6b62\u6807\u8bb0\u201c]]>\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WARNING_WF_NOT_CHECKED"

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u6cd5\u521b\u5efa\u683c\u5f0f\u6b63\u786e\u6027\u68c0\u67e5\u5668\u7684\u5b9e\u4f8b\u3002\u201c\u683c\u5f0f\u6b63\u786e\u201d\u53c2\u6570\u5df2\u8bbe\u7f6e\u4e3a true\uff0c\u4f46\u65e0\u6cd5\u6267\u884c\u683c\u5f0f\u6b63\u786e\u6027\u68c0\u67e5\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character"

    aput-object v3, v2, v4

    const-string v3, "\u8282\u70b9\u201c{0}\u201d\u5305\u542b\u65e0\u6548\u7684 XML \u5b57\u7b26\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u5728\u6ce8\u91ca\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    aput-object v3, v2, v4

    const-string v3, "\u5728\u5904\u7406\u6307\u4ee4\u6570\u636e\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    aput-object v3, v2, v4

    const-string v3, "\u5728 CDATA \u90e8\u5206\u7684\u5185\u5bb9\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    aput-object v3, v2, v4

    const-string v3, "\u5728\u8282\u70b9\u7684\u5b57\u7b26\u6570\u636e\u5185\u5bb9\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26 (Unicode: 0x\'\'{0})\'\'\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "wf-invalid-character-in-node-name"

    aput-object v3, v2, v4

    const-string v3, "\u540d\u79f0\u4e3a\u201c{1})\u201d\u7684\u201c{0})\u201d\u4e2d\u627e\u5230\u65e0\u6548\u7684 XML \u5b57\u7b26\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_DASH_IN_COMMENT"

    aput-object v3, v2, v4

    const-string v3, "\u6ce8\u91ca\u4e2d\u4e0d\u5141\u8bb8\u6709\u5b57\u7b26\u4e32\u201c--\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    aput-object v3, v2, v4

    const-string v3, "\u4e0e\u5143\u7d20\u7c7b\u578b\u201c{0}\u201d\u5173\u8054\u7684\u5c5e\u6027\u201c{1}\u201d\u7684\u503c\u4e0d\u5f97\u5305\u542b\u201c<\u201d\u5b57\u7b26\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_UNPARSED_ENT"

    aput-object v3, v2, v4

    const-string v3, "\u4e0d\u5141\u8bb8\u6709\u672a\u89e3\u6790\u7684\u5b9e\u4f53\u5f15\u7528\u201c&{0};\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_WF_REF_TO_EXTERNAL_ENT"

    aput-object v3, v2, v4

    const-string v3, "\u5c5e\u6027\u503c\u4e2d\u4e0d\u5141\u8bb8\u6709\u5916\u90e8\u5b9e\u4f53\u5f15\u7528\u201c&{0};\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    aput-object v3, v2, v4

    const-string v3, "\u524d\u7f00\u201c{0}\u201d\u4e0d\u80fd\u7ed1\u5b9a\u5230\u540d\u79f0\u7a7a\u95f4\u201c{1}\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    aput-object v3, v2, v4

    const-string v3, "\u5143\u7d20\u201c{0}\u201d\u7684\u5c40\u90e8\u540d\u4e3a\u7a7a\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "ER_NULL_LOCAL_ATTR_NAME"

    aput-object v3, v2, v4

    const-string v3, "\u5c5e\u6027\u201c{0}\u201d\u7684\u5c40\u90e8\u540d\u4e3a\u7a7a\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "\u5b9e\u4f53\u8282\u70b9\u201c{0}\u201d\u7684\u66ff\u4ee3\u6587\u672c\u4e2d\u5305\u542b\u5143\u7d20\u8282\u70b9\u201c{1}\u201d\uff0c\u8be5\u8282\u70b9\u5177\u6709\u672a\u7ed1\u5b9a\u7684\u524d\u7f00\u201c{2}\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unbound-prefix-in-entity-reference"

    aput-object v3, v2, v4

    const-string v3, "\u5b9e\u4f53\u8282\u70b9\u201c{0}\u201d\u7684\u66ff\u4ee3\u6587\u672c\u4e2d\u5305\u542b\u5c5e\u6027\u8282\u70b9\u201c{1}\u201d\uff0c\u8be5\u8282\u70b9\u5177\u6709\u672a\u7ed1\u5b9a\u7684\u524d\u7f00\u201c{2}\u201d\u3002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method
