.class public Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;
.super Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;
.source "GridWidgetView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field private static final M10_VIEW_PATH_LAND:Ljava/lang/String; = "Land/VisualBookmark_4x4_ListView.m10"

.field private static final M10_VIEW_PATH_PORT:Ljava/lang/String; = "Port/VisualBookmark_4x4_ListView.m10"


# instance fields
.field private mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;-><init>()V

    .line 26
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$1;

    invoke-direct {v0, p0}, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method


# virtual methods
.method public bindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 6
    .parameter "scene"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "textlabel.common_header_left"

    aput-object v3, v0, v4

    const-string v3, "button.common_header"

    aput-object v3, v0, v5

    .line 81
    .local v0, controlNames:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 82
    .local v1, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v3, v1, v4

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 83
    sget-boolean v3, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, titleText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v3, :cond_2

    .line 89
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 92
    :cond_2
    aget-object v3, v1, v5

    check-cast v3, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 93
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getContentPath(I)Ljava/lang/String;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 71
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 72
    const-string v0, "Land/VisualBookmark_4x4_ListView.m10"

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Port/VisualBookmark_4x4_ListView.m10"

    goto :goto_0
.end method

.method public getContentPath(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .parameter "config"

    .prologue
    .line 67
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->getContentPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "grid"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;

    invoke-direct {v1, p0}, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView$2;-><init>(Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;)V

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    return-void
.end method

.method public unbindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 101
    :cond_0
    return-void
.end method
