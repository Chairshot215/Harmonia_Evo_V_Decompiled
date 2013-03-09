.class public final enum Lcom/android/camera/IntentManager$RequestMode;
.super Ljava/lang/Enum;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/IntentManager$RequestMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/IntentManager$RequestMode;

.field public static final enum Camera:Lcom/android/camera/IntentManager$RequestMode;

.field public static final enum Main:Lcom/android/camera/IntentManager$RequestMode;

.field public static final enum Video:Lcom/android/camera/IntentManager$RequestMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/IntentManager$RequestMode;

    const-string v1, "Main"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/IntentManager$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    new-instance v0, Lcom/android/camera/IntentManager$RequestMode;

    const-string v1, "Camera"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/IntentManager$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    new-instance v0, Lcom/android/camera/IntentManager$RequestMode;

    const-string v1, "Video"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/IntentManager$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/IntentManager$RequestMode;

    sget-object v1, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/IntentManager$RequestMode;->$VALUES:[Lcom/android/camera/IntentManager$RequestMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/IntentManager$RequestMode;
    .locals 1

    const-class v0, Lcom/android/camera/IntentManager$RequestMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentManager$RequestMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/IntentManager$RequestMode;
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->$VALUES:[Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v0}, [Lcom/android/camera/IntentManager$RequestMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/IntentManager$RequestMode;

    return-object v0
.end method
