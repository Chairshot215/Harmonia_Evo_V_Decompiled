.class public Lcom/google/android/finsky/receivers/UpdateWidgetsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateWidgetsReceiver.java"


# static fields
.field private static COMPONENTS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/vending/MarketWidgetProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/receivers/UpdateWidgetsReceiver;->COMPONENTS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 30
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/google/android/finsky/receivers/UpdateWidgetsReceiver;->COMPONENTS:[Ljava/lang/Class;

    .local v2, arr$:[Ljava/lang/Class;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 31
    .local v3, component:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v4, componentName:Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 34
    .local v0, appWidgetIds:[I
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v7, updateIntent:Landroid/content/Intent;
    const-string v8, "appWidgetIds"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 36
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    const-string v8, "Updated %d %s widgets (%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v0           #appWidgetIds:[I
    .end local v3           #component:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #componentName:Landroid/content/ComponentName;
    .end local v7           #updateIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
