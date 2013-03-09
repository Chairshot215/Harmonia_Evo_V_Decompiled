.class public final enum Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BOOL:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BYTES:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;


# instance fields
.field private javaType:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field private proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 813
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 814
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 815
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "INT64"

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 816
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "UINT64"

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 817
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "INT32"

    sget-object v2, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 818
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 819
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 820
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 821
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 822
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 823
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 824
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 825
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 826
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 827
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 828
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 829
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 830
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 812
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)V
    .locals 2
    .parameter
    .parameter
    .parameter "proto"
    .parameter "javaType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 833
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 834
    iput-object p4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 836
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v0

    invoke-virtual {p3}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 837
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto changed but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    return-void
.end method

.method public static valueOf(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 2
    .parameter "type"

    .prologue
    .line 849
    invoke-static {}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 812
    const-class v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public static values()[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .prologue
    .line 812
    sget-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, [Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method
