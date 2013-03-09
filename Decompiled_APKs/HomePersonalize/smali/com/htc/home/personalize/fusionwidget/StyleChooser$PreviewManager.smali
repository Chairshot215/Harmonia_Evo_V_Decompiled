.class final Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;
.super Ljava/lang/Object;
.source "StyleChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreviewManager"
.end annotation


# instance fields
.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreviewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "packageManager"

    .prologue
    .line 787
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;->mPreviewMap:Ljava/util/Map;

    .line 790
    return-void
.end method


# virtual methods
.method getPreviewDrawable(JLcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "id"
    .parameter "s"

    .prologue
    .line 794
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;->mPreviewMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 796
    .local v3, previewRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 798
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 800
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 803
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_2

    .line 806
    :try_start_0
    iget v5, p3, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 807
    invoke-virtual {p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 809
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPreviewRes()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 814
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 816
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$PreviewManager;->mPreviewMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_2
    :goto_1
    return-object v0

    .line 810
    :cond_3
    iget v5, p3, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    if-nez v5, :cond_1

    .line 811
    invoke-virtual {p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPreviewImage()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 820
    const/4 v0, 0x0

    .line 831
    goto :goto_1

    .line 821
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 822
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewDrawable("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - RuntimeException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 824
    const/4 v0, 0x0

    .line 831
    goto :goto_1

    .line 825
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 826
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 827
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewDrawable("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 830
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
