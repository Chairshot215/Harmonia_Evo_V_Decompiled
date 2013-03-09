.class public Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;
.super Landroid/app/Application;
.source "DLNAMediaServerApplication.java"


# instance fields
.field private mAlreadyStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;->mAlreadyStarted:Z

    return-void
.end method


# virtual methods
.method public IsAlreadyStarted()Z
    .locals 2

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;->mAlreadyStarted:Z

    .line 12
    .local v0, theAlreadyStarted:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;->mAlreadyStarted:Z

    .line 13
    return v0
.end method
