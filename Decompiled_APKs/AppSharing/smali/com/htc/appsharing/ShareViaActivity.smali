.class public Lcom/htc/appsharing/ShareViaActivity;
.super Landroid/app/Activity;
.source "ShareViaActivity.java"


# static fields
.field private static final EXTRA_APPICON:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPICON"

.field private static final EXTRA_APPICONURL:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPICONURL"

.field private static final EXTRA_APPNAME:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPNAME"

.field private static final EXTRA_APPTYPE:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPTYPE"

.field private static final EXTRA_PACKAGENAME:Ljava/lang/String; = "com.htc.appsharing.intent.extra.PACKAGENAME"

.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.ShareExActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 24
    const-string v0, "AppSharing.ShareExActivity"

    const-string v7, "+++onCreate"

    invoke-static {v0, v7}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/htc/appsharing/ShareViaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 30
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.htc.appsharing.intent.extra.APPNAME"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, appName:Ljava/lang/String;
    const-string v0, "com.htc.appsharing.intent.extra.PACKAGENAME"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, packageName:Ljava/lang/String;
    const-string v0, "com.htc.appsharing.intent.extra.APPTYPE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, appType:Ljava/lang/String;
    const-string v0, "com.htc.appsharing.intent.extra.APPICON"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 34
    .local v4, appIcon:Landroid/graphics/Bitmap;
    const-string v0, "com.htc.appsharing.intent.extra.APPICONURL"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, appIconUrl:Ljava/lang/String;
    move-object v0, p0

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/htc/appsharing/util/ShareUtilEx;->shareApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/htc/appsharing/ShareViaActivity;->finish()V

    .line 39
    const-string v0, "AppSharing.ShareExActivity"

    const-string v7, "---onCreate"

    invoke-static {v0, v7}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
