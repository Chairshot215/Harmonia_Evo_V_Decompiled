.class Lcom/htc/home/personalize/WallpaperLivePicker$1;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;->loadLiveWallpapers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperLivePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperLivePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    const/4 v10, 0x1

    .line 587
    .end local p1
    .end local p2
    :goto_0
    return v10

    .line 535
    .restart local p1
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 536
    const/4 v10, -0x1

    goto :goto_0

    :cond_1
    move-object v10, p1

    .line 538
    check-cast v10, Landroid/app/WallpaperInfo;

    invoke-virtual {v10}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .local v2, liveWallpaper0:Ljava/lang/String;
    move-object v10, p2

    .line 539
    check-cast v10, Landroid/app/WallpaperInfo;

    invoke-virtual {v10}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, liveWallpaper1:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mMapDownloaded:Ljava/util/Map;
    invoke-static {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$100(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 543
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mMapDownloaded:Ljava/util/Map;
    invoke-static {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$100(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 544
    const/4 v4, 0x0

    .line 545
    .local v4, packageInfoArg0:Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 546
    .local v5, packageInfoArg1:Landroid/content/pm/PackageInfo;
    const-wide/16 v6, 0x0

    .line 547
    .local v6, time0:J
    const-wide/16 v8, 0x0

    .line 549
    .local v8, time1:J
    :try_start_0
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-virtual {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    check-cast p1, Landroid/app/WallpaperInfo;

    .end local p1
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 550
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    invoke-virtual {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    check-cast p2, Landroid/app/WallpaperInfo;

    .end local p2
    invoke-virtual {p2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 554
    :goto_1
    if-eqz v4, :cond_2

    .line 555
    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 557
    :cond_2
    if-eqz v5, :cond_3

    .line 558
    iget-wide v8, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 560
    :cond_3
    sub-long v10, v8, v6

    long-to-int v10, v10

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 564
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #packageInfoArg0:Landroid/content/pm/PackageInfo;
    .end local v5           #packageInfoArg1:Landroid/content/pm/PackageInfo;
    .end local v6           #time0:J
    .end local v8           #time1:J
    .restart local p1
    .restart local p2
    :cond_4
    const/4 v10, -0x1

    goto :goto_0

    .line 570
    :cond_5
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mMapDownloaded:Ljava/util/Map;
    invoke-static {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$100(Lcom/htc/home/personalize/WallpaperLivePicker;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 571
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 575
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSpecialWallpapers:[Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$200(Lcom/htc/home/personalize/WallpaperLivePicker;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-ge v1, v10, :cond_9

    .line 576
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSpecialWallpapers:[Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$200(Lcom/htc/home/personalize/WallpaperLivePicker;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 577
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 579
    :cond_7
    iget-object v10, p0, Lcom/htc/home/personalize/WallpaperLivePicker$1;->this$0:Lcom/htc/home/personalize/WallpaperLivePicker;

    #getter for: Lcom/htc/home/personalize/WallpaperLivePicker;->mSpecialWallpapers:[Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/home/personalize/WallpaperLivePicker;->access$200(Lcom/htc/home/personalize/WallpaperLivePicker;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 580
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 575
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 587
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0
.end method
