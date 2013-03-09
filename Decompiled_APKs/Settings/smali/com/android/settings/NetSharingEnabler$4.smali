.class final Lcom/android/settings/NetSharingEnabler$4;
.super Ljava/lang/Thread;
.source "NetSharingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 957
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->unmountAsUsbStorage()V

    .line 958
    return-void
.end method
