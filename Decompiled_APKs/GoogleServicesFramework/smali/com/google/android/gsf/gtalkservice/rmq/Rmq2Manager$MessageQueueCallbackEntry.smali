.class public Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
.super Ljava/lang/Object;
.source "Rmq2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageQueueCallbackEntry"
.end annotation


# instance fields
.field accountId:J

.field packetId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "packetId"
    .parameter "accountId"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->this$0:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->packetId:Ljava/lang/String;

    .line 109
    iput-wide p3, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->accountId:J

    .line 110
    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->accountId:J

    return-wide v0
.end method

.method public getPacketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->packetId:Ljava/lang/String;

    return-object v0
.end method
