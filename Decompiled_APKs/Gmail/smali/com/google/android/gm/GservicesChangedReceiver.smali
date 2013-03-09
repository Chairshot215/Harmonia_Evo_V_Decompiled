.class public Lcom/google/android/gm/GservicesChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GservicesChangedReceiver.java"


# static fields
.field private static final sComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.GservicesChangedReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GservicesChangedReceiver;->sComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static disableReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    .local v0, pm:Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/google/android/gm/GservicesChangedReceiver;->sComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 37
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    const-string v0, "Gmail"

    const-string v1, "Received intent %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    const-class v0, Lcom/google/android/gm/GoogleMailSwitchService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    return-void
.end method
