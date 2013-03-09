.class public final enum Lcom/android/camera/DCFRuler$fileFormat;
.super Ljava/lang/Enum;
.source "DCFRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DCFRuler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "fileFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DCFRuler$fileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DCFRuler$fileFormat;

.field public static final enum JPG:Lcom/android/camera/DCFRuler$fileFormat;

.field public static final enum JPS:Lcom/android/camera/DCFRuler$fileFormat;

.field public static final enum MPO:Lcom/android/camera/DCFRuler$fileFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/DCFRuler$fileFormat;

    const-string v1, "JPG"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DCFRuler$fileFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    new-instance v0, Lcom/android/camera/DCFRuler$fileFormat;

    const-string v1, "JPS"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DCFRuler$fileFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    new-instance v0, Lcom/android/camera/DCFRuler$fileFormat;

    const-string v1, "MPO"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/DCFRuler$fileFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/DCFRuler$fileFormat;

    sget-object v1, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/DCFRuler$fileFormat;->$VALUES:[Lcom/android/camera/DCFRuler$fileFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DCFRuler$fileFormat;
    .locals 1

    const-class v0, Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DCFRuler$fileFormat;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DCFRuler$fileFormat;
    .locals 1

    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->$VALUES:[Lcom/android/camera/DCFRuler$fileFormat;

    invoke-virtual {v0}, [Lcom/android/camera/DCFRuler$fileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DCFRuler$fileFormat;

    return-object v0
.end method
