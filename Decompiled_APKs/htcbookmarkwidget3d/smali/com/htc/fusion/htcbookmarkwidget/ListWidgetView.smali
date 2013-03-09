.class public Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;
.super Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;
.source "ListWidgetView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final M10_VIEW_PATH_LAND:Ljava/lang/String; = "Land/Bookmark_4x4_ListView.m10"

.field private static final M10_VIEW_PATH_PORT:Ljava/lang/String; = "Port/Bookmark_4x4_ListView.m10"


# instance fields
.field private mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/BaseWidgetView;-><init>()V

    .line 21
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView$1;

    invoke-direct {v0, p0}, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public bindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 6
    .parameter "scene"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "textlabel.common_header_left"

    aput-object v3, v0, v4

    const-string v3, "button.common_header"

    aput-object v3, v0, v5

    .line 45
    .local v0, controlNames:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 46
    .local v1, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v3, v1, v4

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 47
    sget-boolean v3, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->getWidgetContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, titleText:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 56
    :cond_1
    aget-object v3, v1, v5

    check-cast v3, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 57
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public getContentPath(I)Ljava/lang/String;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 36
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 37
    const-string v0, "Land/Bookmark_4x4_ListView.m10"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Port/Bookmark_4x4_ListView.m10"

    goto :goto_0
.end method

.method public getContentPath(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .parameter "config"

    .prologue
    .line 32
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->getContentPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "list"

    return-object v0
.end method

.method public unbindWidgetScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/ListWidgetView;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 65
    :cond_0
    return-void
.end method
