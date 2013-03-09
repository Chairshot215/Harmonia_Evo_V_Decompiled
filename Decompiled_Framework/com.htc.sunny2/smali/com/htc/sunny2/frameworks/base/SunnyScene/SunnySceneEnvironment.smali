.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;
.super Lcom/htc/sunny2/view/SSurfaceView;
.source "SunnySceneEnvironment.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentPass;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentAccess;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enableSunnyEnvTouchEvent(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setTouchEnable(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setMeasuredDimension(II)V

    return-void
.end method

.method public putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneEnvironment][putToStage]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->addView(Lcom/htc/sunny2/view/SView;)V

    :cond_0
    return-void
.end method

.method public removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneEnvironment][removeFromStage]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeView(Lcom/htc/sunny2/view/SView;)V

    :cond_0
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-void
.end method

.method public sunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
