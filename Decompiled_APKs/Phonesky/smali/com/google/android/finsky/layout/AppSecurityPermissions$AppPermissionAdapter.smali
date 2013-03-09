.class Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPermissionAdapter"
.end annotation


# instance fields
.field private final mDangerousList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNewDangerousPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewNormalPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/util/List;)V
    .locals 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    .line 289
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    .line 292
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    .line 295
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    .line 298
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    .line 304
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    .line 315
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 317
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->loadLocalAssetPermissions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 320
    .local v0, allLocalPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 321
    .local v9, permission:Landroid/content/pm/PermissionInfo;
    invoke-direct {p0, v9}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 323
    sget-boolean v11, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 324
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not displayable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :cond_1
    const/4 v4, 0x0

    .line 330
    .local v4, group:Landroid/content/pm/PermissionGroupInfo;
    :try_start_0
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 334
    :goto_1
    if-nez v4, :cond_3

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f070195

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, groupLabel:Ljava/lang/String;
    :goto_2
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, label:Ljava/lang/String;
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 339
    .local v2, descriptionSeq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, description:Ljava/lang/String;
    :goto_3
    new-instance v10, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    invoke-direct {v10, p1, v7, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v10, uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    iget v11, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 343
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 344
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_2
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    if-eqz v0, :cond_0

    iget-object v11, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 349
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 331
    .end local v1           #description:Ljava/lang/String;
    .end local v2           #descriptionSeq:Ljava/lang/CharSequence;
    .end local v5           #groupLabel:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :catch_0
    move-exception v3

    .line 332
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid group name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 334
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 339
    .restart local v2       #descriptionSeq:Ljava/lang/CharSequence;
    .restart local v5       #groupLabel:Ljava/lang/String;
    .restart local v7       #label:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 353
    .restart local v1       #description:Ljava/lang/String;
    .restart local v10       #uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :cond_5
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 354
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_6
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    if-eqz v0, :cond_0

    iget-object v11, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 359
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 365
    .end local v1           #description:Ljava/lang/String;
    .end local v2           #descriptionSeq:Ljava/lang/CharSequence;
    .end local v4           #group:Landroid/content/pm/PermissionGroupInfo;
    .end local v5           #groupLabel:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    .end local v9           #permission:Landroid/content/pm/PermissionInfo;
    .end local v10           #uiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :cond_7
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    iget-object v13, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-direct {p0, v11, v12, v13}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 366
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$500()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 368
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 369
    .local v8, normalList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;>;"
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    invoke-direct {p0, v11, v12, v8}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    .line 370
    invoke-static {}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$500()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 377
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    iget-object v12, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    iget-object v11, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->containsDangerousNewPermissions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, permissionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;>;>;"
    .local p2, newPermissions:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;>;"
    .local p3, permissionsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 392
    .local v5, group:Ljava/lang/String;
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 393
    .local v15, unchangedJoiner:Landroid/text/SpannableStringBuilder;
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 394
    .local v13, newJoiner:Landroid/text/SpannableStringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v4, descriptionBuilder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 396
    .local v6, hasAnyNew:Z
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    .line 397
    .local v14, permissionUiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 398
    .local v7, hasNew:Z
    if-eqz v7, :cond_3

    move-object v10, v13

    .line 399
    .local v10, joiner:Landroid/text/SpannableStringBuilder;
    :goto_2
    or-int/2addr v6, v7

    .line 401
    iget-object v11, v14, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->label:Ljava/lang/String;

    .line 402
    .local v11, label:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 406
    iget-object v3, v14, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->description:Ljava/lang/String;

    .line 407
    .local v3, description:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_1

    .line 408
    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 410
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, capitalized:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    if-nez v16, :cond_4

    .line 413
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 419
    const-string v16, "<br><br>"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_2
    const-string v16, "<b>"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0701ec

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :goto_4
    const-string v16, "</b><br><br>"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v2           #capitalized:Ljava/lang/String;
    .end local v3           #description:Ljava/lang/String;
    .end local v10           #joiner:Landroid/text/SpannableStringBuilder;
    .end local v11           #label:Ljava/lang/String;
    :cond_3
    move-object v10, v15

    .line 398
    goto/16 :goto_2

    .line 415
    .restart local v2       #capitalized:Ljava/lang/String;
    .restart local v3       #description:Ljava/lang/String;
    .restart local v10       #joiner:Landroid/text/SpannableStringBuilder;
    .restart local v11       #label:Ljava/lang/String;
    :cond_4
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 426
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 431
    .end local v2           #capitalized:Ljava/lang/String;
    .end local v3           #description:Ljava/lang/String;
    .end local v7           #hasNew:Z
    .end local v10           #joiner:Landroid/text/SpannableStringBuilder;
    .end local v11           #label:Ljava/lang/String;
    .end local v14           #permissionUiInfo:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
    :cond_6
    new-instance v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {v12}, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;-><init>()V

    .line 432
    .local v12, newEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
    iput-object v5, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    .line 433
    iput-object v15, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    .line 434
    iput-object v13, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    .line 435
    iput-object v4, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->detailedDescription:Ljava/lang/CharSequence;

    .line 436
    iput-boolean v6, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->hasNewPermission:Z

    .line 437
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 439
    .end local v4           #descriptionBuilder:Ljava/lang/StringBuilder;
    .end local v5           #group:Ljava/lang/String;
    .end local v6           #hasAnyNew:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #newEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
    .end local v13           #newJoiner:Landroid/text/SpannableStringBuilder;
    .end local v15           #unchangedJoiner:Landroid/text/SpannableStringBuilder;
    :cond_7
    return-void
.end method

.method private containsDangerousNewPermissions()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "context"

    .prologue
    .line 491
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$600(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 494
    :goto_0
    return-object v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;
    .locals 12
    .parameter "parent"
    .parameter "detailsEntry"

    .prologue
    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 525
    iget-object v8, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040083

    invoke-virtual {v8, v9, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 526
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0800af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 527
    .local v3, headerView:Landroid/widget/TextView;
    const v8, 0x7f080150

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 528
    .local v4, newContentView:Landroid/widget/TextView;
    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 529
    .local v1, contentView:Landroid/widget/TextView;
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 531
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    :goto_0
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 538
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    :goto_1
    const v8, 0x7f08014f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;

    invoke-direct {v9, p0, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    const v8, 0x7f080151

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 560
    return-object v7

    .line 533
    :cond_0
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v8, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 542
    .local v6, resources:Landroid/content/res/Resources;
    const v8, 0x7f0a0012

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    const v8, 0x7f0701ec

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, fullContents:Ljava/lang/String;
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 546
    .local v5, permIndex:I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 547
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e0028

    invoke-direct {v8, v9, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v9, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v0, v8, v5, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 549
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400cb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 566
    .local v0, expander:Landroid/widget/TextView;
    new-instance v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->configureExpander(Landroid/widget/TextView;)V

    .line 578
    return-object v0
.end method

.method private getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 509
    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 511
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 513
    :pswitch_1
    move v0, p2

    .line 514
    .local v0, tweakedPosition:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 515
    add-int/lit8 v0, v0, -0x1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 519
    .end local v0           #tweakedPosition:I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 503
    const/4 v0, 0x2

    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "pInfo"

    .prologue
    const/4 v0, 0x1

    .line 382
    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadLocalAssetPermissions(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 476
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    .line 477
    const/4 v3, 0x0

    .line 486
    :cond_0
    return-object v3

    .line 479
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v3, oldPermissions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 481
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 482
    .local v5, permission:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected configureExpander(Landroid/widget/TextView;)V
    .locals 4
    .parameter "expander"

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$900(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f020090

    .line 584
    .local v0, arrowId:I
    :goto_0
    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 585
    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$900(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f07011b

    .line 586
    .local v1, textId:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 587
    return-void

    .line 582
    .end local v0           #arrowId:I
    .end local v1           #textId:I
    :cond_0
    const v0, 0x7f020094

    goto :goto_0

    .line 585
    .restart local v0       #arrowId:I
    :cond_1
    const v1, 0x7f07011c

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 446
    const/4 v0, 0x0

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 450
    .local v0, total:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
