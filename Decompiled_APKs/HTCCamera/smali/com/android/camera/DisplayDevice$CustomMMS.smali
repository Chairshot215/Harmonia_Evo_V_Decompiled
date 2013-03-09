.class public final enum Lcom/android/camera/DisplayDevice$CustomMMS;
.super Ljava/lang/Enum;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DisplayDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomMMS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DisplayDevice$CustomMMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static final enum ATT:Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static final enum Default:Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static final enum Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static final enum Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/DisplayDevice$CustomMMS;

    const-string v1, "Default"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DisplayDevice$CustomMMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    new-instance v0, Lcom/android/camera/DisplayDevice$CustomMMS;

    const-string v1, "ATT"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DisplayDevice$CustomMMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->ATT:Lcom/android/camera/DisplayDevice$CustomMMS;

    new-instance v0, Lcom/android/camera/DisplayDevice$CustomMMS;

    const-string v1, "Sprint"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/DisplayDevice$CustomMMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    new-instance v0, Lcom/android/camera/DisplayDevice$CustomMMS;

    const-string v1, "Verizon"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/DisplayDevice$CustomMMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v1, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/DisplayDevice$CustomMMS;->ATT:Lcom/android/camera/DisplayDevice$CustomMMS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->$VALUES:[Lcom/android/camera/DisplayDevice$CustomMMS;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DisplayDevice$CustomMMS;
    .locals 1

    const-class v0, Lcom/android/camera/DisplayDevice$CustomMMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DisplayDevice$CustomMMS;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DisplayDevice$CustomMMS;
    .locals 1

    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->$VALUES:[Lcom/android/camera/DisplayDevice$CustomMMS;

    invoke-virtual {v0}, [Lcom/android/camera/DisplayDevice$CustomMMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DisplayDevice$CustomMMS;

    return-object v0
.end method
