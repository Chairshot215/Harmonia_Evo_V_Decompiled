.class public abstract Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.super Lcom/htc/android/fieldtrial/internal/StructBase;
.source "DmCmdBase.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/internal/StructBase;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;->TYPE:I

    .line 10
    return-void
.end method


# virtual methods
.method public onCheckCmdState()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
