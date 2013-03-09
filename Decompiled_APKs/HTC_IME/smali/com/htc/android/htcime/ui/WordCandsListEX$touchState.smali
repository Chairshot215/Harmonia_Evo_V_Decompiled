.class final enum Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;
.super Ljava/lang/Enum;
.source "WordCandsListEX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsListEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "touchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

.field public static final enum moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

.field public static final enum moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

.field public static final enum notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    const-string v1, "notMoveYet"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    const-string v1, "moveX"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    const-string v1, "moveY"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->$VALUES:[Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->$VALUES:[Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    return-object v0
.end method
