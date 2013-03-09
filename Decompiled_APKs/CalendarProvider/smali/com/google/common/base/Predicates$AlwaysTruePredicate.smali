.class final enum Lcom/google/common/base/Predicates$AlwaysTruePredicate;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlwaysTruePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Predicates$AlwaysTruePredicate;",
        ">;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Predicates$AlwaysTruePredicate;

.field public static final enum INSTANCE:Lcom/google/common/base/Predicates$AlwaysTruePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    new-instance v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$AlwaysTruePredicate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;->INSTANCE:Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    .line 224
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    sget-object v1, Lcom/google/common/base/Predicates$AlwaysTruePredicate;->INSTANCE:Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;->$VALUES:[Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Predicates$AlwaysTruePredicate;
    .locals 1
    .parameter "name"

    .prologue
    .line 224
    const-class v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Predicates$AlwaysTruePredicate;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/common/base/Predicates$AlwaysTruePredicate;->$VALUES:[Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    invoke-virtual {v0}, [Lcom/google/common/base/Predicates$AlwaysTruePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Predicates$AlwaysTruePredicate;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "AlwaysTrue"

    return-object v0
.end method
