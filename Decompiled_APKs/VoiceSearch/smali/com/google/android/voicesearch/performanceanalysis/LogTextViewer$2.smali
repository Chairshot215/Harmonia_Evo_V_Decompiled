.class Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;
.super Ljava/lang/Object;
.source "LogTextViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$200()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, today:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    iget-object v5, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$2;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    #getter for: Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$100(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.SUBJECT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VoiceSearch logs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.EMAIL"

    invoke-static {}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$300()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #today:Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    const-string v2, "LogViewer"

    const-string v3, "Could not send the email"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
