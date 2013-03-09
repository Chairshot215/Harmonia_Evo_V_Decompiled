.class abstract Lcom/htc/sdcardwizard/handler/MediatorHandler;
.super Lcom/htc/sdcardwizard/handler/SDCardHandler;
.source "MediatorHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSCW/MediatorHandler"


# instance fields
.field private final infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "iconGetter"
    .parameter "infoUri"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/SDCardHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 34
    new-instance v0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;

    invoke-direct {v0, p1, p3}, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/MediatorHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    .line 35
    return-void
.end method


# virtual methods
.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 4

    .prologue
    .line 15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/MediatorHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    invoke-interface {v0}, Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;->get()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    goto :goto_0
.end method

.method protected abstract getDeleteIntent()Landroid/content/Intent;
.end method

.method public showDeleteScreen(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/MediatorHandler;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v1

    .line 26
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LSCW/MediatorHandler"

    const-string v3, "Could not start activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
