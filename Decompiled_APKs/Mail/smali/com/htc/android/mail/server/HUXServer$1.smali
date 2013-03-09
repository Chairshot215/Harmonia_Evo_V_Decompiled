.class Lcom/htc/android/mail/server/HUXServer$1;
.super Ljava/lang/Object;
.source "HUXServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/HUXServer;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/HUXServer;

.field final synthetic val$httpClient:Lorg/apache/http/client/HttpClient;

.field final synthetic val$in:Ljava/io/BufferedInputStream;

.field final synthetic val$out:Ljava/io/BufferedOutputStream;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/HUXServer;Ljava/net/Socket;Ljava/io/BufferedOutputStream;Ljava/io/BufferedInputStream;Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/htc/android/mail/server/HUXServer$1;->this$0:Lcom/htc/android/mail/server/HUXServer;

    iput-object p2, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$socket:Ljava/net/Socket;

    iput-object p3, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$out:Ljava/io/BufferedOutputStream;

    iput-object p4, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$in:Ljava/io/BufferedInputStream;

    iput-object p5, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1517
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1525
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$out:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_1

    .line 1526
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1533
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$in:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$in:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1540
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$httpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_3

    .line 1541
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$1;->val$httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 1542
    .local v0, mgr:Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1544
    .end local v0           #mgr:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_3
    return-void

    .line 1536
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1528
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1520
    :catch_2
    move-exception v1

    goto :goto_0
.end method
