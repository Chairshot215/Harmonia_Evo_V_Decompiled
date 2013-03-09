.class public abstract Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;
.super Lcom/htc/sdcardwizard/handler/FileCasperHandler;
.source "NavigatorCategoriesHandler.java"


# static fields
.field private static final FILTER:Ljava/lang/String; = "."

.field protected static final LAPUTA_PKG_NAME:Ljava/lang/String; = "com.htc.laputa"

.field private static final TAG:Ljava/lang/String; = "LSCW/NavigatorCategoriesHandler"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V
    .locals 0
    .parameter "owner"
    .parameter "iconGetter"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 17
    return-void
.end method

.method private isLocationInUse()Z
    .locals 8

    .prologue
    .line 49
    const/4 v5, 0x0

    .line 51
    .local v5, result:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 52
    .local v3, manager:Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 53
    .local v4, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 54
    .local v2, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v6, "com.htc.laputa"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const/4 v5, 0x1

    .line 62
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #manager:Landroid/app/ActivityManager;
    .end local v4           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    return v5

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LSCW/NavigatorCategoriesHandler"

    const-string v7, "running processes checking error."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V

    return-void
.end method

.method public final getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;->isLocationInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f04001b

    return v0
.end method

.method protected getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "."

    return-object v0
.end method

.method public bridge synthetic getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
