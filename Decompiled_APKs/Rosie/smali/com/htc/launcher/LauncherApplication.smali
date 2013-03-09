.class public Lcom/htc/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field static final SYSTEM_SETTINGS_COMPLETE_STARTING:Ljava/lang/String; = "rosie_complete_starting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rosie_complete_starting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 28
    return-void
.end method
