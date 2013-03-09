.class final enum Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;
.super Ljava/lang/Enum;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BuilderSceneDownloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

.field public static final enum PreviewImage:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

.field public static final enum SceneData:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    const-string v1, "SceneData"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->SceneData:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    new-instance v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    const-string v1, "PreviewImage"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->PreviewImage:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    sget-object v1, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->SceneData:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->PreviewImage:Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->$VALUES:[Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->$VALUES:[Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/scene/ScenePicker$BuilderSceneDownloadType;

    return-object v0
.end method
