.class public final Lcom/htc/android/rosie/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/WidgetManager$1;,
        Lcom/htc/android/rosie/widget/WidgetManager$Host;,
        Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;
    }
.end annotation


# static fields
.field public static final EXTRA_STYLE_ID:Ljava/lang/String; = "com.htc.android.rosie.intent.extra.STYLE_ID"

.field public static final EXTRA_STYLE_SCENE:Ljava/lang/String; = "com.htc.android.rosie.intent.extra.STYLE_SCENE"

.field public static final INVALID_WIDGET_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final localLOGD:Z

.field private static sInstance:Lcom/htc/android/rosie/widget/WidgetManager;


# instance fields
.field private mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/htc/android/rosie/widget/WidgetProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/android/rosie/widget/WidgetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/widget/WidgetManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mProviders:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    return-void
.end method

.method private addWidget(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;
    .locals 5

    iget-object v3, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    if-ne v1, p1, :cond_1

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {p1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v4

    if-ne v2, v4, :cond_0

    iget v2, v1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    iget v4, p1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/htc/android/rosie/widget/WidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "There is already a widget with same host and ID."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p1

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/htc/android/rosie/widget/WidgetManager;
    .locals 1

    sget-object v0, Lcom/htc/android/rosie/widget/WidgetManager;->sInstance:Lcom/htc/android/rosie/widget/WidgetManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/android/rosie/widget/WidgetManager;

    invoke-direct {v0}, Lcom/htc/android/rosie/widget/WidgetManager;-><init>()V

    sput-object v0, Lcom/htc/android/rosie/widget/WidgetManager;->sInstance:Lcom/htc/android/rosie/widget/WidgetManager;

    :cond_0
    sget-object v0, Lcom/htc/android/rosie/widget/WidgetManager;->sInstance:Lcom/htc/android/rosie/widget/WidgetManager;

    return-object v0
.end method

.method private removeWidget(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acceptTouchEvent(Lcom/htc/android/rosie/widget/Widget$Host;III)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v2, p3, p4}, Lcom/htc/android/rosie/widget/Widget$Base;->acceptTouchEvent(II)Z

    move-result v0

    goto :goto_0
.end method

.method public bindWidgetId(ILcom/htc/android/rosie/widget/WidgetProvider;Landroid/content/Intent;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/Properties;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0, p4, p1}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$000(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2, p3, v1, p5}, Lcom/htc/android/rosie/widget/WidgetProvider;->loadWidgetWithIntent(Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Properties;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return v4

    :cond_1
    if-nez v3, :cond_3

    new-instance v3, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v2, p4, v5}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;-><init>(ILcom/htc/android/rosie/widget/Widget;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/android/rosie/widget/WidgetManager$1;)V

    invoke-direct {p0, v3}, Lcom/htc/android/rosie/widget/WidgetManager;->addWidget(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v5

    if-ne v5, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v3, v2}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$202(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Lcom/htc/android/rosie/widget/Widget;)Lcom/htc/android/rosie/widget/Widget;

    goto :goto_1
.end method

.method public callWidgetOnConfigurationChanged(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/content/res/Configuration;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    move-object v0, v2

    check-cast v0, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v0, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public callWidgetOnHostMessage(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/os/Message;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/android/rosie/widget/Widget;->onHostMessage(Landroid/os/Message;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public callWidgetOnPostCreate(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    move-object v0, v2

    check-cast v0, Lcom/htc/android/rosie/widget/Widget$Base;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$000(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Base;->performPostCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public destroyWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/htc/android/rosie/widget/WidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not bound or already destroyed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v1}, Lcom/htc/android/rosie/widget/Widget$Base;->performDestroy()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dispatchActivityResult(Lcom/htc/android/rosie/widget/Widget$Host;IIILandroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/htc/android/rosie/widget/WidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not bound or already destroyed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v1, p3, p4, p5}, Lcom/htc/android/rosie/widget/Widget$Base;->dispatchActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public editWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v1}, Lcom/htc/android/rosie/widget/Widget$Base;->onEdit()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;
    .locals 4

    iget-object v3, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    if-ne v2, p2, :cond_0

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getWidgetId(Lcom/htc/android/rosie/widget/Widget;)I
    .locals 3

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getWidgetPosition(Lcom/htc/android/rosie/widget/Widget;)[I
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v4}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v5

    if-ne v5, p1, :cond_0

    move-object v0, v4

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    sget-object v5, Lcom/htc/android/rosie/widget/WidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing widget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    :goto_0
    return-object v3

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_2
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v5

    instance-of v5, v5, Lcom/htc/android/rosie/widget/WidgetManager$Host;

    if-eqz v5, :cond_3

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v5

    check-cast v5, Lcom/htc/android/rosie/widget/WidgetManager$Host;

    iget v6, v0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/WidgetManager$Host;->getWidgetPosition(I)[I

    move-result-object v2

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/htc/android/rosie/widget/WidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") called getWidgetPosition() but the host does not implement it."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getWidgetScene(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/rosie/widget/Widget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidgetScene(Lcom/htc/android/rosie/widget/Widget$Host;II)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/android/rosie/widget/Widget;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    goto :goto_0
.end method

.method public isEditable(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v2}, Lcom/htc/android/rosie/widget/Widget$Base;->isEditable()Z

    move-result v0

    goto :goto_0
.end method

.method public pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$400(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;
    invoke-static {v1, v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$002(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v2, v0}, Lcom/htc/android/rosie/widget/Widget$Base;->performPause(Landroid/os/Bundle;)V

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z
    invoke-static {v1, v3}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$402(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z

    move v2, v3

    goto :goto_0
.end method

.method public registerProvider(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/ComponentName;)Lcom/htc/android/rosie/widget/WidgetProvider;
    .locals 5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mProviders:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mProviders:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/android/rosie/widget/WidgetProvider;

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v2, Lcom/htc/android/rosie/widget/WidgetProvider;

    invoke-direct {v2, p1, p2}, Lcom/htc/android/rosie/widget/WidgetProvider;-><init>(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mProviders:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :cond_0
    :try_start_2
    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method public restoreWidgetState(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    move-object v0, v2

    check-cast v0, Lcom/htc/android/rosie/widget/Widget$Base;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$000(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Base;->performRestoreState(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public resumeWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$400(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$000(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/android/rosie/widget/Widget$Base;->performResume(Landroid/os/Bundle;)V

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z
    invoke-static {v0, v2}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$402(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setWidgetTilt(Lcom/htc/android/rosie/widget/Widget$Host;IF)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/android/rosie/widget/Widget;->onTiltChanged(F)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setWidgetVisibility(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/android/rosie/widget/Widget;->onVisibilityChanged(Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$400(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/widget/Widget$Base;

    move-object v0, v2

    check-cast v0, Lcom/htc/android/rosie/widget/Widget$Base;

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mNeedsRestart:Z
    invoke-static {v1}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$600(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/rosie/widget/Widget$Base;->performRestart()V

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mNeedsRestart:Z
    invoke-static {v1, v3}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$602(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z

    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/rosie/widget/Widget$Base;->performStart()V

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v1, v3}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$502(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public stopWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$400(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    #getter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;
    invoke-static {v0}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    check-cast v1, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v1}, Lcom/htc/android/rosie/widget/Widget$Base;->performStop()V

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z
    invoke-static {v0, v2}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$502(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z

    #setter for: Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mNeedsRestart:Z
    invoke-static {v0, v2}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->access$602(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z

    move v1, v2

    goto :goto_0
.end method

.method public unbindWidgetId(Lcom/htc/android/rosie/widget/Widget$Host;I)V
    .locals 3

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->findWidgetRecord(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/widget/WidgetManager;->removeWidget(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
