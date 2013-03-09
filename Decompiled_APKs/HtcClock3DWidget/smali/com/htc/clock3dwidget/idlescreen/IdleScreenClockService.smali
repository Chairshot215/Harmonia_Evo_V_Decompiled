.class public Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.source "IdleScreenClockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;->getClassName()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getClassName()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, classname:Ljava/lang/Class;
    const-string v1, "com.htc.lockscreen.fusion.idlescreen.FxIdleScreenEngine"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    return-object v0
.end method


# virtual methods
.method public onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;

    invoke-direct {v0, p0, p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService$MyEngine;-><init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method
