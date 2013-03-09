.class public final enum Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;
.super Ljava/lang/Enum;
.source "SunnySceneChangeInterrupt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INTERRUPT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum BACKKEY_PRESSED:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum SCENE_ERROR_REPORT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

.field public static final enum UNKNOWN:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->UNKNOWN:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "BACKKEY_PRESSED"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->BACKKEY_PRESSED:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "MEDIA_CONNECT"

    invoke-direct {v0, v1, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "MEDIA_DISCONNECT"

    invoke-direct {v0, v1, v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "REMOVE_ALL_SCENE"

    invoke-direct {v0, v1, v7}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "SCENE_ERROR_REPORT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->SCENE_ERROR_REPORT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const-string v1, "ACTIVITY_NEW_INTENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->UNKNOWN:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->BACKKEY_PRESSED:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->SCENE_ERROR_REPORT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->$VALUES:[Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;
    .locals 1

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->$VALUES:[Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    invoke-virtual {v0}, [Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    return-object v0
.end method
