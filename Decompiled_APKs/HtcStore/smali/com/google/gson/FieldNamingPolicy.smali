.class public final enum Lcom/google/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gson/FieldNamingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;


# instance fields
.field private final namingPolicy:Lcom/google/gson/FieldNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Lcom/google/gson/FieldNamingPolicy;

    const-string v1, "UPPER_CAMEL_CASE"

    new-instance v2, Lcom/google/gson/ModifyFirstLetterNamingPolicy;

    sget-object v3, Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;->UPPER:Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;

    invoke-direct {v2, v3}, Lcom/google/gson/ModifyFirstLetterNamingPolicy;-><init>(Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;)V

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/google/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

    .line 54
    new-instance v0, Lcom/google/gson/FieldNamingPolicy;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    new-instance v2, Lcom/google/gson/LowerCamelCaseSeparatorNamingPolicy;

    const-string v3, "_"

    invoke-direct {v2, v3}, Lcom/google/gson/LowerCamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/google/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 73
    new-instance v0, Lcom/google/gson/FieldNamingPolicy;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    new-instance v2, Lcom/google/gson/LowerCamelCaseSeparatorNamingPolicy;

    const-string v3, "-"

    invoke-direct {v2, v3}, Lcom/google/gson/LowerCamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/google/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gson/FieldNamingPolicy;

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/gson/FieldNamingStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter "namingPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/FieldNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/google/gson/FieldNamingPolicy;->namingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 79
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/FieldNamingPolicy;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/google/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gson/FieldNamingPolicy;

    return-object v0
.end method

.method public static final values()[Lcom/google/gson/FieldNamingPolicy;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/google/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/FieldNamingPolicy;

    return-object v0
.end method


# virtual methods
.method getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gson/FieldNamingPolicy;->namingPolicy:Lcom/google/gson/FieldNamingStrategy;

    return-object v0
.end method
