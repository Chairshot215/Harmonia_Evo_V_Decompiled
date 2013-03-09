.class public Lcom/htc/android/rosie/widget/Widget$Base;
.super Lcom/htc/android/rosie/widget/Widget;
.source "Widget.java"

# interfaces
.implements Lcom/htc/android/rosie/widget/Widget$ConfigurationChange;
.implements Lcom/htc/android/rosie/widget/Widget$ConfigurationChange$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z

.field private static final DEBUG_SAVE_STATE:Z

.field private static final DEBUG_SUPRESS:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCalled:Z

.field private mCreated:Z

.field private mIntent:Landroid/content/Intent;

.field private mMyContent:Ljava/lang/String;

.field private mMyScene:Lcom/htc/fusion/fx/FxScene;

.field private mProvider:Lcom/htc/android/rosie/widget/WidgetProvider;

.field private mSavedData:Ljava/util/Properties;

.field private mVisible:Z

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/widget/Widget$Base;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget;-><init>()V

    return-void
.end method

.method private getMyId()I
    .locals 5

    invoke-static {}, Lcom/htc/android/rosie/widget/WidgetManager;->getInstance()Lcom/htc/android/rosie/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/android/rosie/widget/WidgetManager;->getWidgetId(Lcom/htc/android/rosie/widget/Widget;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not bounded yet or had been removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return v0
.end method

.method private final loadContent()V
    .locals 3

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mProvider:Lcom/htc/android/rosie/widget/WidgetProvider;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    iget-object v1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyContent:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    return-void
.end method

.method private performCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    return-void
.end method


# virtual methods
.method public acceptTouchEvent(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyContent:Ljava/lang/String;

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mProvider:Lcom/htc/android/rosie/widget/WidgetProvider;

    invoke-virtual {v0}, Lcom/htc/android/rosie/widget/WidgetProvider;->getPackageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final getHost()Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mProvider:Lcom/htc/android/rosie/widget/WidgetProvider;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    return-object v0
.end method

.method protected final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLastNonConfigurationObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPosition()[I
    .locals 4

    iget-boolean v1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget.startActivityForResult() must not be called before or during Widget.onCreate(): [widget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Lcom/htc/android/rosie/widget/WidgetManager;->getInstance()Lcom/htc/android/rosie/widget/WidgetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/android/rosie/widget/WidgetManager;->getWidgetPosition(Lcom/htc/android/rosie/widget/Widget;)[I

    move-result-object v1

    return-object v1
.end method

.method public getPositionX(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x7

    return v0
.end method

.method public getPositionY(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x38

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 3

    sget-object v0, Lcom/htc/android/rosie/widget/Widget$Base;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScene orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method protected getSceneRoot()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method protected final getVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mVisible:Z

    return v0
.end method

.method final init(Lcom/htc/android/rosie/widget/WidgetProvider;Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Properties;)Lcom/htc/android/rosie/widget/Widget;
    .locals 2

    iput-object p1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mProvider:Lcom/htc/android/rosie/widget/WidgetProvider;

    iget-object v0, p1, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "an widget cannot live without host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mSavedData:Ljava/util/Properties;

    invoke-direct {p0, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->performCreate(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public isEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected loadInstanceData()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mSavedData:Ljava/util/Properties;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method public onEdit()V
    .locals 0

    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onLowMemory()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method protected onRestart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method protected onRestoreState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method public onRetainNonConfigurationObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    return-void
.end method

.method public onTiltChanged(F)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mVisible:Z

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    iget-boolean v1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onConfigurationChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method performDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/widget/Widget$Base;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Widget was not created or had been destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mProvider:Lcom/htc/android/rosie/widget/WidgetProvider;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    iget-object v1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyScene:Lcom/htc/fusion/fx/FxScene;

    :cond_2
    iput-boolean v2, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    goto :goto_0
.end method

.method performPause(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onSaveState(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performPostCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/android/rosie/widget/Widget$Base;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Widget was not created yet or had been destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onPostCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performRestart()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onRestart()V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onRestart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method performRestoreState(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/widget/Widget$Base;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Widget was not created yet or had been destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onRestoreState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method performResume(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onRestoreState(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performStart()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-void
.end method

.method performStop()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mMyContent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->loadContent()V

    return-void
.end method

.method final setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget.startActivityForResult() must not be called before or during Widget.onCreate(): [widget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getMyId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivityForResult(ILandroid/content/Intent;I)V

    return-void
.end method

.method protected storeInstanceData(Ljava/util/Properties;)V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget.storeInstanceData() must not be called before or during Widget.onCreate(): [widget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/rosie/widget/Widget$IllegalWidgetStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getMyId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/htc/android/rosie/widget/Widget$Host;->storeInstanceData(ILjava/util/Properties;)V

    iput-object p1, p0, Lcom/htc/android/rosie/widget/Widget$Base;->mSavedData:Ljava/util/Properties;

    return-void
.end method

.method protected final surpressHostLongClick(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host;->surpressLongClick(Z)V

    return-void
.end method

.method protected final surpressHostSlide(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host;->surpressSlide(Z)V

    return-void
.end method
