.class public Lcom/sprint/dsa/Dss;
.super Landroid/app/Application;
.source "Dss.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.sprint.dsa"

.field public static final TAG:Ljava/lang/String; = "DSS"

.field public static final UPDATER_PACKAGE_NAME:Ljava/lang/String; = "com.sprint.ce.updater"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sprint/dsa/Dss;
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/Dss;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    return-void
.end method
