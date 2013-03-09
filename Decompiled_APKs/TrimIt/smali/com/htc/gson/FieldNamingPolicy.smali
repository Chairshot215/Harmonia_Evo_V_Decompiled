.class public final enum Lcom/htc/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/gson/FieldNamingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/htc/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/htc/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/htc/gson/FieldNamingPolicy;


# instance fields
.field private final namingPolicy:Lcom/htc/gson/FieldNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/htc/gson/FieldNamingPolicy;

    const-string v1, "UPPER_CAMEL_CASE"

    new-instance v2, Lcom/htc/gson/ModifyFirstLetterNamingPolicy;

    sget-object v3, Lcom/htc/gson/ModifyFirstLetterNamingPolicy$LetterModifier;->UPPER:Lcom/htc/gson/ModifyFirstLetterNamingPolicy$LetterModifier;

    invoke-direct {v2, v3}, Lcom/htc/gson/ModifyFirstLetterNamingPolicy;-><init>(Lcom/htc/gson/ModifyFirstLetterNamingPolicy$LetterModifier;)V

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/htc/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/htc/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/htc/gson/FieldNamingPolicy;

    .line 56
    new-instance v0, Lcom/htc/gson/FieldNamingPolicy;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    new-instance v2, Lcom/htc/gson/LowerCamelCaseSeparatorNamingPolicy;

    const-string v3, "_"

    invoke-direct {v2, v3}, Lcom/htc/gson/LowerCamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/htc/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/htc/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/htc/gson/FieldNamingPolicy;

    .line 75
    new-instance v0, Lcom/htc/gson/FieldNamingPolicy;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    new-instance v2, Lcom/htc/gson/LowerCamelCaseSeparatorNamingPolicy;

    const-string v3, "-"

    invoke-direct {v2, v3}, Lcom/htc/gson/LowerCamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/htc/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/htc/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/htc/gson/FieldNamingPolicy;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/gson/FieldNamingPolicy;

    sget-object v1, Lcom/htc/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/htc/gson/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/htc/gson/FieldNamingPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/htc/gson/FieldNamingPolicy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/gson/FieldNamingPolicy;->$VALUES:[Lcom/htc/gson/FieldNamingPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/htc/gson/FieldNamingStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter "namingPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/FieldNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/htc/gson/FieldNamingPolicy;->namingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/gson/FieldNamingPolicy;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/htc/gson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/FieldNamingPolicy;

    return-object v0
.end method

.method public static values()[Lcom/htc/gson/FieldNamingPolicy;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/gson/FieldNamingPolicy;->$VALUES:[Lcom/htc/gson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/htc/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/gson/FieldNamingPolicy;

    return-object v0
.end method


# virtual methods
.method getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/gson/FieldNamingPolicy;->namingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    return-object v0
.end method
