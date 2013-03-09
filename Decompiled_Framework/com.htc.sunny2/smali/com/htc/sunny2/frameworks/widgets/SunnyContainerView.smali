.class public Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.super Landroid/widget/RelativeLayout;
.source "SunnyContainerView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IContentHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActivityLifeCycle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayStyle;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field protected mAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

.field protected mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

.field protected mForegroundAdapter:Ljava/lang/String;

.field protected mForegroundScene:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mLifeCycle:I

.field protected mMediaState:I

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field protected mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRoot:Landroid/view/ViewGroup;

.field protected mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

.field protected mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

.field protected mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

.field protected mScenes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    iput v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->registerForContextMenu(Z)V

    return-void
.end method

.method private doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V
    .locals 6

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    new-instance v1, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$sceneChangeListener;-><init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->refreshRenderOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][initialize]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    new-instance v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-direct {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;-><init>()V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-le v1, v2, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SunnyContainerView][isSceneAdapterShared]: shared adapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private registerForContextMenu(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method private setRenderResume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->onPause()V

    goto :goto_0
.end method


# virtual methods
.method public activityIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public activityLifeCycle()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    return v0
.end method

.method public activityReference()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public activityRoot()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableSunnyEnvTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][enableSunnyEnvTouchEvent]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->enableSunnyEnvTouchEvent(Z)V

    return-void
.end method

.method public getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public gotoPreviousScene()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: begin"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: missing scene factory..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: locked..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: cancelling..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no current scene..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_5

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: no previous scene..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoPreviousScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    goto/16 :goto_0
.end method

.method public gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 5

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: begin"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: missing scene factory skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: is foreground skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: something in progress skip..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: no existing scene "

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    invoke-interface {v2, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoScene]: fail to produce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setId(I)V

    invoke-interface {v1, p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureEnterScene()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnterScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    :cond_6
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][gotoScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->doSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][gotoScene]: end"

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isDisplayControlBusy()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public isSceneChangeLocked()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-nez v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeEnterLock()I

    move-result v2

    const/16 v3, 0x515

    if-eq v3, v2, :cond_1

    const/16 v3, 0x516

    if-ne v3, v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnyContainerView][isSceneChangeLocked]: locked..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public isSceneExist(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][onAttachedToWindow]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: begin..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: locked..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: remove all..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: end..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SunnyContainerView][onBackPressed]: cancelling..."

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->cancelSceneChange()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SunnyContainerView][onBackPressed]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableBroadcastReceiver()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    :cond_3
    :goto_1
    if-nez v1, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mMediaState:I

    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onCreate]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: begin.."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->unregisterBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->destroy()V

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->reset()V

    :cond_2
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onDestroy()V

    :cond_3
    iput-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onDestroy]: end"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onMessage(Landroid/os/Message;)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][onNewIntent]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ACTIVITY_NEW_INTENT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onNotifyAnimationBegin]:..."

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isHostScene()Z

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyContainerView][doSceneChange]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostPadding()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v1, :cond_0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v1

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    if-eq v1, v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v1

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareEnterFullscreenMode()V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareLeaveFullscreenMode()V

    goto :goto_1
.end method

.method public onNotifyAnimationCancel()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationCancel]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationEnd]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyAnimationReady()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][onNotifyAnimationReady]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAnimationReady()V

    return-void
.end method

.method public onNotifyErrorResult(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;->onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onPause]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPause()V

    :cond_0
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setRenderResume(Z)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onResume()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onTriggerErrorReport()V

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableHostCamera()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onStart]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnyContainerView][onStop]: "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onStop()V

    :cond_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->registerBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method public removeAllScene()Z
    .locals 12

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SunnyContainerView][removeAllScene]: something in progress..."

    invoke-static {v6, v7}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneInterrupt:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    sget-object v7, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    invoke-virtual {v6, v7, v10, v11}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: scene to remove: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneAdapterShared(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onDestroyAdapter()V

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: destroy adapter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: adapters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnyContainerView][removeAllScene]: scenes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundScene:Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mForegroundAdapter:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->set3DGlobalBackground(I)V

    move v0, v6

    goto/16 :goto_0
.end method

.method public removeScene(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeScene(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public removeScene(Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][removeScene]: removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: onSendToBackground... "

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendToBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SunnyContainerView][removeScene]: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    invoke-interface {v2, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mScenes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: removed... "

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: onUnbindAdapter... "

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-interface {v2, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureTo(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUnbindAdapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SunnyContainerView][removeScene]: onLeaveScene... "

    invoke-static {v4, v5}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onLeaveScene()V

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureLeaveScene()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLeaveScene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    :cond_0
    return-object v0
.end method

.method public set3DGlobalBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->set3DGlobalBackground(I)V

    :cond_0
    return-void
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setContentHost(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][setContentHost]: set parent..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayLevel(I)V

    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mDisplayManager:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneDisplayManager;->setDisplayStyle(I)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 3

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity1..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no adapter identity2..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mLifeCycle:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: content already destroyed..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->sceneChangeInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][setNewAdapter]: no scene change skip..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyContainerView][setNewAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mAdapters:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneChange:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto/16 :goto_0
.end method

.method public setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mSceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    return-void
.end method

.method public startScene(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnyContainerView][startScene]: end"

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sunnyContext()Lcom/htc/sunny2/SunnyContext;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mEnvironment:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;->unregisterBroadcastReceiver()V

    :cond_0
    return-void
.end method
