.class final enum Ljava/util/Scanner$DataType;
.super Ljava/lang/Enum;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/Scanner$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/Scanner$DataType;

.field public static final enum FLOAT:Ljava/util/Scanner$DataType;

.field public static final enum INT:Ljava/util/Scanner$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Scanner$DataType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v2}, Ljava/util/Scanner$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    new-instance v0, Ljava/util/Scanner$DataType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v3}, Ljava/util/Scanner$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Scanner$DataType;

    sget-object v1, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    aput-object v1, v0, v3

    sput-object v0, Ljava/util/Scanner$DataType;->$VALUES:[Ljava/util/Scanner$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/Scanner$DataType;
    .locals 1

    const-class v0, Ljava/util/Scanner$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Scanner$DataType;

    return-object v0
.end method

.method public static values()[Ljava/util/Scanner$DataType;
    .locals 1

    sget-object v0, Ljava/util/Scanner$DataType;->$VALUES:[Ljava/util/Scanner$DataType;

    invoke-virtual {v0}, [Ljava/util/Scanner$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Scanner$DataType;

    return-object v0
.end method
