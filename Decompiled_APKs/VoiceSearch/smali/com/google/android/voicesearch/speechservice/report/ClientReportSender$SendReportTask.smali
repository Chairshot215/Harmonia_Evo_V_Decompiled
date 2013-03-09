.class Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;
.super Landroid/os/AsyncTask;
.source "ClientReportSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendReportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInternalProtobufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

.field private final mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private final mTaskMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 205
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    .line 206
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->access$000(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->access$100(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mInternalProtobufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->access$000(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mInternalProtobufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    .line 216
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    if-nez v3, :cond_1

    .line 217
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 240
    :goto_0
    return-object v3

    .line 219
    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 221
    :try_start_0
    const-string v3, "ClientReportSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " client reports over HTTP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, messages:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->access$100(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, fakeParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAudioEncoding()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioEncoding(I)V

    .line 227
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAudioSampleRate()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioSampleRate(I)V

    .line 228
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-static {v1, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mInternalProtobufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-interface {v3, v4, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;->post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 240
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 231
    .end local v1           #fakeParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .end local v2           #messages:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :try_start_1
    const-string v3, "ClientReportSender"

    const-string v4, "Sending client reports failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 238
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .line 234
    .end local v0           #e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "ClientReportSender"

    const-string v4, "Sending client reports failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 238
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mInternalProtobufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;->close()V

    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string v0, "ClientReportSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client reports failed to send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->mTaskMessages:Ljava/util/ArrayList;

    #calls: Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->addFailedReports(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->access$200(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 198
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
