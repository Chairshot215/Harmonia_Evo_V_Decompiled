.class public Lcom/htc/weatheridlescreen/service/WISPreviewService;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.source "WISPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[WISPreviewService]: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;

    invoke-direct {v0, p0, p0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;-><init>(Lcom/htc/weatheridlescreen/service/WISPreviewService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method
