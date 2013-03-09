.class public final enum Lcom/htc/textselection/Magnifier$TouchingMode;
.super Ljava/lang/Enum;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/textselection/Magnifier$TouchingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/textselection/Magnifier$TouchingMode;

.field public static final enum TOUCHING_LOWER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

.field public static final enum TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

.field public static final enum TOUCHING_WORD:Lcom/htc/textselection/Magnifier$TouchingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/textselection/Magnifier$TouchingMode;

    const-string v1, "TOUCHING_UPPER_ANCHOR"

    invoke-direct {v0, v1, v2}, Lcom/htc/textselection/Magnifier$TouchingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    new-instance v0, Lcom/htc/textselection/Magnifier$TouchingMode;

    const-string v1, "TOUCHING_WORD"

    invoke-direct {v0, v1, v3}, Lcom/htc/textselection/Magnifier$TouchingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_WORD:Lcom/htc/textselection/Magnifier$TouchingMode;

    new-instance v0, Lcom/htc/textselection/Magnifier$TouchingMode;

    const-string v1, "TOUCHING_LOWER_ANCHOR"

    invoke-direct {v0, v1, v4}, Lcom/htc/textselection/Magnifier$TouchingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_LOWER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/textselection/Magnifier$TouchingMode;

    sget-object v1, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_UPPER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_WORD:Lcom/htc/textselection/Magnifier$TouchingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_LOWER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/textselection/Magnifier$TouchingMode;->$VALUES:[Lcom/htc/textselection/Magnifier$TouchingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/textselection/Magnifier$TouchingMode;
    .locals 1

    const-class v0, Lcom/htc/textselection/Magnifier$TouchingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Magnifier$TouchingMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/textselection/Magnifier$TouchingMode;
    .locals 1

    sget-object v0, Lcom/htc/textselection/Magnifier$TouchingMode;->$VALUES:[Lcom/htc/textselection/Magnifier$TouchingMode;

    invoke-virtual {v0}, [Lcom/htc/textselection/Magnifier$TouchingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/textselection/Magnifier$TouchingMode;

    return-object v0
.end method
