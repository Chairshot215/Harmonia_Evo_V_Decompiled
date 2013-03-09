.class public Lcom/google/android/voicesearch/logging/LoggingService;
.super Landroid/app/Service;
.source "LoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;
    }
.end annotation


# instance fields
.field private final mAutoFlushHandler:Landroid/os/Handler;

.field private mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

.field private mLastVoiceInputTimestamp:J

.field private mVoiceImeClientString:Ljava/lang/String;

.field private mVoiceImeRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceSearchClientString:Ljava/lang/String;

.field private mVoiceSearchQueryModified:Z

.field private mVoiceSearchRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeClientString:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    .line 92
    new-instance v0, Lcom/google/android/voicesearch/logging/LoggingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/logging/LoggingService$1;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/logging/LoggingService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/logging/LoggingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->flushClientReports()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/logging/LoggingService;)Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/logging/LoggingService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->stopServiceIfNeeded()V

    return-void
.end method

.method public static createFlushIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/voicesearch/logging/LoggingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_event"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method private static createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter "builder"

    .prologue
    .line 606
    const-string v0, "g:log:ev"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    return-object v0
.end method

.method private static createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter "builder"

    .prologue
    .line 611
    const-string v0, "g:log:ev"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v0

    return-object v0
.end method

.method private flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    .locals 7
    .parameter
    .parameter "clientString"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 578
    .local v0, application:Lcom/google/android/voicesearch/VoiceSearchApplication;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;

    move-result-object v1

    .line 579
    .local v1, cookieStore:Lcom/google/android/voicesearch/util/CookieStore;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 580
    .local v2, requestsToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 581
    new-instance v4, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;

    invoke-direct {v4, p2, v1, p3}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;-><init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/CookieStore;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    .line 583
    .local v4, senderAsyncTask:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Lcom/google/android/voicesearch/masf/LiteRequest;

    .line 584
    .local v3, requestsToSendArray:[Lcom/google/android/voicesearch/masf/LiteRequest;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 586
    return-void
.end method

.method private flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter "clientString"
    .parameter "listener"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/masf/LiteRequest;>;"
    const-string v0, "flush"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    const-string v0, "LoggingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received logging broadcast with no event specified for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V

    goto :goto_0
.end method

.method private flushClientReports()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/voicesearch/logging/LoggingService$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/logging/LoggingService$2;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/logging/LoggingService$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method private handleLocalVoiceSearchEvent(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 191
    const-string v3, "extra_event"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, event:I
    packed-switch v0, :pswitch_data_0

    .line 206
    const-string v3, "LoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected event received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    new-instance v5, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    iget-object v6, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v3, v4, v5, p1}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :pswitch_1
    const-string v3, "extra_protobuf_bytes"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 201
    .local v1, protobuf:[B
    const-string v3, "g:log:ev"

    invoke-static {v3}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v2

    .line 203
    .local v2, request:Lcom/google/android/voicesearch/masf/LiteRequest;
    iget-object v3, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleVoiceImeEvent(Landroid/content/Intent;I)V
    .locals 26
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 301
    const-string v22, "extra_event"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 305
    .local v12, event:I
    packed-switch v12, :pswitch_data_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeClientString:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogShown()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogDismissed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogOk()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->keyboardWarningDialogCancel()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogShown()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 362
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogDismissed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 371
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogOk()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 380
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->settingsWarningDialogCancel()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 389
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->swipeHintDisplayed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 397
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->punctuationHintDisplayed()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->cancelDuringListening()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 415
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->cancelDuringWorking()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 424
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->cancelDuringError()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 429
    :pswitch_e
    const-string v22, "code"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 430
    .local v11, code:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_1

    .line 431
    const-string v22, "LoggingService"

    const-string v23, "requested to log ERROR event with no error code"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {v11}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->error(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 443
    .end local v11           #code:I
    :pswitch_f
    const-string v22, "locale"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 444
    .local v15, locale:Ljava/lang/String;
    const-string v22, "method"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 446
    .local v16, method:I
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 448
    const-string v22, "swipe"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 449
    const/16 v16, 0x2

    .line 454
    :cond_2
    :goto_1
    const-string v22, "timestamp"

    const-wide/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 458
    .local v20, voiceInputStartTimestamp:J
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->start(Ljava/lang/String;I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 451
    .end local v20           #voiceInputStartTimestamp:J
    :cond_3
    const/16 v16, 0x1

    goto :goto_1

    .line 465
    .end local v15           #locale:Ljava/lang/String;
    .end local v16           #method:I
    :pswitch_10
    const-string v22, "length"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 467
    .local v14, inputLength:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    .line 468
    const-string v22, "LoggingService"

    const-string v23, "requested to log VOICE_INPUT_DELIVERED event with no length"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 474
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {v14}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->voiceInputDelivered(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 481
    .end local v14           #inputLength:I
    :pswitch_11
    const-string v22, "index"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 483
    .local v13, index:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_5

    .line 484
    const-string v22, "LoggingService"

    const-string v23, "requested to log n-best choose with no error code"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {v13}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->nBestChoose(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 497
    .end local v13           #index:I
    :pswitch_12
    const-string v22, "length"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 498
    .local v5, length:I
    const-string v22, "type"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 499
    .local v6, type:I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_6

    .line 500
    const-string v22, "LoggingService"

    const-string v23, "requested to log TEXT_MODIFIED event with no modification type"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 505
    :cond_6
    const-string v22, "rlength"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 506
    .local v7, replacedPhraseLength:I
    const-string v22, "index"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 508
    .local v8, nbestChooseIndex:I
    const-string v22, "before"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, beforeNbestChoose:Ljava/lang/String;
    const-string v22, "after"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 516
    .local v10, afterNbestChoose:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v5 .. v10}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->textModified(IIIILjava/lang/String;Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 527
    .end local v5           #length:I
    .end local v6           #type:I
    .end local v7           #replacedPhraseLength:I
    .end local v8           #nbestChooseIndex:I
    .end local v9           #beforeNbestChoose:Ljava/lang/String;
    .end local v10           #afterNbestChoose:Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->inputEnded()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 535
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->voiceInputSettingEnabled()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 544
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->voiceInputSettingDisabled()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 550
    :pswitch_16
    const-string v22, "timestamp"

    const-wide/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 551
    .local v18, textAcceptedTimestamp:J
    const-string v22, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 554
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-lez v22, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/voicesearch/logging/VoiceImeLogEventBuilder;->imeTextAccepted(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/voicesearch/logging/LoggingService;->mLastVoiceInputTimestamp:J

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private handleVoiceSearchEvent(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 211
    const-string v4, "extra_event"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, event:I
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    if-eq v0, v7, :cond_0

    .line 220
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 296
    const-string v4, "LoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown event received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 226
    :pswitch_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    .line 229
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    new-instance v6, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;

    iget-object v7, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/google/android/voicesearch/logging/LoggingService$CompleteListener;-><init>(Lcom/google/android/voicesearch/logging/LoggingService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v4, v5, v6, p1}, Lcom/google/android/voicesearch/logging/LoggingService;->flush(Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;Landroid/content/Intent;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    const-string v5, "g:log:ev"

    invoke-static {v5}, Lcom/google/android/voicesearch/masf/LiteRequest;->createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v5

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getRetry()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/voicesearch/masf/LiteRequest;->setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getNBestReveal()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :pswitch_3
    const-string v4, "index"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 253
    .local v1, index:I
    if-ne v1, v7, :cond_2

    .line 254
    const-string v4, "LoggingService"

    const-string v5, "requested to log N_BEST_CHOOSE event with no index"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getNBestChoose(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    .end local v1           #index:I
    :pswitch_4
    const-string v4, "value"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 275
    .local v2, protobuf:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 276
    :cond_3
    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getQueryCleared()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v2

    .line 281
    :cond_4
    :goto_1
    if-eqz v2, :cond_1

    .line 282
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_5
    iget-boolean v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    if-nez v4, :cond_4

    .line 278
    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getQueryCorrection()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v2

    .line 279
    iput-boolean v8, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchQueryModified:Z

    goto :goto_1

    .line 291
    .end local v2           #protobuf:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .end local v3           #value:Ljava/lang/String;
    :pswitch_5
    iget-object v4, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getResultClicked()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/voicesearch/logging/LoggingService;->createRequest(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;)Lcom/google/android/voicesearch/masf/LiteRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopServiceIfNeeded()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->hasPendingMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->stopSelf()V

    .line 603
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voiceime"

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/logging/Utils;->getMasfClientString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceImeClientString:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/voicesearch/logging/LoggingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "googlemobile"

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/logging/Utils;->getMasfClientString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mVoiceSearchClientString:Ljava/lang/String;

    .line 144
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getClientReportLogger()Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 146
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x2

    .line 163
    const/4 v1, -0x2

    const-string v2, "extra_event"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/voicesearch/logging/LoggingService;->mAutoFlushHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :goto_0
    return v5

    .line 168
    :cond_0
    const-string v1, "app_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, appName:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, "googlemobile"

    .line 174
    :cond_1
    const-string v1, "voiceime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-direct {p0, p1, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->handleVoiceImeEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 177
    :cond_2
    const-string v1, "googlemobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    invoke-direct {p0, p1, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->handleVoiceSearchEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 180
    :cond_3
    const-string v1, "voice_search_native_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    invoke-direct {p0, p1, p3}, Lcom/google/android/voicesearch/logging/LoggingService;->handleLocalVoiceSearchEvent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 184
    :cond_4
    const-string v1, "LoggingService"

    const-string v2, "unknown app name provided for logging event"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
