.class public Lcom/android/phone/util/PackageResourceUtils;
.super Ljava/lang/Object;
.source "PackageResourceUtils.java"


# static fields
.field public static final DIALER_PACKAGE:Ljava/lang/String; = "com.android.htcdialer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveLayoutForPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "resName"

    .prologue
    .line 23
    const/4 v6, 0x0

    .line 26
    .local v6, view:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 28
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 29
    .local v5, res:Landroid/content/res/Resources;
    const/4 v7, 0x2

    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 31
    .local v3, packageContext:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isDockMode()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/phone/PhoneApp;->assetSwitcher(Landroid/content/res/Resources;Z)V

    .line 32
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 33
    .local v2, inflater:Landroid/view/LayoutInflater;
    const-string v7, "layout"

    invoke-virtual {v5, p2, v7, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    .local v1, id:I
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 40
    .end local v1           #id:I
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #packageContext:Landroid/content/Context;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "PackageResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static retrieveLayoutFromDialer(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 20
    const-string v0, "com.android.htcdialer"

    invoke-static {p0, v0, p1}, Lcom/android/phone/util/PackageResourceUtils;->retrieveLayoutForPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
