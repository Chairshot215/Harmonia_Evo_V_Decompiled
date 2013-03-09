.class public Lcom/android/browser/Browser;
.super Landroid/app/Application;
.source "Browser.java"


# static fields
.field static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field static final LOGV_ENABLED:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 42
    invoke-virtual {p0}, Lcom/android/browser/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->initialize(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/browser/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/Preloader;->initialize(Landroid/content/Context;)V

    .line 44
    return-void
.end method
