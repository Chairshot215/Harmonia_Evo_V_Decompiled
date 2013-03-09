.class public final enum Lcom/google/common/base/CaseFormat;
.super Ljava/lang/Enum;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CaseFormat$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/CaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

.field public static final enum LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

.field public static final enum UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;


# instance fields
.field private final wordBoundary:Ljava/util/regex/Pattern;

.field private final wordSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_HYPHEN"

    const-string v2, "[-]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "-"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    .line 39
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_UNDERSCORE"

    const-string v2, "[_]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 44
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "LOWER_CAMEL"

    const-string v2, "[A-Z]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 49
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_CAMEL"

    const-string v2, "[A-Z]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    .line 54
    new-instance v0, Lcom/google/common/base/CaseFormat;

    const-string v1, "UPPER_UNDERSCORE"

    const-string v2, "[_]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "_"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/base/CaseFormat;

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_CAMEL:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "wordBoundary"
    .parameter "wordSeparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/google/common/base/CaseFormat;->wordBoundary:Ljava/util/regex/Pattern;

    .line 61
    iput-object p4, p0, Lcom/google/common/base/CaseFormat;->wordSeparator:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/CaseFormat;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/google/common/base/CaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CaseFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/CaseFormat;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/common/base/CaseFormat;->$VALUES:[Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0}, [Lcom/google/common/base/CaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/CaseFormat;

    return-object v0
.end method
