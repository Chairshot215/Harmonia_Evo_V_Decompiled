.class final Lcom/htc/android/psclient/PSCommon$1;
.super Ljava/lang/Thread;
.source "PSCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/PSCommon;->enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 400
    invoke-static {}, Lcom/htc/android/psclient/MountStorage;->mountAsUsbStorage()V

    .line 401
    return-void
.end method
