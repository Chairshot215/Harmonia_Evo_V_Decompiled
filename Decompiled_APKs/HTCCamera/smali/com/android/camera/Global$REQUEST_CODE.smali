.class final enum Lcom/android/camera/Global$REQUEST_CODE;
.super Ljava/lang/Enum;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "REQUEST_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/Global$REQUEST_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/Global$REQUEST_CODE;

.field public static final enum INTENT_ALBUM_RESULT:Lcom/android/camera/Global$REQUEST_CODE;

.field public static final enum REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

.field public static final enum REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

.field public static final enum SCENE_SELECTOR_RESULT:Lcom/android/camera/Global$REQUEST_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/Global$REQUEST_CODE;

    const-string v1, "INTENT_ALBUM_RESULT"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Global$REQUEST_CODE;->INTENT_ALBUM_RESULT:Lcom/android/camera/Global$REQUEST_CODE;

    new-instance v0, Lcom/android/camera/Global$REQUEST_CODE;

    const-string v1, "REQUEST_CODE_CROP_MSG"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    new-instance v0, Lcom/android/camera/Global$REQUEST_CODE;

    const-string v1, "SCENE_SELECTOR_RESULT"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Global$REQUEST_CODE;->SCENE_SELECTOR_RESULT:Lcom/android/camera/Global$REQUEST_CODE;

    new-instance v0, Lcom/android/camera/Global$REQUEST_CODE;

    const-string v1, "REQUEST_AUTO_UPLOAD_SETTING"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/Global$REQUEST_CODE;

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->INTENT_ALBUM_RESULT:Lcom/android/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->SCENE_SELECTOR_RESULT:Lcom/android/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/Global$REQUEST_CODE;->$VALUES:[Lcom/android/camera/Global$REQUEST_CODE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/Global$REQUEST_CODE;
    .locals 1

    const-class v0, Lcom/android/camera/Global$REQUEST_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Global$REQUEST_CODE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/Global$REQUEST_CODE;
    .locals 1

    sget-object v0, Lcom/android/camera/Global$REQUEST_CODE;->$VALUES:[Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v0}, [Lcom/android/camera/Global$REQUEST_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/Global$REQUEST_CODE;

    return-object v0
.end method
