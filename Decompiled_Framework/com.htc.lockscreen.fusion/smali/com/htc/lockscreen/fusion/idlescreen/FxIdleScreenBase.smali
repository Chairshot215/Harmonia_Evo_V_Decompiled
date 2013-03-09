.class public Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;
.super Ljava/lang/Object;
.source "FxIdleScreenBase.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;


# instance fields
.field private mEngine:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;->mEngine:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public getCommonDimen(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingScope()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public isInPortrait()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPreview()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;->mEngine:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->isPreview()Z

    move-result v0

    return v0
.end method

.method public isShortcutVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 0

    return-void
.end method

.method public onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onScreenOnOffChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(III)V
    .locals 0

    return-void
.end method

.method public onViewModeChange(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public setBackground(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setClockType(I)V
    .locals 0

    return-void
.end method

.method public setMenuPadding(I)V
    .locals 0

    return-void
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setShortcutVisibility(I)V
    .locals 0

    return-void
.end method

.method public setShortcutVisible(Z)V
    .locals 0

    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;->mEngine:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setShowLiveWallpaper(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method
