.class public Lcom/google/android/gsf/loginservice/ServicesWatcher;
.super Landroid/content/BroadcastReceiver;
.source "ServicesWatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/loginservice/ServicesWatcher;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/ServicesWatcher;->updatePackages(Landroid/content/Context;)V

    return-void
.end method

.method private updatePackages(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 65
    .local v8, mManager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "google_services:"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 67
    .local v11, servicesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 69
    .local v9, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 73
    .local v12, value:Ljava/lang/String;
    const-string v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 74
    .local v6, idx:I
    const/4 v13, -0x1

    if-ne v6, v13, :cond_1

    .line 75
    const-string v13, "GoogleLoginService.ServicesWatcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received bad service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; ignoring"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "google_services:"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 81
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, label:Ljava/lang/String;
    const-string v13, "||"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, description:Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    .local v2, existing:Landroid/content/pm/PermissionInfo;
    const/4 v4, 0x0

    .line 86
    .local v4, existingLabel:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 89
    .local v3, existingDescription:Ljava/lang/CharSequence;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v8, v9, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v8}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v8}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 116
    :goto_1
    if-eqz v2, :cond_2

    iget v13, v2, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v13, :cond_0

    if-eqz v4, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 123
    :cond_2
    new-instance v10, Landroid/content/pm/PermissionInfo;

    invoke-direct {v10}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 124
    .local v10, pi:Landroid/content/pm/PermissionInfo;
    iput-object v9, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 125
    const-string v13, "android.permission-group.ACCOUNTS"

    iput-object v13, v10, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 126
    iput-object v7, v10, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 127
    iput-object v0, v10, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    goto/16 :goto_0

    .line 132
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #existing:Landroid/content/pm/PermissionInfo;
    .end local v3           #existingDescription:Ljava/lang/CharSequence;
    .end local v4           #existingLabel:Ljava/lang/CharSequence;
    .end local v6           #idx:I
    .end local v7           #label:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #pi:Landroid/content/pm/PermissionInfo;
    .end local v12           #value:Ljava/lang/String;
    :cond_3
    return-void

    .line 92
    .restart local v0       #description:Ljava/lang/String;
    .restart local v1       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #existing:Landroid/content/pm/PermissionInfo;
    .restart local v3       #existingDescription:Ljava/lang/CharSequence;
    .restart local v4       #existingLabel:Ljava/lang/CharSequence;
    .restart local v6       #idx:I
    .restart local v7       #label:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/ServicesWatcher;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 53
    .local v0, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v1, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;

    const-string v2, "ServiceWatcherUpdatePackages"

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;-><init>(Lcom/google/android/gsf/loginservice/ServicesWatcher;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/ServicesWatcher$1;->start()V

    .line 59
    return-void
.end method
