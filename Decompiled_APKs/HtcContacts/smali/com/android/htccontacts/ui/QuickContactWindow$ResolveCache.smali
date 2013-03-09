.class Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1357
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    .line 1358
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1359
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1501
    return-void
.end method

.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1431
    iget-object v9, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v10, 0x1

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1433
    .local v2, foundResolve:Landroid/content/pm/ResolveInfo;
    iget v9, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    move v1, v7

    .line 1436
    .local v1, foundDisambig:Z
    :goto_0
    if-nez v1, :cond_1

    .line 1456
    .end local v2           #foundResolve:Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .end local v1           #foundDisambig:Z
    .restart local v2       #foundResolve:Landroid/content/pm/ResolveInfo;
    :cond_0
    move v1, v8

    .line 1433
    goto :goto_0

    .line 1442
    .restart local v1       #foundDisambig:Z
    :cond_1
    const/4 v0, 0x0

    .line 1443
    .local v0, firstSystem:Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1444
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v6, v7

    .line 1446
    .local v6, isSystem:Z
    :goto_3
    invoke-static {}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$700()Ljava/util/HashSet;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1451
    .local v5, isPrefer:Z
    if-eqz v5, :cond_4

    move-object v2, v4

    goto :goto_1

    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_3
    move v6, v8

    .line 1444
    goto :goto_3

    .line 1452
    .restart local v5       #isPrefer:Z
    .restart local v6       #isSystem:Z
    :cond_4
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 1456
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_5
    if-eqz v0, :cond_6

    .end local v0           #firstSystem:Landroid/content/pm/ResolveInfo;
    :goto_4
    move-object v2, v0

    goto :goto_1

    .restart local v0       #firstSystem:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    goto :goto_4
.end method

.method public getDescription(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "action"

    .prologue
    .line 1472
    invoke-interface {p1}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getHeader()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1473
    .local v0, actionHeader:Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 1474
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1479
    .end local v0           #actionHeader:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 1476
    .restart local v0       #actionHeader:Ljava/lang/CharSequence;
    :cond_0
    if-eqz v1, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    .locals 20
    .parameter "action"

    .prologue
    .line 1366
    invoke-interface/range {p1 .. p1}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 1367
    .local v13, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;

    .line 1368
    .local v6, entry:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 1417
    .end local v6           #entry:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    .local v7, entry:Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 1369
    .end local v7           #entry:Ljava/lang/Object;
    .restart local v6       #entry:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    :cond_0
    new-instance v6, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;

    .end local v6           #entry:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;-><init>(Lcom/android/htccontacts/ui/QuickContactWindow$1;)V

    .line 1371
    .restart local v6       #entry:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
    invoke-interface/range {p1 .. p1}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1372
    .local v11, intent:Landroid/content/Intent;
    if-eqz v11, :cond_5

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/high16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 1377
    .local v12, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 1378
    .local v3, bestResolve:Landroid/content/pm/ResolveInfo;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    .line 1379
    .local v16, size:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1380
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #bestResolve:Landroid/content/pm/ResolveInfo;
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1385
    .restart local v3       #bestResolve:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 1387
    const/4 v8, 0x0

    .line 1388
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1389
    .local v15, pkgName:Ljava/lang/String;
    if-nez v15, :cond_2

    .line 1390
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1391
    .local v4, ci:Landroid/content/pm/ComponentInfo;
    :goto_2
    iget-object v15, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 1394
    .end local v4           #ci:Landroid/content/pm/ComponentInfo;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1395
    .local v14, packageRes:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1397
    .local v10, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 1398
    invoke-static {}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$500()I

    move-result v17

    invoke-static {}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$600()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1401
    :cond_3
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v14, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    move-object v8, v9

    .line 1406
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v14           #packageRes:Landroid/content/res/Resources;
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    :goto_3
    if-nez v8, :cond_4

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1409
    :cond_4
    iput-object v3, v6, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 1411
    iput-object v8, v6, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->label:Ljava/lang/String;

    .line 1416
    .end local v3           #bestResolve:Landroid/content/pm/ResolveInfo;
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v16           #size:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 1417
    .restart local v7       #entry:Ljava/lang/Object;
    goto/16 :goto_0

    .line 1381
    .end local v7           #entry:Ljava/lang/Object;
    .restart local v3       #bestResolve:Landroid/content/pm/ResolveInfo;
    .restart local v12       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #size:I
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 1382
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    goto/16 :goto_1

    .line 1390
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v15       #pkgName:Ljava/lang/String;
    :cond_7
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_2

    .line 1403
    :catch_0
    move-exception v5

    .line 1404
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "QuickContactWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to load image - package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", back to the original way..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public getIcon(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "action"

    .prologue
    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v1

    iget-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1492
    .local v0, iconRef:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #iconRef:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method public getLabel(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 1496
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->label:Ljava/lang/String;

    return-object v0
.end method

.method public hasResolve(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 1464
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getEntry(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
