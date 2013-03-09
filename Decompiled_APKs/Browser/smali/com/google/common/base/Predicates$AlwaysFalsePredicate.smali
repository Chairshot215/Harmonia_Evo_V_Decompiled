.class final enum Lcom/google/common/base/Predicates$AlwaysFalsePredicate;
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
    name = "AlwaysFalsePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Predicates$AlwaysFalsePredicate;",
        ">;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

.field public static final enum INSTANCE:Lcom/google/common/base/Predicates$AlwaysFalsePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    new-instance v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;->INSTANCE:Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    .line 237
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    sget-object v1, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;->INSTANCE:Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;->$VALUES:[Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

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
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Predicates$AlwaysFalsePredicate;
    .locals 1
    .parameter "name"

    .prologue
    .line 237
    const-class v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Predicates$AlwaysFalsePredicate;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/google/common/base/Predicates$AlwaysFalsePredicate;->$VALUES:[Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    invoke-virtual {v0}, [Lcom/google/common/base/Predicates$AlwaysFalsePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Predicates$AlwaysFalsePredicate;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "AlwaysFalse"

    return-object v0
.end method
