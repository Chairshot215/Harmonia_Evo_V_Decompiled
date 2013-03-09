.class Lcom/android/updater/UpdaterReceiver$AcuErrorCode;
.super Ljava/lang/Object;
.source "UpdaterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcuErrorCode"
.end annotation


# static fields
.field public static final CACHE_FULL:I = 0xa

.field public static final DOWNLOAD_FAILED:I = 0xb

.field public static final FILE_CORRUPTED:I = 0x14

.field public static final INSTALLATION_FAILED:I = 0x15

.field public static final STORAGE_FULL:I = 0x1e


# instance fields
.field final synthetic this$0:Lcom/android/updater/UpdaterReceiver;


# direct methods
.method private constructor <init>(Lcom/android/updater/UpdaterReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/updater/UpdaterReceiver$AcuErrorCode;->this$0:Lcom/android/updater/UpdaterReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
