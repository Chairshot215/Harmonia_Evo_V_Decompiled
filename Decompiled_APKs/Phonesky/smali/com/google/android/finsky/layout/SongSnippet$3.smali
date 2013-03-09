.class Lcom/google/android/finsky/layout/SongSnippet$3;
.super Ljava/lang/Object;
.source "SongSnippet.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SongSnippet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 121
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v3}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07018e

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v5}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v4}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v8, v8, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "songShareLongPress"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet$3;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v5}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return v6
.end method
