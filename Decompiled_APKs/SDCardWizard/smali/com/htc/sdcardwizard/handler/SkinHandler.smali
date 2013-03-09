.class final Lcom/htc/sdcardwizard/handler/SkinHandler;
.super Lcom/htc/sdcardwizard/handler/SDCardHandler;
.source "SkinHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.home.personalize"

.field private static final TAG:Ljava/lang/String; = "LSCW/SkinHandler"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 17
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.home.personalize"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/SDCardHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 10

    .prologue
    .line 26
    iget-object v8, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-static {v8}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPackageCursorInfoList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 27
    .local v7, skinInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 28
    .local v0, count:I
    const-wide/16 v4, 0x0

    .line 29
    .local v4, size:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/util/skin/SkinPackageCursorInfo;

    .line 30
    .local v6, skinInfo:Lcom/htc/util/skin/SkinPackageCursorInfo;
    invoke-virtual {v6}, Lcom/htc/util/skin/SkinPackageCursorInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 33
    goto :goto_0

    .line 34
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v6           #skinInfo:Lcom/htc/util/skin/SkinPackageCursorInfo;
    :cond_0
    new-instance v8, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-direct {v8, v0, v4, v5}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v8
.end method

.method public showDeleteScreen(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 40
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.ACTION_PERSONALIZE_SKIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "com.htc.skinpicker.EXTRA_FOCUSEDID"

    const-string v4, "delete_mode"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    iget-object v3, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v3, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSCW/SkinHandler"

    const-string v4, "Could not start activity"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
