.class public Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
.super Ljava/lang/Object;
.source "LockUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/util/LockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASWifiLock"
.end annotation


# instance fields
.field lock:Landroid/net/wifi/WifiManager$WifiLock;

.field lockTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
