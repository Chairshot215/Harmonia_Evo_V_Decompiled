.class public final enum Lcom/htc/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/htc/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/htc/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/htc/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 109
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->FLOAT:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->FLOAT:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 110
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "INT64"

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->LONG:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->INT64:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 111
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "UINT64"

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->LONG:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->UINT64:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 112
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->INT:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->INT32:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 113
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->LONG:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->FIXED64:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 114
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->INT:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->FIXED32:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 115
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->BOOL:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 116
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->STRING:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->STRING:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 117
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 118
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 119
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->BYTES:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 120
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->INT:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->UINT32:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 121
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->ENUM:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->ENUM:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 122
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->INT:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 123
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->LONG:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 124
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->INT:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->SINT32:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 125
    new-instance v0, Lcom/htc/protobuf/WireFormat$FieldType;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/htc/protobuf/WireFormat$JavaType;->LONG:Lcom/htc/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->SINT64:Lcom/htc/protobuf/WireFormat$FieldType;

    .line 107
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/htc/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->FLOAT:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->INT64:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->UINT64:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->INT32:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->FIXED64:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->FIXED32:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->BOOL:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->STRING:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->BYTES:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->UINT32:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->ENUM:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->SINT32:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/protobuf/WireFormat$FieldType;->SINT64:Lcom/htc/protobuf/WireFormat$FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/htc/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/htc/protobuf/WireFormat$JavaType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "javaType"
    .parameter "wireType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput-object p3, p0, Lcom/htc/protobuf/WireFormat$FieldType;->javaType:Lcom/htc/protobuf/WireFormat$JavaType;

    .line 129
    iput p4, p0, Lcom/htc/protobuf/WireFormat$FieldType;->wireType:I

    .line 130
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/protobuf/WireFormat$FieldType;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    const-class v0, Lcom/htc/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public static values()[Lcom/htc/protobuf/WireFormat$FieldType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/htc/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/htc/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/htc/protobuf/WireFormat$JavaType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/protobuf/WireFormat$FieldType;->javaType:Lcom/htc/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public getWireType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/htc/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method
