.class Lcom/htc/android/mail/easdp/DirectPushReceiver$4;
.super Ljava/lang/Object;
.source "DirectPushReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easdp/DirectPushReceiver;->releaseHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$4;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$900()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$900()Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 616
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$902(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;

    .line 617
    return-void
.end method
