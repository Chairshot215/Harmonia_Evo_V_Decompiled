.class public Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;
.super Landroid/app/ProgressDialog;
.source "NoSearchProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
