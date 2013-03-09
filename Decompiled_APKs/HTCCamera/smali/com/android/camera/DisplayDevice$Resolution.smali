.class public final enum Lcom/android/camera/DisplayDevice$Resolution;
.super Ljava/lang/Enum;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DisplayDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DisplayDevice$Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum HD:Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum HVGA:Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum QHD:Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum QVGA:Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum WQVGA:Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum WSVGA:Lcom/android/camera/DisplayDevice$Resolution;

.field public static final enum WVGA:Lcom/android/camera/DisplayDevice$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "WVGA"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "HVGA"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "QVGA"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QVGA:Lcom/android/camera/DisplayDevice$Resolution;

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "WQVGA"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WQVGA:Lcom/android/camera/DisplayDevice$Resolution;

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "WSVGA"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WSVGA:Lcom/android/camera/DisplayDevice$Resolution;

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "QHD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    new-instance v0, Lcom/android/camera/DisplayDevice$Resolution;

    const-string v1, "HD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DisplayDevice$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QVGA:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WQVGA:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WSVGA:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/DisplayDevice$Resolution;->$VALUES:[Lcom/android/camera/DisplayDevice$Resolution;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DisplayDevice$Resolution;
    .locals 1

    const-class v0, Lcom/android/camera/DisplayDevice$Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DisplayDevice$Resolution;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DisplayDevice$Resolution;
    .locals 1

    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->$VALUES:[Lcom/android/camera/DisplayDevice$Resolution;

    invoke-virtual {v0}, [Lcom/android/camera/DisplayDevice$Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DisplayDevice$Resolution;

    return-object v0
.end method
