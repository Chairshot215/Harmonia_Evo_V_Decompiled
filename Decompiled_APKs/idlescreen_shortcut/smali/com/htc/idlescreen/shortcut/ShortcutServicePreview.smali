.class public Lcom/htc/idlescreen/shortcut/ShortcutServicePreview;
.super Lcom/htc/idlescreen/shortcut/ShortcutService;
.source "ShortcutServicePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/ShortcutService;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;

    invoke-direct {v0, p0, p0}, Lcom/htc/idlescreen/shortcut/ShortcutServicePreview$ShortcutEnginePreview;-><init>(Lcom/htc/idlescreen/shortcut/ShortcutServicePreview;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method
