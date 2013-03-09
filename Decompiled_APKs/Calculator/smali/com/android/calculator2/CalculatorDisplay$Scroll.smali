.class final enum Lcom/android/calculator2/CalculatorDisplay$Scroll;
.super Ljava/lang/Enum;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scroll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/calculator2/CalculatorDisplay$Scroll;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calculator2/CalculatorDisplay$Scroll;

.field public static final enum DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

.field public static final enum NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

.field public static final enum UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/CalculatorDisplay$Scroll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/calculator2/CalculatorDisplay$Scroll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/calculator2/CalculatorDisplay$Scroll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/calculator2/CalculatorDisplay$Scroll;

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->$VALUES:[Lcom/android/calculator2/CalculatorDisplay$Scroll;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/calculator2/CalculatorDisplay$Scroll;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;

    return-object v0
.end method

.method public static values()[Lcom/android/calculator2/CalculatorDisplay$Scroll;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay$Scroll;->$VALUES:[Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v0}, [Lcom/android/calculator2/CalculatorDisplay$Scroll;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calculator2/CalculatorDisplay$Scroll;

    return-object v0
.end method
