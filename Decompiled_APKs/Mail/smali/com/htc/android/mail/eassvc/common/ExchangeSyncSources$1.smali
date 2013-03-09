.class Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources$1;
.super Ljava/lang/Object;
.source "ExchangeSyncSources.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->cancelSync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources$1;->this$0:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources$1;->this$0:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources$1;->this$0:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 873
    :cond_0
    return-void
.end method
