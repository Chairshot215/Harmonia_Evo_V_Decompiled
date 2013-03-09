.class public Lcom/htc/launcher/AppSharing;
.super Ljava/lang/Object;
.source "AppSharing.java"


# static fields
.field private static final APP_SHARING_ICON:Ljava/lang/String; = "launcher_share"

.field private static final APP_SHARING_PACKAGE:Ljava/lang/String; = "com.htc.appsharing"

.field private static final APP_SHARING_TEXT:Ljava/lang/String; = "launcher_share"

.field private static final LOG_TAG:Ljava/lang/String; = "Rosie_AppSharing"

.field public static localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/AppSharing;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIfExists(Landroid/content/Context;Landroid/view/Menu;III)V
    .locals 11
    .parameter "context"
    .parameter "menu"
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"

    .prologue
    .line 30
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.htc.appsharing.action.GET_SELECTION"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 35
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 43
    .local v4, pm:Landroid/content/pm/PackageManager;
    const-string v8, "com.htc.appsharing"

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 45
    .local v5, resources:Landroid/content/res/Resources;
    const-string v8, "launcher_share"

    const-string v9, "string"

    const-string v10, "com.htc.appsharing"

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 46
    .local v7, textResId:I
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, text:Ljava/lang/String;
    sget-boolean v8, Lcom/htc/launcher/AppSharing;->localLOGV:Z

    if-eqz v8, :cond_0

    const-string v8, "Rosie_AppSharing"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "text : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    invoke-interface {p1, p2, p3, p4, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x2080337

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v2           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resources:Landroid/content/res/Resources;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #textResId:I
    :cond_1
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v8, "Rosie_AppSharing"

    const-string v9, "resource not found : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v8, Lcom/htc/launcher/AppSharing;->localLOGV:Z

    if-eqz v8, :cond_1

    const-string v8, "Rosie_AppSharing"

    const-string v9, "app sharing not found : com.htc.appsharing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onItemSelected(Lcom/htc/launcher/Launcher;)V
    .locals 4
    .parameter "launcher"

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.appsharing.action.SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Rosie_AppSharing"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
