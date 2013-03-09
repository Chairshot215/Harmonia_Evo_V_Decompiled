.class public final enum Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_BOOL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_ENUM:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_FIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_FIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_FLOAT:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_INT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_INT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_SFIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_SFIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_SINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_SINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_UINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_UINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field private static final VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2249
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2250
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_FLOAT"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2251
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_INT64"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2252
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_UINT64"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2253
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_INT32"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2254
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_FIXED64"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2255
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_FIXED32"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2256
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2257
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2258
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_GROUP"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2259
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_MESSAGE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2260
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_BYTES"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2261
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_UINT32"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2262
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_ENUM"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2263
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED32"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2264
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED64"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2265
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SINT32"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2266
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SINT64"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2247
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->$VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2301
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type$1;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type$1;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 2321
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 2340
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2341
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 2334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2335
    iput p3, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->index:I

    .line 2336
    iput p4, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->value:I

    .line 2337
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 2318
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2298
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1
    .parameter "value"

    .prologue
    .line 2273
    packed-switch p0, :pswitch_data_0

    .line 2292
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2274
    :pswitch_0
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2275
    :pswitch_1
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2276
    :pswitch_2
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2277
    :pswitch_3
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2278
    :pswitch_4
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2279
    :pswitch_5
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2280
    :pswitch_6
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2281
    :pswitch_7
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2282
    :pswitch_8
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2283
    :pswitch_9
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2284
    :pswitch_a
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2285
    :pswitch_b
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2286
    :pswitch_c
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2287
    :pswitch_d
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2288
    :pswitch_e
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2289
    :pswitch_f
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2290
    :pswitch_10
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2291
    :pswitch_11
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 2273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 2
    .parameter "desc"

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2330
    :cond_0
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 2247
    const-class v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method

.method public static values()[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .prologue
    .line 2247
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->$VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v0}, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 2314
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 2270
    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 2310
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
