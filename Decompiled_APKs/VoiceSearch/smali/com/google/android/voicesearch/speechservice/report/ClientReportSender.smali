.class public Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;
.super Ljava/lang/Object;
.source "ClientReportSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;,
        Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private mPendingReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

.field private final mTaskExecutor:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    .line 104
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mContext:Landroid/content/Context;

    .line 105
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    .line 106
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mTaskExecutor:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;

    .line 107
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    .line 108
    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;)V
    .locals 2
    .parameter "context"
    .parameter "poster"
    .parameter "taskExecutor"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    .line 80
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mTaskExecutor:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;

    .line 81
    const-string v0, "persisted_client_reports"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    .line 82
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 83
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;)Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mProtoBufPoster:Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->addFailedReports(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addFailedReports(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, failedReports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 130
    .local v0, startIndex:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->persistReports(Ljava/util/List;)V

    goto :goto_0
.end method

.method private clearPersistedReports()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_persisted_client_reports_market_one"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 173
    return-void
.end method

.method private getPersistedReports()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, returnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key_persisted_client_reports_market_one"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, report:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 157
    :try_start_0
    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->opaqueStringToReportBytes(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v4, v5}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ClientReportSender"

    const-string v5, "Failed to read persisted report"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #report:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static opaqueStringToReportBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    .line 274
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private persistReports(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, reports:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_persisted_client_reports_market_one"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v2

    .line 143
    .local v2, reportBytes:[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_persisted_client_reports_market_one"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->reportBytesToOpaqueString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    .end local v2           #reportBytes:[B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static reportBytesToOpaqueString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 263
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addReport(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 2
    .parameter "report"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public sendReports(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->getPersistedReports()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 190
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->clearPersistedReports()V

    .line 191
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->mTaskExecutor:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;

    new-instance v2, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$TaskExecutor;->execute(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender$SendReportTask;)V

    .line 192
    return-void
.end method
