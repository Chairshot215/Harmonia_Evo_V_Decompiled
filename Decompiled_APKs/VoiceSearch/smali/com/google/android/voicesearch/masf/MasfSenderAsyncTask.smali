.class public Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;
.super Landroid/os/AsyncTask;
.source "MasfSenderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/voicesearch/masf/LiteRequest;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/voicesearch/masf/LiteRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mClientString:Ljava/lang/String;

.field private final mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

.field private final mMasfSender:Lcom/google/android/voicesearch/masf/MasfSender;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/CookieStore;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    .locals 1
    .parameter "clientString"
    .parameter "cookieStore"
    .parameter "listener"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mClientString:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/android/voicesearch/masf/MasfSender;

    invoke-direct {v0, p2}, Lcom/google/android/voicesearch/masf/MasfSender;-><init>(Lcom/google/android/voicesearch/util/CookieStore;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mMasfSender:Lcom/google/android/voicesearch/masf/MasfSender;

    .line 43
    iput-object p3, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Lcom/google/android/voicesearch/masf/LiteRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->doInBackground([Lcom/google/android/voicesearch/masf/LiteRequest;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/voicesearch/masf/LiteRequest;)Ljava/util/ArrayList;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 50
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 54
    :try_start_0
    iget-object v4, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mMasfSender:Lcom/google/android/voicesearch/masf/MasfSender;

    iget-object v5, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mClientString:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/voicesearch/masf/MasfSender;->send(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 60
    .local v3, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .end local v3           #responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    :goto_1
    return-object v3

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v4, "MasfSenderAsyncTask"

    const-string v5, "Could not send the requests"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v3, v2

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;->onSendCompleted(Ljava/util/ArrayList;)V

    .line 69
    :cond_0
    return-void
.end method
