.class public Lcom/android/camera/widget/SceneListView;
.super Landroid/widget/FrameLayout;
.source "SceneListView.java"

# interfaces
.implements Lcom/android/camera/widget/IPopupMenuView;


# instance fields
.field private mMainList:Landroid/widget/ListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

.field private m_Context:Landroid/content/Context;

.field private final m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_EffectManager:Lcom/android/camera/effect/EffectManager;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private m_MenuItemHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/effect/EffectList;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/SceneListView;->m_MenuItemHeight:I

    new-instance v0, Lcom/android/camera/widget/SceneListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SceneListView$1;-><init>(Lcom/android/camera/widget/SceneListView;)V

    iput-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

    iput-object p1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EventManager:Lcom/android/camera/EventManager;

    iput-object p2, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {p0}, Lcom/android/camera/widget/SceneListView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/SceneMenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SceneListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/SceneListView;->m_MenuItemHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public initialize()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SceneListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SceneListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/SceneListView;->m_MenuItemHeight:I

    new-instance v2, Lcom/android/camera/effect/SceneMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-direct {v2, v1, v3}, Lcom/android/camera/effect/SceneMenuAdapter;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectList;)V

    iput-object v2, p0, Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/camera/widget/SceneListView$2;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SceneListView$2;-><init>(Lcom/android/camera/widget/SceneListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/camera/widget/SceneListView$3;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SceneListView$3;-><init>(Lcom/android/camera/widget/SceneListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Effect.Applied"

    iget-object v3, p0, Lcom/android/camera/widget/SceneListView;->m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method
