.class public final Lcom/android/camera/effect/EffectManager;
.super Lcom/android/camera/component/UIComponent;
.source "EffectManager.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Effect Manager"

.field private static final m_AllEffectClasses:[Ljava/lang/Class;


# instance fields
.field private final m_AllEffects:[Lcom/android/camera/effect/EffectBase;

.field private final m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

.field private final m_DefaultScene:Lcom/android/camera/effect/EffectBase;

.field private final m_EffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

.field private final m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_IsFlashDisabled:Z

.field private m_IsSelfTimerDisabled:Z

.field private m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

.field private m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

.field private m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

.field private final m_NewIntentEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ResetToDefaultEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SceneChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

.field private final m_SceneList:Lcom/android/camera/effect/EffectList;

.field private final m_SwitchingModeHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/camera/effect/NoneEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/camera/effect/DistortionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/camera/effect/VignetteEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/camera/effect/DepthOfFieldEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/camera/effect/DotsEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/camera/effect/VintageHighEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/camera/effect/VintageRedEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/camera/effect/VintageGreenEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/camera/effect/GrayscaleEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/camera/effect/SepiaEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/camera/effect/NegativeEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/camera/effect/SolarizeEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/camera/effect/PosterizeEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/camera/effect/AquaEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/camera/effect/AutoScene;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/camera/effect/PortraitScene;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/camera/effect/LandscapeScene;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/camera/effect/BurstScene;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/camera/effect/PanoramaScene;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/camera/effect/HdrScene;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/camera/effect/WhiteboardEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/camera/effect/CloseUpScene;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/camera/effect/LowlightScene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/effect/EffectManager;->m_AllEffectClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 14

    const-string v10, "Effect Manager"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, p1, v12}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v10, Lcom/android/camera/effect/EffectManager$1;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$1;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_EffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    new-instance v10, Lcom/android/camera/effect/EffectManager$2;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$2;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_SceneChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    new-instance v10, Lcom/android/camera/effect/EffectManager$3;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$3;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_SwitchingModeHandler:Lcom/android/camera/IEventHandler;

    new-instance v10, Lcom/android/camera/effect/EffectManager$4;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$4;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_NewIntentEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v10, Lcom/android/camera/effect/EffectManager$5;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$5;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v10, Lcom/android/camera/effect/EffectManager$6;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$6;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v10, Lcom/android/camera/effect/EffectManager$7;

    invoke-direct {v10, p0}, Lcom/android/camera/effect/EffectManager$7;-><init>(Lcom/android/camera/effect/EffectManager;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_ResetToDefaultEventHandler:Lcom/android/camera/IEventHandler;

    if-nez p1, :cond_0

    const-string v10, "cameraActivity"

    invoke-static {v10}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "cameraActivity is NULL"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v8, 0x9

    const/4 v6, 0x0

    :goto_0
    sget-object v10, Lcom/android/camera/effect/EffectManager;->m_AllEffectClasses:[Ljava/lang/Class;

    array-length v10, v10

    if-ge v6, v10, :cond_5

    sget-object v10, Lcom/android/camera/effect/EffectManager;->m_AllEffectClasses:[Ljava/lang/Class;

    aget-object v3, v10, v6

    :try_start_0
    const-string v10, "isSupportedInCurrentDevice"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/camera/HTCCamera;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    :cond_1
    const/4 v10, 0x1

    :try_start_1
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/android/camera/HTCCamera;

    aput-object v12, v10, v11

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v10, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No available constructor for class \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    iget-object v10, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot check availability of effect class \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    :try_start_2
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Create effect class \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v10, v2, Lcom/android/camera/effect/IEffect;

    if-eqz v10, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    instance-of v10, v2, Lcom/android/camera/effect/IScene;

    if-eqz v10, :cond_4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot categorize \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/camera/effect/EffectBase;

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:[Lcom/android/camera/effect/EffectBase;

    iget-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:[Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v10, Lcom/android/camera/effect/EffectList;

    invoke-direct {v10, p1, v4}, Lcom/android/camera/effect/EffectList;-><init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    iget-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    iget-object v11, p0, Lcom/android/camera/effect/EffectManager;->m_EffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    invoke-virtual {v10, v11}, Lcom/android/camera/effect/EffectList;->setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V

    new-instance v10, Lcom/android/camera/effect/EffectList;

    invoke-direct {v10, p1, v9}, Lcom/android/camera/effect/EffectList;-><init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v11, p0, Lcom/android/camera/effect/EffectManager;->m_SceneChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    invoke-virtual {v10, v11}, Lcom/android/camera/effect/EffectList;->setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/effect/EffectBase;

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/effect/EffectBase;

    iput-object v10, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/camera/effect/EffectManager;->reset(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/effect/EffectManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/EffectManager;->prepareEffectForNewMode(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectManager;->reset(Z)V

    return-void
.end method

.method private prepareEffectForNewMode(II)V
    .locals 9

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-nez p2, :cond_3

    move v2, v5

    :goto_0
    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    :goto_1
    if-eqz v3, :cond_0

    instance-of v6, v3, Lcom/android/camera/effect/NoneEffect;

    if-eqz v6, :cond_6

    :cond_0
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    :goto_2
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare effect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare scene : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, v5}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    :cond_2
    invoke-virtual {v3, v0, v5}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    invoke-virtual {v4, v1, v5}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    :goto_3
    iget-object v4, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_3
.end method

.method private reset(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    :cond_1
    return-void
.end method

.method private updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isFlashSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    goto :goto_0
.end method

.method private updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->isSelfTimerSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectManager;->m_IsSelfTimerDisabled:Z

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 6

    iget-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method public getAllEffects()[Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_AllEffects:[Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, [Lcom/android/camera/effect/EffectBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/EffectBase;

    check-cast v0, [Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public getCurrentEffect()Lcom/android/camera/effect/EffectBase;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    :goto_1
    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_1
.end method

.method public getCurrentScene()Lcom/android/camera/effect/EffectBase;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;

    :goto_1
    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getEffectList()Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method public getSceneList()Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "CameraActivity.NewIntent"

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_NewIntentEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Request.ResetToDefault"

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_ResetToDefaultEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Mode.Switching"

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager;->m_SwitchingModeHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method public setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/camera/effect/IEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an effect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCurrentEffect(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/EffectList;->getEffect(Ljava/lang/String;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;

    goto :goto_0
.end method

.method public setCurrentScene(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectManager;->threadAccessCheck()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/camera/effect/IScene;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a scene"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
