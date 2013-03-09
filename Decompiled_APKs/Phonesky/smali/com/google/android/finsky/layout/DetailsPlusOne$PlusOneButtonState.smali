.class final enum Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;
.super Ljava/lang/Enum;
.source "DetailsPlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlusOneButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

.field public static final enum Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

.field public static final enum Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

.field public static final enum On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    const-string v1, "On"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    .line 73
    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    .line 74
    new-instance v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    const-string v1, "Error"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    sget-object v1, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->On:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Off:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->Error:Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->$VALUES:[Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;
    .locals 1
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->$VALUES:[Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneButtonState;

    return-object v0
.end method
