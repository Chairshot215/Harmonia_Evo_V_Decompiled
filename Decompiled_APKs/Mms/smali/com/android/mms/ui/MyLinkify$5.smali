.class final Lcom/android/mms/ui/MyLinkify$5;
.super Ljava/lang/Object;
.source "MyLinkify.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MyLinkify;->findAddress(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MyLinkify;->_string:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MyLinkify;->_address:Ljava/lang/String;

    .line 309
    sget-object v1, Lcom/android/mms/ui/MyLinkify;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 311
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MyLinkify;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    goto :goto_0

    .line 313
    :catch_1
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/ThreadDeath;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MyLinkify;->findAddressThread:Ljava/lang/Thread;

    .line 316
    return-void
.end method
