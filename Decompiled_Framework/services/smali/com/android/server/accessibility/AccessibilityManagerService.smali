.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_SET_SERVICE_INFO:I = 0xa

.field private static final FUNCTION_REGISTER_EVENT_LISTENER:Ljava/lang/String; = "registerEventListener"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final OWN_PROCESS_ID:I

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledServicesForFeedbackTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandledFeedbackTypes:I

.field private mHandler:Landroid/os/Handler;

.field private mHasInputFilter:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAccessibilityEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowIdToWindowTokenMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerSettingsContentObservers()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyEventListenerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(I)V

    return-void
.end method

.method static synthetic access$1208()I
    .locals 2

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsTouchExplorationEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->handleAccessibilityEnabledSettingChangedLocked()V

    return-void
.end method

.method private canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_0

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int v5, p3, v1

    if-ne v5, v1, :cond_3

    const/16 v5, 0x10

    if-ne v1, v5, :cond_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getState()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private handleAccessibilityEnabledSettingChangedLocked()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V

    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked()V

    goto :goto_1
.end method

.method private manageServicesLocked()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAutomationService()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->populateEnabledServicesLocked(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private notifyAccessibilityServiceDelayedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    shl-int/lit8 v5, v5, 0x10

    or-int v4, v0, v5

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServiceDelayedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    return-void
.end method

.method private notifyEventListenerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 6

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_0

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    invoke-interface {v1, v0}, Landroid/accessibilityservice/IEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private populateAccessibilityServiceListLocked()V
    .locals 10

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x84

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    :try_start_0
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method private populateEnabledServicesLocked(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerPackageChangeAndBootCompletedBroadcastReceiver()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSettingsContentObservers()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v0, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "touch_exploration_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "enabled_accessibility_services"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$5;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeAccessibilityInteractionConnectionLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private sendStateToClientsLocked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getState()I

    move-result v3

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v4, v3}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method private tryAddServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->linkToOwnDeath()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private tryRemoveServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unlinkToOwnDeath()V

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->dispose()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilterLocked()V

    goto :goto_0
.end method

.method private unbindAllServicesLocked()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unbindAutomationService()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateInputFilterLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    goto :goto_0
.end method

.method private updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)I"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    if-eqz v6, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v0, v5, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    :cond_0
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bind()Z

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_1

    :cond_4
    return v3
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    move-object v1, p1

    move-object v0, p2

    :try_start_0
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;)V

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->linkToDeath()V

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5

    return v2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    move-object v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$6;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;)V

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getState()I

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v2, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnabledServicesForFeedbackTempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :cond_0
    if-eqz p1, :cond_2

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v8

    shl-int v0, v6, v8

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr p1, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v7

    return-object v2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interrupt()V
    .locals 8

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    invoke-interface {v4}, Landroid/accessibilityservice/IEventListener;->onInterrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error during sending interrupt request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public registerEventListener(Landroid/accessibilityservice/IEventListener;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v7, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string v8, "registerEventListener"

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "foo.bar"

    const-string v7, "AutomationAccessibilityService"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->unbind()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    if-nez v6, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V

    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v6, -0x1

    iput v6, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const/16 v6, 0x10

    iput v6, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {v5, p0, v1, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    invoke-interface {p1}, Landroid/accessibilityservice/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToWindowTokenMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowIdToInteractionConnectionWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(I)V

    monitor-exit v5

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateRetrievalAllowingWindowAndEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHandledFeedbackTypes:I

    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-eq v2, v3, :cond_1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
