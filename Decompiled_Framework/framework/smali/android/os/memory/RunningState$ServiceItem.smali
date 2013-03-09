.class Landroid/os/memory/RunningState$ServiceItem;
.super Landroid/os/memory/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceItem"
.end annotation


# instance fields
.field mMergedItem:Landroid/os/memory/RunningState$MergedItem;

.field mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mServiceInfo:Landroid/content/pm/ServiceInfo;

.field mShownAsStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/memory/RunningState$BaseItem;-><init>(Z)V

    return-void
.end method
