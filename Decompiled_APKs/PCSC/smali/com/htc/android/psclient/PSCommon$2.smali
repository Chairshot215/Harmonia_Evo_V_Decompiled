.class final Lcom/htc/android/psclient/PSCommon$2;
.super Ljava/lang/Thread;
.source "PSCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 742
    invoke-static {}, Lcom/htc/android/psclient/MountStorage;->unmountAsUsbStorage()V

    .line 743
    return-void
.end method
