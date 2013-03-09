.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;
.super Ljava/lang/Object;
.source "SunnySceneDisplayManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayStyle;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mLevel:I

.field private mStatusBarH:I

.field private mStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->mStyle:I

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->mLevel:I

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->mStatusBarH:I

    return-void
.end method


# virtual methods
.method public setDisplayLevel(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->mLevel:I

    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->mStyle:I

    return-void
.end method
