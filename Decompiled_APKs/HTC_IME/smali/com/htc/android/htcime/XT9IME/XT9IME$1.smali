.class Lcom/htc/android/htcime/XT9IME/XT9IME$1;
.super Landroid/content/BroadcastReceiver;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;->scanArticleForCustomWord_ReceiverReg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 0
    .parameter

    .prologue
    .line 5315
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$1;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5318
    const-string v5, "ScanArticle"

    const-string v6, "SCAN_FOR_CUSTOM_WORD broadcast received."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5325
    .local v3, timer_s:J
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "htc.android.intent.action.SCAN_FOR_CUSTOM_WORD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5327
    const-string v5, "article"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5329
    .local v0, article:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->LIMIT_SCAN_SIZE:I

    if-le v5, v6, :cond_0

    .line 5330
    const/4 v5, 0x0

    sget v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->LIMIT_SCAN_SIZE:I

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5332
    :cond_0
    const-string v5, "ScanArticle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Article size    = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5344
    const-string v5, "ScanArticle"

    const-string v6, "Scan Article [Start]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/XT9IME;->nativeScanArticleForCustomWord([C)I

    .line 5346
    const-string v5, "ScanArticle"

    const-string v6, "Scan Article [End]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    .end local v0           #article:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 5350
    .local v1, timer_e:J
    const-string v5, "ScanArticle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SCAN_FOR_CUSTOM_WORD!] scan article cost time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    return-void
.end method
