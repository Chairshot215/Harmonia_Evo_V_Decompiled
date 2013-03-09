.class public Lcom/htc/launcher/WidgetHostHandle;
.super Lcom/htc/home/HostActivity;
.source "WidgetHostHandle.java"

# interfaces
.implements Lcom/htc/home/HostInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "Widget"

.field public static localLOGV:Z


# instance fields
.field private mEnableScroll:Z

.field private mWidget:Lcom/htc/launcher/Widget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/WidgetHostHandle;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/Widget;Landroid/content/Context;)V
    .locals 1
    .parameter "widget"
    .parameter "base"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/htc/home/HostActivity;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/WidgetHostHandle;->mEnableScroll:Z

    .line 34
    iput-object p1, p0, Lcom/htc/launcher/WidgetHostHandle;->mWidget:Lcom/htc/launcher/Widget;

    .line 35
    return-void
.end method


# virtual methods
.method public attach3DObject(Lcom/htc/gl/Instance;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 117
    const-string v0, "Rosie_3D"

    const-string v1, "WidgetHost, (Deprecated) attach3DObject"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public detach3DObject(Lcom/htc/gl/Instance;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 124
    const-string v0, "Rosie_3D"

    const-string v1, "WidgetHost, (Deprecated) detach3DObject"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public enableGLDrawing(Landroid/view/View;Z)V
    .locals 3
    .parameter "client"
    .parameter "enable"

    .prologue
    .line 110
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Deprecated) enableGLDrawing() was called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public enableScroll(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/launcher/WidgetHostHandle;->mEnableScroll:Z

    .line 83
    iget-object v1, p0, Lcom/htc/launcher/WidgetHostHandle;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 84
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lcom/htc/launcher/Launcher;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/launcher/Workspace;->enableScroll(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public getCurrentScene()Lcom/htc/home/Scene;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnableScroll()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/launcher/WidgetHostHandle;->mEnableScroll:Z

    return v0
.end method

.method public load()Ljava/util/Properties;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 38
    iget-object v5, p0, Lcom/htc/launcher/WidgetHostHandle;->mWidget:Lcom/htc/launcher/Widget;

    iget-object v5, v5, Lcom/htc/launcher/Widget;->props:[B

    if-nez v5, :cond_0

    move-object v3, v4

    .line 49
    :goto_0
    return-object v3

    .line 43
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/htc/launcher/WidgetHostHandle;->mWidget:Lcom/htc/launcher/Widget;

    iget-object v5, v5, Lcom/htc/launcher/Widget;->props:[B

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .local v1, in:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v2, in2:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v3, props:Ljava/util/Properties;
    goto :goto_0

    .line 47
    .end local v1           #in:Ljava/io/ByteArrayInputStream;
    .end local v2           #in2:Ljava/io/ObjectInputStream;
    .end local v3           #props:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/htc/launcher/WidgetHostHandle;->localLOGV:Z

    if-eqz v5, :cond_1

    const-string v5, "Widget"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v3, v4

    .line 49
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/htc/launcher/WidgetHostHandle;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 74
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/launcher/Launcher;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/htc/launcher/Launcher;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Lcom/htc/launcher/Launcher;->onLongClick(Landroid/view/View;)Z

    move-result v1

    .line 77
    :goto_0
    return v1

    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onViewInvalidated(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 97
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Deprecated) onViewInvalidated() was called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public requestPlayAnimation(Ljava/lang/String;I)V
    .locals 2
    .parameter "AnimName"
    .parameter "frame"

    .prologue
    .line 138
    const-string v0, "Rosie_3D"

    const-string v1, "WidgetHost, (Deprecated) requestPlayAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "Rosie_3D"

    const-string v1, "WidgetHost, (Deprecated) requestRender"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public requestShowWeatherWallpaper(IIIII)Z
    .locals 3
    .parameter "condition"
    .parameter "icon_x"
    .parameter "icon_y"
    .parameter "icon_w"
    .parameter "icon_h"

    .prologue
    .line 145
    const-string v0, "Haolang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetHost, (Deprecated) requestShowWeatherWallpaper condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public requestStopRender()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "Haolang"

    const-string v1, "WidgetHost, (Deprecated) requestStopRender"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public store(Ljava/util/Properties;)Z
    .locals 5
    .parameter "props"

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v2, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    iget-object v3, p0, Lcom/htc/launcher/WidgetHostHandle;->mWidget:Lcom/htc/launcher/Widget;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v3, Lcom/htc/launcher/Widget;->props:[B

    .line 59
    iget-object v3, p0, Lcom/htc/launcher/WidgetHostHandle;->mWidget:Lcom/htc/launcher/Widget;

    invoke-static {p0, v3}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v3, 0x1

    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out2:Ljava/io/ObjectOutputStream;
    :goto_0
    return v3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/htc/launcher/WidgetHostHandle;->localLOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "Widget"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
