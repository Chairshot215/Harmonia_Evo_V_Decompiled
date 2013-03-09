.class final enum Ljava/util/TreeMap$Relation;
.super Ljava/lang/Enum;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Relation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/TreeMap$Relation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/TreeMap$Relation;

.field public static final enum CEILING:Ljava/util/TreeMap$Relation;

.field public static final enum CREATE:Ljava/util/TreeMap$Relation;

.field public static final enum EQUAL:Ljava/util/TreeMap$Relation;

.field public static final enum FLOOR:Ljava/util/TreeMap$Relation;

.field public static final enum HIGHER:Ljava/util/TreeMap$Relation;

.field public static final enum LOWER:Ljava/util/TreeMap$Relation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/TreeMap$Relation;

    const-string v1, "LOWER"

    invoke-direct {v0, v1, v3}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    new-instance v0, Ljava/util/TreeMap$Relation;

    const-string v1, "FLOOR"

    invoke-direct {v0, v1, v4}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    new-instance v0, Ljava/util/TreeMap$Relation;

    const-string v1, "EQUAL"

    invoke-direct {v0, v1, v5}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    new-instance v0, Ljava/util/TreeMap$Relation;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v6}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    new-instance v0, Ljava/util/TreeMap$Relation;

    const-string v1, "CEILING"

    invoke-direct {v0, v1, v7}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    new-instance v0, Ljava/util/TreeMap$Relation;

    const-string v1, "HIGHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$Relation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/TreeMap$Relation;

    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    aput-object v1, v0, v6

    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/TreeMap$Relation;->$VALUES:[Ljava/util/TreeMap$Relation;

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

.method public static valueOf(Ljava/lang/String;)Ljava/util/TreeMap$Relation;
    .locals 1

    const-class v0, Ljava/util/TreeMap$Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap$Relation;

    return-object v0
.end method

.method public static values()[Ljava/util/TreeMap$Relation;
    .locals 1

    sget-object v0, Ljava/util/TreeMap$Relation;->$VALUES:[Ljava/util/TreeMap$Relation;

    invoke-virtual {v0}, [Ljava/util/TreeMap$Relation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/TreeMap$Relation;

    return-object v0
.end method


# virtual methods
.method forOrder(Z)Ljava/util/TreeMap$Relation;
    .locals 2

    if-eqz p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p0}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    sget-object p0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    goto :goto_0

    :pswitch_1
    sget-object p0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    goto :goto_0

    :pswitch_2
    sget-object p0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    goto :goto_0

    :pswitch_3
    sget-object p0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    goto :goto_0

    :pswitch_4
    sget-object p0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
