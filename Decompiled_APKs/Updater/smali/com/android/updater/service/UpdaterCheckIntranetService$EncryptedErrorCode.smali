.class Lcom/android/updater/service/UpdaterCheckIntranetService$EncryptedErrorCode;
.super Ljava/lang/Object;
.source "UpdaterCheckIntranetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/service/UpdaterCheckIntranetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedErrorCode"
.end annotation


# static fields
.field public static final AUTHENTICATION_ERROR:I = 0x2

.field public static final KEY_INVALID:I = 0x3

.field public static final KEY_SERVER_ERROR:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;


# direct methods
.method private constructor <init>(Lcom/android/updater/service/UpdaterCheckIntranetService;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService$EncryptedErrorCode;->this$0:Lcom/android/updater/service/UpdaterCheckIntranetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
