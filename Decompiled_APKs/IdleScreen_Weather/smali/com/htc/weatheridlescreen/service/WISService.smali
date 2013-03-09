.class public Lcom/htc/weatheridlescreen/service/WISService;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.source "WISService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weatheridlescreen/service/WISService$MyEngine;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[WISService] "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    invoke-direct {v0, p0, p0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;-><init>(Lcom/htc/weatheridlescreen/service/WISService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method
