.class public final enum Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcSceneManager/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneDbColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum DISPLAY_NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

.field public static final enum _ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "_ID"

    const-string v2, "_id"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "NAME"

    const-string v2, "scene_name"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "DISPLAY_NAME"

    const-string v2, "display_name"

    const-string v3, "BLOB"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->DISPLAY_NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "TRANSLATE_ID"

    const-string v2, "translate_id"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "TYPE"

    const-string v2, "scene_type"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "PREVIEW_PORT"

    const/4 v2, 0x5

    const-string v3, "preview_port"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "PREVIEW_LAND"

    const/4 v2, 0x6

    const-string v3, "preview_land"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "LIVEWALLPAPER_PATH"

    const/4 v2, 0x7

    const-string v3, "live_wallpaper_path"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "STATICWALLPAPER_PATH"

    const/16 v2, 0x8

    const-string v3, "static_wallpaper_path"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "LOCLSCREEN_WALLPAPER"

    const/16 v2, 0x9

    const-string v3, "lockscreen_wallpaper_path"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "ONLINE_SCENE_ID"

    const/16 v2, 0xa

    const-string v3, "online_scene_id"

    const-string v4, "TEXT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    new-instance v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const-string v1, "IS_CURRENT_SCENE"

    const/16 v2, 0xb

    const-string v3, "current_scene"

    const-string v4, "INTEGER"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->DISPLAY_NAME:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TRANSLATE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->TYPE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_PORT:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->PREVIEW_LAND:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LIVEWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->STATICWALLPAPER_PATH:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->LOCLSCREEN_WALLPAPER:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->ONLINE_SCENE_ID:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->IS_CURRENT_SCENE:Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->$VALUES:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;
    .locals 1

    const-class v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    return-object v0
.end method

.method public static values()[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;
    .locals 1

    sget-object v0, Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->$VALUES:[Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    invoke-virtual {v0}, [Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/htcSceneManager/scene/Scene$SceneDbColumn;

    return-object v0
.end method
