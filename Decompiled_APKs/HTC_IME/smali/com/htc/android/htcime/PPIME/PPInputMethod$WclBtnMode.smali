.class final enum Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;
.super Ljava/lang/Enum;
.source "PPInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/PPIME/PPInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WclBtnMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

.field public static final enum CLOSE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

.field public static final enum DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

.field public static final enum NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 169
    new-instance v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    const-string v1, "DROP"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 170
    new-instance v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->CLOSE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->CLOSE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->$VALUES:[Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 167
    const-class v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->$VALUES:[Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    return-object v0
.end method
