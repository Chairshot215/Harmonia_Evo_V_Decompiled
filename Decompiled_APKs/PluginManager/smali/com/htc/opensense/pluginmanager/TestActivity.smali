.class public Lcom/htc/opensense/pluginmanager/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# static fields
.field static final FEATURE_AUTHORITY:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "content://com.htc.opensense.plugin/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/pluginmanager/TestActivity;->FEATURE_AUTHORITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/opensense/pluginmanager/RegisterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/pluginmanager/TestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/TestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/pluginmanager/TestActivity;->FEATURE_AUTHORITY:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    return-void
.end method
