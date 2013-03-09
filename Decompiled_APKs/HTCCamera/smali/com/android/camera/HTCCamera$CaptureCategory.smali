.class public final enum Lcom/android/camera/HTCCamera$CaptureCategory;
.super Ljava/lang/Enum;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/HTCCamera$CaptureCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum BurstMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum ContactPicMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum MMSMovieMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum MovieMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum NormalMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum PanoramaMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum SportMode:Lcom/android/camera/HTCCamera$CaptureCategory;

.field public static final enum ThemeMode:Lcom/android/camera/HTCCamera$CaptureCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "NormalMode"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->NormalMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "BurstMode"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->BurstMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "SportMode"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->SportMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "MovieMode"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->MovieMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "MMSMovieMode"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->MMSMovieMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "ContactPicMode"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->ContactPicMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "ThemeMode"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->ThemeMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    new-instance v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    const-string v1, "PanoramaMode"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera$CaptureCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->PanoramaMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/HTCCamera$CaptureCategory;

    sget-object v1, Lcom/android/camera/HTCCamera$CaptureCategory;->NormalMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/HTCCamera$CaptureCategory;->BurstMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/HTCCamera$CaptureCategory;->SportMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/HTCCamera$CaptureCategory;->MovieMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/HTCCamera$CaptureCategory;->MMSMovieMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/HTCCamera$CaptureCategory;->ContactPicMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/HTCCamera$CaptureCategory;->ThemeMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/HTCCamera$CaptureCategory;->PanoramaMode:Lcom/android/camera/HTCCamera$CaptureCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->$VALUES:[Lcom/android/camera/HTCCamera$CaptureCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/HTCCamera$CaptureCategory;
    .locals 1

    const-class v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera$CaptureCategory;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/HTCCamera$CaptureCategory;
    .locals 1

    sget-object v0, Lcom/android/camera/HTCCamera$CaptureCategory;->$VALUES:[Lcom/android/camera/HTCCamera$CaptureCategory;

    invoke-virtual {v0}, [Lcom/android/camera/HTCCamera$CaptureCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/HTCCamera$CaptureCategory;

    return-object v0
.end method
