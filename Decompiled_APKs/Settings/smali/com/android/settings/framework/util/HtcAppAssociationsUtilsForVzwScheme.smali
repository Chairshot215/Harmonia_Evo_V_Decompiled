.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForVzwScheme.java"


# static fields
.field private static final LOGD:Z = true

.field private static final LOG_DEBUG:Z = false

.field private static final SPECIFIC_PACKAGENAME:Ljava/lang/String; = "com.gravitymobile.app.hornbill"

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtilsForVzwScheme (Settings)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vzw://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "context"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 122
    .local v0, bFind:Z
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.gravitymobile.app.hornbill"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 137
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 132
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v0, :cond_2

    .line 133
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object v3, v4

    goto :goto_0

    .line 137
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public queryActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 16
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v11, 0x0

    .line 44
    .local v11, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 47
    .local v10, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->getIntentList(Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 48
    const/4 v7, 0x0

    .line 112
    :goto_0
    return-object v7

    .line 51
    :cond_0
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v7, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 57
    .local v13, size:I
    :goto_1
    if-ge v2, v13, :cond_5

    .line 60
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 70
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 71
    .local v9, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 72
    .local v8, outputPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, bFind:Z
    const/4 v4, 0x0

    .line 75
    .local v4, j:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_4

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 81
    const/4 v5, 0x0

    .line 82
    .local v5, k:I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_1

    .line 85
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 88
    const/4 v1, 0x1

    .line 93
    :cond_1
    if-nez v1, :cond_2

    .line 94
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 58
    .end local v5           #k:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v1           #bFind:Z
    .end local v4           #j:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #outputPackageName:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_5
    new-instance v12, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 102
    .local v12, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
