.class Lcom/android/updater/UpdaterReceiver$CheckinFailureType;
.super Ljava/lang/Object;
.source "UpdaterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckinFailureType"
.end annotation


# static fields
.field public static final BlockedRequest:I = 0x1

.field public static final ConnectTimeout:I = 0x2

.field public static final NetworkNotReady:I = 0x8

.field public static final NoError:I = 0x0

.field public static final PackageInProgress:I = 0x6

.field public static final PackageNotFound:I = 0x5

.field public static final ServerFail:I = 0x4

.field public static final SocketFail:I = 0x3

.field public static final UncategoryFail:I = 0x3e7

.field public static final VerifyFail:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/updater/UpdaterReceiver;


# direct methods
.method private constructor <init>(Lcom/android/updater/UpdaterReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/updater/UpdaterReceiver$CheckinFailureType;->this$0:Lcom/android/updater/UpdaterReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
