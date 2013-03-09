.class public final enum Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;
.super Ljava/lang/Enum;
.source "FxPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Path"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

.field public static final enum LANDSCAPE:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

.field public static final enum PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

.field public static final enum ROTATION_0:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

.field public static final enum ROTATION_180:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

.field public static final enum ROTATION_270:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

.field public static final enum ROTATION_90:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    const-string v1, "PORTRAIT"

    const-string v2, "Port/scenes/"

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    const-string v1, "LANDSCAPE"

    const-string v2, "Land/scenes/"

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->LANDSCAPE:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    .line 70
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    const-string v1, "ROTATION_0"

    const-string v2, "Port/scenes/"

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_0:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    const-string v1, "ROTATION_90"

    const-string v2, "Land/scenes/"

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_90:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    .line 71
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    const-string v1, "ROTATION_180"

    const-string v2, "Port/scenes/"

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_180:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    const-string v1, "ROTATION_270"

    const/4 v2, 0x5

    const-string v3, "Land/scenes/"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_270:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->LANDSCAPE:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_0:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_90:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_180:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->ROTATION_270:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->$VALUES:[Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->mPath:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->$VALUES:[Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    invoke-virtual {v0}, [Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->mPath:Ljava/lang/String;

    return-object v0
.end method
