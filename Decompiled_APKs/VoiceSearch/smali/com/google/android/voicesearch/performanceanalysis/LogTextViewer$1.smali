.class Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$1;
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
    .line 61
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    #calls: Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->setTextFromFile()V
    invoke-static {v1}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$000(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LogViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    #getter for: Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->mFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;->access$100(Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
