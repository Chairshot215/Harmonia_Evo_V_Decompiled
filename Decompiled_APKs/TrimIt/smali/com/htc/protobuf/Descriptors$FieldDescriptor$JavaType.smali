.class public final enum Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum BOOLEAN:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum BYTE_STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

.field public static final enum STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 863
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 864
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 865
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 866
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 867
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 868
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 869
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 870
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 871
    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 862
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->$VALUES:[Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter "defaultDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 873
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 874
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->defaultDefault:Ljava/lang/Object;

    .line 875
    return-void
.end method

.method static synthetic access$1700(Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 862
    const-class v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

.method public static values()[Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .prologue
    .line 862
    sget-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->$VALUES:[Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v0}, [Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method
