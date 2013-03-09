.class public final enum Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;
.super Ljava/lang/Enum;
.source "PageSlideControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

.field public static final enum LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

.field public static final enum NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

.field public static final enum RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->RIGHT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->NONE:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->$VALUES:[Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;
    .locals 1
    .parameter "name"

    .prologue
    .line 193
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->$VALUES:[Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    invoke-virtual {v0}, [Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    return-object v0
.end method
