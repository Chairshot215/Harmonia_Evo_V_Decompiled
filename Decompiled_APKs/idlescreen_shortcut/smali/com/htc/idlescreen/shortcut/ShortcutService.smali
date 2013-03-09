.class public Lcom/htc/idlescreen/shortcut/ShortcutService;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;

    invoke-direct {v0, p0, p0}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;-><init>(Lcom/htc/idlescreen/shortcut/ShortcutService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method
