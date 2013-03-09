.class Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;
.super Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.source "IdleScreenClockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEngine"
.end annotation


# instance fields
.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

.field final synthetic this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;


# direct methods
.method public constructor <init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;

    .line 29
    invoke-direct {p0, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter "surfaceHolder"

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->setShowLiveWallpaper(Z)V

    .line 36
    :try_start_0
    #calls: Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;->getClassName()Ljava/lang/Class;
    invoke-static {}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;->access$000()Ljava/lang/Class;

    move-result-object v2

    .line 37
    .local v2, name:Ljava/lang/Class;
    const-string v3, "setClockType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    .end local v1           #m:Ljava/lang/reflect/Method;
    .end local v2           #name:Ljava/lang/Class;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "IdleScreenClockService~ Class not Found"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v3, "IdleScreenClockService~ Method not Found"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStart()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;

    invoke-static {v1}, Lcom/htc/clock3dwidget/ClockUtils;->getMode10Path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pyramid_Lockscreen_clock.m10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 54
    new-instance v0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->this$0:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;

    iget-object v2, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {v0, v1, v2}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;-><init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    .line 56
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->onDestroy()V

    .line 64
    :cond_0
    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    .line 65
    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 66
    check-cast v0, Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {p0, v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    .line 67
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onStop()V

    .line 68
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 69
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 73
    if-eqz p1, :cond_1

    .line 74
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onVisibilityChanged(Z)V

    .line 75
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->onResume()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;->mStub:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->onPause()V

    .line 82
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onVisibilityChanged(Z)V

    goto :goto_0
.end method
