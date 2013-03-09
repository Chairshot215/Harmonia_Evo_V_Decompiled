.class final enum Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;
.super Ljava/lang/Enum;
.source "WordCandsListEX2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsListEX2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "touchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

.field public static final enum moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

.field public static final enum moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

.field public static final enum notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    const-string v1, "notMoveYet"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    const-string v1, "moveX"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    const-string v1, "moveY"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->$VALUES:[Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->$VALUES:[Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    return-object v0
.end method
