.class public Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
.super Ljava/lang/Object;
.source "ShortcutContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$1;,
        Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;,
        Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "ShortcutContainer"

.field public static final MARKER_BOUNCE:Ljava/lang/String; = "touch_bounce"

.field public static final MARKER_DROP:Ljava/lang/String; = "drop"

.field public static final MARKER_DROP_ACTIVATE:Ljava/lang/String; = "drop_activate"

.field public static final MARKER_DROP_DEACTIVATE:Ljava/lang/String; = "drop_deactivate"

.field public static final MARKER_DROP_INDICATE:Ljava/lang/String; = "Drop_indicate"

.field public static final MARKER_DROP_OUT:Ljava/lang/String; = "drop_out"

.field public static final MARKER_DROP_OVER:Ljava/lang/String; = "drop_over"


# instance fields
.field private mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mPortait:Z

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mShortcutOff:Lcom/htc/fusion/fx/Marker;

.field private mShortcutOn:Lcom/htc/fusion/fx/Marker;

.field private mShortcutPanelOff:Z

.field private mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mShortcutPanelbgTL:[Lcom/htc/fusion/fx/FxTimelineControl;

.field private mState:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    .line 42
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mPortait:Z

    .line 43
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mDestroyed:Z

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelbgTL:[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 50
    sget-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;->STOP:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mState:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    .line 361
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelOff:Z

    .line 61
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private hanleM10Error(Lcom/htc/fusion/fx/FxScene;)V
    .locals 3
    .parameter "scene"

    .prologue
    const/4 v2, 0x1

    .line 109
    const-string v1, "timeline.shortcuticon01_posiY"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 110
    .local v0, timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 113
    :cond_0
    const-string v1, "t.lockscreen_ring_motion"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    .end local v0           #timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 114
    .restart local v0       #timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 119
    :cond_1
    const-string v1, "t.lockscreen_ring_positionY"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    .end local v0           #timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 120
    .restart local v0       #timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 123
    :cond_2
    return-void
.end method

.method private register()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$ApplicationsIntentReceiver;-><init>(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$1;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private uninitIcons()V
    .locals 4

    .prologue
    .line 149
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 153
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->uninit()V

    .line 156
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 158
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    return-void
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public containDragControl(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    .locals 4
    .parameter "idleDrag"

    .prologue
    .line 255
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 260
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->equals(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    monitor-exit v3

    .line 266
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :goto_0
    return-object v1

    .line 265
    :cond_1
    monitor-exit v3

    .line 266
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 5
    .parameter "scene"
    .parameter "bPortrait"

    .prologue
    .line 65
    iput-boolean p2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mPortait:Z

    .line 66
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 67
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "timeline.shortcutpanel"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 68
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Opacity_off"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutOff:Lcom/htc/fusion/fx/Marker;

    .line 70
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Opacity_on"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutOn:Lcom/htc/fusion/fx/Marker;

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelbgTL:[Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v4, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_SHORTCUTPANEL_BACKGROUND:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v2, v3, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0           #i:I
    :cond_0
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v1

    .line 76
    .local v1, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-eqz v1, :cond_1

    .line 77
    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadow(Landroid/graphics/Bitmap;)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->setShadowVisible(Z)V

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->hanleM10Error(Lcom/htc/fusion/fx/FxScene;)V

    .line 82
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->register()V

    .line 83
    return-void
.end method

.method public initData(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;)V
    .locals 0
    .parameter "idlescreen"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->initIcons(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;)V

    .line 163
    return-void
.end method

.method public initIcons(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;)V
    .locals 25
    .parameter "idlescreen"

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 167
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mDestroyed:Z

    if-nez v2, :cond_0

    if-nez v4, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->uninitIcons()V

    .line 181
    const/4 v12, 0x0

    .line 183
    .local v12, animationImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/idlescreen/base/setting/SettingDB;->getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 184
    .local v19, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;>;"
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    .line 186
    .local v21, shortcutInfoSize:I
    :goto_1
    const/16 v16, 0x0

    .line 188
    .local v16, nameLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v13, 0x0

    .line 189
    .local v13, numTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v14, 0x0

    .line 191
    .local v14, numTimeline2:Lcom/htc/fusion/fx/FxTimelineControl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 192
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    :try_start_0
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    .line 193
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 194
    .local v5, container:Lcom/htc/fusion/fx/FxTimelineControl;
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v18

    check-cast v18, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 195
    .local v18, imageContainer:Lcom/htc/fusion/fx/FxTimelineControl;
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v20

    check-cast v20, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 196
    .local v20, opacityTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v22

    check-cast v22, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 197
    .local v22, unlock:Lcom/htc/fusion/fx/FxTimelineControl;
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x1

    aget-object v3, v2, v3

    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v7, 0x2

    aget-object v6, v2, v7

    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v7, 0x3

    aget-object v7, v2, v7

    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v8, 0x4

    aget-object v8, v2, v8

    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v24, 0x5

    aget-object v9, v2, v24

    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v24, 0x6

    aget-object v10, v2, v24

    move-object/from16 v2, p1

    invoke-interface/range {v2 .. v10}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v10

    .line 205
    .local v10, dragControl:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    if-eqz v22, :cond_2

    .line 206
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v3, 0xb

    aget-object v2, v2, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v14, v0

    .line 208
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_MARKER_INDICATE:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v10, v0, v2, v3}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setClickAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 209
    const-string v2, "unlock"

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v10, v0, v2, v3}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setUnlockAnime(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Z)V

    .line 210
    add-int/lit8 v2, v17, 0x1

    invoke-interface {v10, v2}, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;->setDropIndex(I)V

    .line 212
    :cond_2
    if-eqz v20, :cond_3

    .line 213
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v3, 0xb

    aget-object v2, v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v13, v0

    .line 217
    :cond_3
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v15

    check-cast v15, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 218
    .local v15, nameTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v15, :cond_4

    .line 219
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v15, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-object/from16 v16, v0

    .line 221
    :cond_4
    move/from16 v0, v21

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 222
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 227
    .local v9, shortcutinfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    :goto_3
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v11

    check-cast v11, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 228
    .local v11, image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v22, :cond_7

    .line 229
    sget-object v2, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-object v12, v0

    .line 234
    :goto_4
    new-instance v6, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    invoke-direct/range {v6 .. v16}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;-><init>(Landroid/content/Context;Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxTextLabel;)V

    .line 235
    .local v6, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    invoke-virtual {v6}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->init()V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 184
    .end local v5           #container:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v6           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    .end local v9           #shortcutinfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    .end local v10           #dragControl:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .end local v11           #image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v13           #numTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v14           #numTimeline2:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v15           #nameTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v16           #nameLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v17           #i:I
    .end local v18           #imageContainer:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v20           #opacityTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v21           #shortcutInfoSize:I
    .end local v22           #unlock:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 224
    .restart local v5       #container:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v10       #dragControl:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .restart local v13       #numTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v14       #numTimeline2:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v15       #nameTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v16       #nameLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v17       #i:I
    .restart local v18       #imageContainer:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v20       #opacityTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v21       #shortcutInfoSize:I
    .restart local v22       #unlock:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_6
    const/4 v9, 0x0

    .restart local v9       #shortcutinfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    goto :goto_3

    .line 232
    .restart local v11       #image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 251
    .end local v5           #container:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v9           #shortcutinfo:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    .end local v10           #dragControl:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .end local v11           #image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v15           #nameTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v18           #imageContainer:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v20           #opacityTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v22           #unlock:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_8
    monitor-exit v23

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;->PAUSE:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mState:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    .line 345
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;->RESUME:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mState:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    .line 340
    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 2
    .parameter "unlock"

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onRingDragStart()V
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 354
    return-void
.end method

.method public onSphereMoved(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V
    .locals 1
    .parameter "shortcut"

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 375
    return-void
.end method

.method public onSpherePressed(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V
    .locals 0
    .parameter "shortcut"

    .prologue
    .line 371
    return-void
.end method

.method public onSphereReleased(Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V
    .locals 1
    .parameter "shortcut"

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 379
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;->START:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mState:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    .line 335
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;->STOP:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mState:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer$State;

    .line 350
    return-void
.end method

.method public removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 447
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 449
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->updateShortCut()V

    .line 456
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reset(Z)V
    .locals 4
    .parameter "playAnime"

    .prologue
    .line 128
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 132
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->resetPosition()V

    .line 134
    invoke-virtual {v1, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->onResume(Z)V

    goto :goto_0

    .line 137
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V

    .line 139
    return-void
.end method

.method public resetIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 271
    invoke-static {}, Lcom/htc/idlescreen/base/setting/SettingDB;->getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/idlescreen/base/setting/SettingDB;->getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 275
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v6, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v6

    .line 279
    :try_start_0
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 280
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    const/4 v2, 0x0

    .line 281
    .local v2, index:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 282
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 283
    .local v3, info:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 284
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1, v3}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setApInfo(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 287
    :cond_2
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelbgTL:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 288
    invoke-virtual {v3}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->getItemType()I

    move-result v5

    if-le v5, v8, :cond_4

    .line 289
    const-string v5, "ShortcutContainer"

    const-string v7, "mShortcutPanelbgTL background set invisible"

    invoke-static {v5, v7}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelbgTL:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v5, v5, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 295
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_4
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelbgTL:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v5, v5, v2

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_2

    .line 297
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    .end local v2           #index:I
    .end local v3           #info:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .restart local v2       #index:I
    :cond_5
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setSphereVisible(ZLcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;)V
    .locals 8
    .parameter "show"
    .parameter "shortcut"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 382
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelOff:Z

    if-eqz v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 385
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Opacity_on"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 392
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_1

    .line 394
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setIconVisible(Z)V

    .line 396
    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setNameVisible(ZJ)V

    goto :goto_0

    .line 399
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    iput-boolean v6, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelOff:Z

    .line 422
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_3
    :goto_1
    return-void

    .line 402
    :cond_4
    if-nez p1, :cond_3

    .line 403
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_5

    .line 404
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 405
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Opacity_off"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 407
    :cond_5
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 409
    :try_start_2
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 410
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 412
    .restart local v1       #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_6

    .line 413
    if-eq v1, p2, :cond_7

    .line 414
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setIconVisible(Z)V

    .line 416
    :cond_7
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->setNameVisible(ZJ)V

    goto :goto_2

    .line 419
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_8
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 420
    iput-boolean v7, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mShortcutPanelOff:Z

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 426
    if-nez p1, :cond_2

    .line 427
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 432
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->dragCancel()V

    goto :goto_0

    .line 436
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_2
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mDestroyed:Z

    .line 143
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->unregister()V

    .line 144
    invoke-direct {p0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->uninitIcons()V

    .line 145
    return-void
.end method

.method public updateAppCount(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v3

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 311
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->isSameShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v1, p1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->updateShortcutInfo(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    goto :goto_1

    .line 318
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateShortcutForPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 491
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->updateShortcutForPackage([Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public updateShortcutForPackage([Ljava/lang/String;)V
    .locals 7
    .parameter "packageNames"

    .prologue
    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, update:Z
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    monitor-enter v5

    .line 462
    if-eqz p1, :cond_5

    :try_start_0
    array-length v4, p1

    if-lez v4, :cond_5

    .line 463
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 464
    aget-object v4, p1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;->mIcons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 469
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 470
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;

    .line 471
    .local v1, icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    if-eqz v1, :cond_2

    .line 472
    aget-object v4, p1, v0

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    const/4 v3, 0x1

    .line 479
    .end local v1           #icon:Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;
    :cond_3
    if-eqz v3, :cond_0

    .line 483
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/widget/shortcut/ShortcutIcon;>;"
    :cond_4
    if-eqz v3, :cond_5

    .line 484
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/idlescreen/base/IdleState;->updateShortCut()V

    .line 487
    .end local v0           #i:I
    :cond_5
    monitor-exit v5

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
