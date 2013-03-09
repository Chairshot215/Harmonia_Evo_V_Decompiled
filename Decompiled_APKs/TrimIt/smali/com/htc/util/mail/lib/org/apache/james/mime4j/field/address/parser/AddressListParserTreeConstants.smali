.class public interface abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.super Ljava/lang/Object;
.source "AddressListParserTreeConstants.java"


# static fields
.field public static final JJTADDRESS:I = 0x2

.field public static final JJTADDRESS_LIST:I = 0x1

.field public static final JJTADDR_SPEC:I = 0x9

.field public static final JJTANGLE_ADDR:I = 0x6

.field public static final JJTDOMAIN:I = 0xb

.field public static final JJTGROUP_BODY:I = 0x5

.field public static final JJTLOCAL_PART:I = 0xa

.field public static final JJTMAILBOX:I = 0x3

.field public static final JJTNAME_ADDR:I = 0x4

.field public static final JJTPHRASE:I = 0x8

.field public static final JJTROUTE:I = 0x7

.field public static final JJTVOID:I

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "void"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address_list"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mailbox"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name_addr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "group_body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "angle_addr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "route"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phrase"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "addr_spec"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "local_part"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "domain"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
