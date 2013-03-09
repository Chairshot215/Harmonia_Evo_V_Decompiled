.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    }
.end annotation


# static fields
.field private static final CLASS_NOT_FOUND:Ljava/lang/String; = "Error retrieving class information"

.field private static final COMMAND_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_ACCESSIBILITY_EVENT:Ljava/lang/String; = "No accessibility event has occured yet"

.field private static final NO_CONNECTION:Ljava/lang/String; = "Failed to connect to AccessibilityService, try restarting Monkey"

.field private static final NO_ID:I = -0x1

.field private static final NO_NODE:Ljava/lang/String; = "Node with given ID does not exist"

.field private static final REMOTE_ERROR:Ljava/lang/String; = "Unable to retrieve application info from PackageManager"

.field private static final TAG:Ljava/lang/String; = "MonkeyViews"

.field private static final TIMEOUT_REGISTER_EVENT_LISTENER:I = 0x7d0

.field private static sClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static sConnectionId:I

.field private static volatile sLastAccessibilityEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sPm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sLastAccessibilityEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getlocation"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "gettext"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getclass"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getchecked"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getenabled"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getselected"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "setselected"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getfocused"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "setfocused"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getparent"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getchildren"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getaccessibilityids"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sLastAccessibilityEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/pm/IPackageManager;
    .locals 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    return-object v0
.end method

.method private static getConnection()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, -0x1

    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-eq v8, v12, :cond_0

    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    :goto_0
    return v8

    :cond_0
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetworkViews$1;

    invoke-direct {v4}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$1;-><init>()V

    const-string v8, "accessibility"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-class v9, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v9

    :try_start_0
    invoke-interface {v5, v4}, Landroid/view/accessibility/IAccessibilityManager;->registerEventListener(Landroid/accessibilityservice/IEventListener;)V

    :goto_1
    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-eq v8, v12, :cond_1

    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v0

    const-wide/16 v10, 0x7d0

    sub-long v6, v10, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_3

    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-ne v8, v12, :cond_2

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "Cound not register IEventListener."

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_2
    const-class v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private static getId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v5

    return v5

    :catch_0
    move-exception v1

    new-instance v5, Lcom/android/commands/monkey/MonkeyViewException;

    const-string v6, "Unable to retrieve application info from PackageManager"

    invoke-direct {v5, v6}, Lcom/android/commands/monkey/MonkeyViewException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v1

    new-instance v5, Lcom/android/commands/monkey/MonkeyViewException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/commands/monkey/MonkeyViewException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_2
    move-exception v1

    new-instance v5, Lcom/android/commands/monkey/MonkeyViewException;

    const-string v6, "No such node with given id"

    invoke-direct {v5, v6}, Lcom/android/commands/monkey/MonkeyViewException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_3
    move-exception v1

    new-instance v5, Lcom/android/commands/monkey/MonkeyViewException;

    const-string v6, "Private identifier"

    invoke-direct {v5, v6}, Lcom/android/commands/monkey/MonkeyViewException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_4
    move-exception v1

    new-instance v5, Lcom/android/commands/monkey/MonkeyViewException;

    const-string v6, "No node with given id exists onscreen"

    invoke-direct {v5, v6}, Lcom/android/commands/monkey/MonkeyViewException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string v2, "/data/local/tmp"

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, p1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".R$id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private static getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    sget v3, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(III)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    return-object v2
.end method

.method private static getNodeByViewId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    sget v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByViewIdInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method private static getPositionFromNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setup()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getConnection()I

    move-result v1

    sput v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MonkeyViews"

    const-string v2, "Remote Exception encountered when attempting to connect to Accessibility Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
