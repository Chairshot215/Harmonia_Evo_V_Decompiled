.class public final enum Ldalvik/annotation/TestLevel;
.super Ljava/lang/Enum;
.source "TestLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/annotation/TestLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/annotation/TestLevel;

.field public static final enum ADDITIONAL:Ldalvik/annotation/TestLevel;

.field public static final enum COMPLETE:Ldalvik/annotation/TestLevel;

.field public static final enum NOT_FEASIBLE:Ldalvik/annotation/TestLevel;

.field public static final enum NOT_NECESSARY:Ldalvik/annotation/TestLevel;

.field public static final enum PARTIAL:Ldalvik/annotation/TestLevel;

.field public static final enum PARTIAL_COMPLETE:Ldalvik/annotation/TestLevel;

.field public static final enum PARTIAL_OK:Ldalvik/annotation/TestLevel;

.field public static final enum SUFFICIENT:Ldalvik/annotation/TestLevel;

.field public static final enum TODO:Ldalvik/annotation/TestLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->COMPLETE:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "PARTIAL_COMPLETE"

    invoke-direct {v0, v1, v4}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->PARTIAL_COMPLETE:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "PARTIAL_OK"

    invoke-direct {v0, v1, v5}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->PARTIAL_OK:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "PARTIAL"

    invoke-direct {v0, v1, v6}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->PARTIAL:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "SUFFICIENT"

    invoke-direct {v0, v1, v7}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->SUFFICIENT:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "ADDITIONAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->ADDITIONAL:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "NOT_NECESSARY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->NOT_NECESSARY:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "NOT_FEASIBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->NOT_FEASIBLE:Ldalvik/annotation/TestLevel;

    new-instance v0, Ldalvik/annotation/TestLevel;

    const-string v1, "TODO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ldalvik/annotation/TestLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/annotation/TestLevel;->TODO:Ldalvik/annotation/TestLevel;

    const/16 v0, 0x9

    new-array v0, v0, [Ldalvik/annotation/TestLevel;

    sget-object v1, Ldalvik/annotation/TestLevel;->COMPLETE:Ldalvik/annotation/TestLevel;

    aput-object v1, v0, v3

    sget-object v1, Ldalvik/annotation/TestLevel;->PARTIAL_COMPLETE:Ldalvik/annotation/TestLevel;

    aput-object v1, v0, v4

    sget-object v1, Ldalvik/annotation/TestLevel;->PARTIAL_OK:Ldalvik/annotation/TestLevel;

    aput-object v1, v0, v5

    sget-object v1, Ldalvik/annotation/TestLevel;->PARTIAL:Ldalvik/annotation/TestLevel;

    aput-object v1, v0, v6

    sget-object v1, Ldalvik/annotation/TestLevel;->SUFFICIENT:Ldalvik/annotation/TestLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldalvik/annotation/TestLevel;->ADDITIONAL:Ldalvik/annotation/TestLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldalvik/annotation/TestLevel;->NOT_NECESSARY:Ldalvik/annotation/TestLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldalvik/annotation/TestLevel;->NOT_FEASIBLE:Ldalvik/annotation/TestLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ldalvik/annotation/TestLevel;->TODO:Ldalvik/annotation/TestLevel;

    aput-object v2, v0, v1

    sput-object v0, Ldalvik/annotation/TestLevel;->$VALUES:[Ldalvik/annotation/TestLevel;

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

.method public static valueOf(Ljava/lang/String;)Ldalvik/annotation/TestLevel;
    .locals 1

    const-class v0, Ldalvik/annotation/TestLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldalvik/annotation/TestLevel;

    return-object v0
.end method

.method public static values()[Ldalvik/annotation/TestLevel;
    .locals 1

    sget-object v0, Ldalvik/annotation/TestLevel;->$VALUES:[Ldalvik/annotation/TestLevel;

    invoke-virtual {v0}, [Ldalvik/annotation/TestLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/annotation/TestLevel;

    return-object v0
.end method
