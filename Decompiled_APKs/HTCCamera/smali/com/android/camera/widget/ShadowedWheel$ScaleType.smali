.class public final enum Lcom/android/camera/widget/ShadowedWheel$ScaleType;
.super Ljava/lang/Enum;
.source "ShadowedWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ShadowedWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/widget/ShadowedWheel$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum CENTER_CROP:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum FIT_CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum FIT_END:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum FIT_START:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum FIT_XY:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

.field public static final enum MATRIX:Lcom/android/camera/widget/ShadowedWheel$ScaleType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "MATRIX"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->MATRIX:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_XY:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "FIT_START"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_START:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "FIT_END"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_END:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_CROP:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    new-instance v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/widget/ShadowedWheel$ScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_INSIDE:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->MATRIX:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_XY:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_START:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->FIT_END:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_CROP:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->CENTER_INSIDE:Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->$VALUES:[Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/widget/ShadowedWheel$ScaleType;
    .locals 1

    const-class v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/widget/ShadowedWheel$ScaleType;
    .locals 1

    sget-object v0, Lcom/android/camera/widget/ShadowedWheel$ScaleType;->$VALUES:[Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    invoke-virtual {v0}, [Lcom/android/camera/widget/ShadowedWheel$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/widget/ShadowedWheel$ScaleType;

    return-object v0
.end method
