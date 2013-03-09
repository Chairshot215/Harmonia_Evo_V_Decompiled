.class public Lcom/android/camera/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# static fields
.field public static final CLOSED:I = 0x2

.field public static final CLOSING:I = 0x1

.field public static final OPENED:I = 0x0

.field public static final QUALITY_MENU:I = 0x2

.field public static final SCENE_MENU:I = 0x3

.field public static final SETTING_MENU:I = 0x0

.field public static final SWITCH_MENU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PopupMenu"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field private m_Anchor:Landroid/view/View;

.field private final m_CloseEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_Context:Landroid/content/Context;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private m_Height:I

.field private m_Menu:Lcom/htc/widget/PopupBubbleWindow;

.field private m_MenuState:I

.field private m_NeedReopen:Z

.field private m_Orientation:I

.field private m_Type:I

.field private final m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

.field private m_View:Landroid/view/View;

.field private m_Width:I

.field private m_menuPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/camera/widget/PopupMenu$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/PopupMenu$1;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/widget/PopupMenu$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/PopupMenu$2;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    new-instance v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Request.ResetToDefault"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SameMenuItem.Selected"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.TimeOut"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "3DMode.Switched"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SelfTimer.Changed"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Resolution.Selected"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Mode.Switched"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_CloseEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Expanded"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Collapsed"

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_UpdateSizeEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    iput p2, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/widget/PopupMenu;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PopupMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/PopupMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/widget/PopupMenu;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/widget/PopupMenu;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    :cond_0
    return-void
.end method

.method public getViewHeight()I
    .locals 4

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v2}, Lcom/htc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/widget/PopupMenu;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v1, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v2, Lcom/android/camera/widget/IPopupMenuView;

    invoke-interface {v2}, Lcom/android/camera/widget/IPopupMenuView;->getViewHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/widget/PopupMenu;->m_menuPadding:I

    add-int/2addr v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupMenu$3;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupMenu$3;-><init>(Lcom/android/camera/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Menu.Opening"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    return-void
.end method

.method public setMenuSize(II)V
    .locals 0

    iput p2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    return-void
.end method

.method public setMenuSizeByType(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    return-void
.end method

.method public setMenuSizeByType(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_Context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_5

    :cond_1
    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v6, v0}, Lcom/android/camera/widget/PopupMenu;->setMenuSize(II)V

    goto :goto_0

    :pswitch_0
    const v7, 0x7f0b0028

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0b0029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v1

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :cond_2
    move v0, v3

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x2

    const v7, 0x7f0b002d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_1

    :pswitch_2
    const v7, 0x7f0b0034

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0b0035

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    if-le v3, v1, :cond_3

    move v0, v1

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v3

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :pswitch_3
    const v7, 0x7f0b0030

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0b0031

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v3

    if-le v3, v1, :cond_4

    move v0, v1

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_4
    move v0, v3

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_4
    const v7, 0x7f0b002a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b002b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    if-le v4, v2, :cond_6

    move v6, v2

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    move v6, v4

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SettingsView;->getListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :pswitch_5
    const v7, 0x7f0b002e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v6, -0x2

    goto/16 :goto_1

    :pswitch_6
    const v7, 0x7f0b0036

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b0037

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    if-le v4, v2, :cond_7

    move v6, v2

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    move v6, v4

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/ResolutionView;

    invoke-virtual {v7}, Lcom/android/camera/widget/ResolutionView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :pswitch_7
    const v7, 0x7f0b0032

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b0033

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->getViewHeight()I

    move-result v4

    if-le v4, v2, :cond_8

    move v6, v2

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    move v6, v4

    iget-object v7, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    check-cast v7, Lcom/android/camera/widget/SceneListView;

    invoke-virtual {v7}, Lcom/android/camera/widget/SceneListView;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setOrientation(II)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_MenuState:I

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->close()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toggle(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu;->m_Anchor:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Container:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupMenu;->m_View:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->open()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->close()V

    goto :goto_0
.end method

.method public updatePopMenuSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Orientation:I

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Type:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/PopupMenu;->setMenuSizeByType(II)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupMenu;->m_Width:I

    iget v2, p0, Lcom/android/camera/widget/PopupMenu;->m_Height:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->update(II)V

    :cond_0
    return-void
.end method
