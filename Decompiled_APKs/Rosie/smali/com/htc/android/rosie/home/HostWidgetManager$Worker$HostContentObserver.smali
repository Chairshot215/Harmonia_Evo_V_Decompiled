.class final Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;
.super Landroid/database/ContentObserver;
.source "HostWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/HostWidgetManager$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HostContentObserver"
.end annotation


# instance fields
.field mCallback:Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;)V
    .locals 0
    .parameter "handler"
    .parameter "callback"

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1085
    iput-object p2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;->mCallback:Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;

    .line 1086
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;Lcom/htc/android/rosie/home/HostWidgetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1081
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;->mCallback:Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;

    if-nez v0, :cond_0

    .line 1097
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    .line 1099
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;->mCallback:Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;

    invoke-virtual {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;->deliverSelfNotifications()Z

    move-result v0

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;->mCallback:Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;

    if-nez v0, :cond_0

    .line 1090
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1093
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$Worker$HostContentObserver;->mCallback:Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker$ContentChangeCallback;->onChanged(Z)V

    goto :goto_0
.end method
