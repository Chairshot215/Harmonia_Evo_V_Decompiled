.class public Lcom/htc/cscore/util/LockUtil$CSWifiLock;
.super Ljava/lang/Object;
.source "LockUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/util/LockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSWifiLock"
.end annotation


# instance fields
.field lock:Landroid/net/wifi/WifiManager$WifiLock;

.field lockTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
