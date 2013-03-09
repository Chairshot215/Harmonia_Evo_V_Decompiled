.class abstract enum Ljava/util/TreeMap$Bound;
.super Ljava/lang/Enum;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Bound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/TreeMap$Bound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/TreeMap$Bound;

.field public static final enum EXCLUSIVE:Ljava/util/TreeMap$Bound;

.field public static final enum INCLUSIVE:Ljava/util/TreeMap$Bound;

.field public static final enum NO_BOUND:Ljava/util/TreeMap$Bound;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/TreeMap$Bound$1;

    const-string v1, "INCLUSIVE"

    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$Bound$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    new-instance v0, Ljava/util/TreeMap$Bound$2;

    const-string v1, "EXCLUSIVE"

    invoke-direct {v0, v1, v3}, Ljava/util/TreeMap$Bound$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    new-instance v0, Ljava/util/TreeMap$Bound$3;

    const-string v1, "NO_BOUND"

    invoke-direct {v0, v1, v4}, Ljava/util/TreeMap$Bound$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/TreeMap$Bound;

    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    aput-object v1, v0, v4

    sput-object v0, Ljava/util/TreeMap$Bound;->$VALUES:[Ljava/util/TreeMap$Bound;

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

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/TreeMap$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$Bound;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/TreeMap$Bound;
    .locals 1

    const-class v0, Ljava/util/TreeMap$Bound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap$Bound;

    return-object v0
.end method

.method public static values()[Ljava/util/TreeMap$Bound;
    .locals 1

    sget-object v0, Ljava/util/TreeMap$Bound;->$VALUES:[Ljava/util/TreeMap$Bound;

    invoke-virtual {v0}, [Ljava/util/TreeMap$Bound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/TreeMap$Bound;

    return-object v0
.end method


# virtual methods
.method public abstract leftCap(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract rightCap(Ljava/lang/Object;)Ljava/lang/String;
.end method
