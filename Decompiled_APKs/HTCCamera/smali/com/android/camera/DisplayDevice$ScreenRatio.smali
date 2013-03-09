.class public final enum Lcom/android/camera/DisplayDevice$ScreenRatio;
.super Ljava/lang/Enum;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DisplayDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DisplayDevice$ScreenRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static final enum Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static final enum Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static final enum Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static final enum Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static final enum Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    const-string v1, "Ratio_4_3"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DisplayDevice$ScreenRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    new-instance v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    const-string v1, "Ratio_3_2"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DisplayDevice$ScreenRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    new-instance v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    const-string v1, "Ratio_5_3"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/DisplayDevice$ScreenRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    new-instance v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    const-string v1, "Ratio_16_9"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/DisplayDevice$ScreenRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    new-instance v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    const-string v1, "Tablet_Ratio_16_9"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/DisplayDevice$ScreenRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->$VALUES:[Lcom/android/camera/DisplayDevice$ScreenRatio;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DisplayDevice$ScreenRatio;
    .locals 1

    const-class v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DisplayDevice$ScreenRatio;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DisplayDevice$ScreenRatio;
    .locals 1

    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->$VALUES:[Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v0}, [Lcom/android/camera/DisplayDevice$ScreenRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DisplayDevice$ScreenRatio;

    return-object v0
.end method
