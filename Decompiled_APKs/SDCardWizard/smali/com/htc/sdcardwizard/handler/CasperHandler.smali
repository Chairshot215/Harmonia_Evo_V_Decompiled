.class public abstract Lcom/htc/sdcardwizard/handler/CasperHandler;
.super Lcom/htc/sdcardwizard/handler/SDCardHandler;
.source "CasperHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LSCW/CasperHandler"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V
    .locals 0
    .parameter "owner"
    .parameter "iconGetter"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/SDCardHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 49
    return-void
.end method


# virtual methods
.method public abstract deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
.end method

.method protected abstract getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
.end method

.method public abstract getDeleteButtonCaptionId()I
.end method

.method public abstract getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
.end method

.method public final getSelectAllCaption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getSelectAllCaptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSelectAllCaptionId()I
.end method

.method public abstract getSelectAllIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTitleId()I
.end method

.method public abstract moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
.end method

.method public final showDeleteScreen(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-class v3, Lcom/htc/sdcardwizard/SDCardItemsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/CasperHandler;->getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sdcardwizard/handler/CasperHandler;->putCategoryID(Landroid/content/Intent;Lcom/htc/sdcardwizard/handler/CategoryID;)V

    .line 41
    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LSCW/CasperHandler"

    const-string v3, "Could not start activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
