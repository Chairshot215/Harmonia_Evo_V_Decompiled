.class public Lcom/android/camera/widget/SwitchItemListView;
.super Landroid/widget/FrameLayout;
.source "SwitchItemListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    }
.end annotation


# instance fields
.field private final CAMERA_SWITCH:I

.field private final ITEM_COUNT:I

.field private final MODE_SWITCH:I

.field private is2ndCam:Z

.field private isCameraMode:Z

.field private mMainList:Landroid/widget/ListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_Context:Landroid/content/Context;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SwitchingModeEventHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/widget/SwitchItemListView;->ITEM_COUNT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/SwitchItemListView;->MODE_SWITCH:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/SwitchItemListView;->CAMERA_SWITCH:I

    new-instance v0, Lcom/android/camera/widget/SwitchItemListView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SwitchItemListView$1;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    iput-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_SwitchingModeEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/widget/SwitchItemListView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/SwitchItemListView$2;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    iput-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItemListView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SwitchItemListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SwitchItemListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/widget/SwitchItemListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/SwitchItemListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z

    return v0
.end method

.method private updateStateForNewMode()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode(II)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateStateForNewMode(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z

    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z

    :goto_1
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/widget/SwitchItemListView;->isCameraMode:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/widget/SwitchItemListView;->is2ndCam:Z

    goto :goto_1
.end method


# virtual methods
.method public initialize()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_Context:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/HTCCamera;

    iput-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-direct {p0}, Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode()V

    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SwitchItemListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SwitchItemListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    iput-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/camera/widget/SwitchItemListView$3;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SwitchItemListView$3;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->mMainList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/camera/widget/SwitchItemListView$4;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SwitchItemListView$4;-><init>(Lcom/android/camera/widget/SwitchItemListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Mode.Switching"

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItemListView;->m_SwitchingModeEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "CameraActivity.PreviewStarted"

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItemListView;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method
