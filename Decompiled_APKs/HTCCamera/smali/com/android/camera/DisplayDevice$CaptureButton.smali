.class public final enum Lcom/android/camera/DisplayDevice$CaptureButton;
.super Ljava/lang/Enum;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DisplayDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/DisplayDevice$CaptureButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/DisplayDevice$CaptureButton;

.field public static final enum ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

.field public static final enum HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

.field public static final enum Other:Lcom/android/camera/DisplayDevice$CaptureButton;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/DisplayDevice$CaptureButton;

    const-string v1, "ActionKey"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/DisplayDevice$CaptureButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    new-instance v0, Lcom/android/camera/DisplayDevice$CaptureButton;

    const-string v1, "HWKey"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/DisplayDevice$CaptureButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    new-instance v0, Lcom/android/camera/DisplayDevice$CaptureButton;

    const-string v1, "Other"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/DisplayDevice$CaptureButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v1, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->$VALUES:[Lcom/android/camera/DisplayDevice$CaptureButton;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/DisplayDevice$CaptureButton;
    .locals 1

    const-class v0, Lcom/android/camera/DisplayDevice$CaptureButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DisplayDevice$CaptureButton;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/DisplayDevice$CaptureButton;
    .locals 1

    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->$VALUES:[Lcom/android/camera/DisplayDevice$CaptureButton;

    invoke-virtual {v0}, [Lcom/android/camera/DisplayDevice$CaptureButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/DisplayDevice$CaptureButton;

    return-object v0
.end method
