.class Lcom/htc/android/mail/server/SmtpServer$1;
.super Ljava/lang/Object;
.source "SmtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/SmtpServer;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/SmtpServer;

.field final synthetic val$in:Ljava/io/BufferedInputStream;

.field final synthetic val$out:Ljava/io/BufferedOutputStream;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/SmtpServer;Ljava/io/BufferedOutputStream;Ljava/net/Socket;Ljava/io/BufferedInputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/htc/android/mail/server/SmtpServer$1;->this$0:Lcom/htc/android/mail/server/SmtpServer;

    iput-object p2, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$out:Ljava/io/BufferedOutputStream;

    iput-object p3, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$socket:Ljava/net/Socket;

    iput-object p4, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$in:Ljava/io/BufferedInputStream;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->this$0:Lcom/htc/android/mail/server/SmtpServer;

    const-string v1, "QUIT"

    iget-object v2, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$out:Ljava/io/BufferedOutputStream;

    #calls: Lcom/htc/android/mail/server/SmtpServer;->issue(Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/server/SmtpServer;->access$000(Lcom/htc/android/mail/server/SmtpServer;Ljava/lang/String;Ljava/io/BufferedOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 720
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 728
    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$out:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 736
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$in:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/htc/android/mail/server/SmtpServer$1;->val$in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 742
    :cond_2
    :goto_3
    return-void

    .line 739
    :catch_0
    move-exception v0

    goto :goto_3

    .line 731
    :catch_1
    move-exception v0

    goto :goto_2

    .line 723
    :catch_2
    move-exception v0

    goto :goto_1

    .line 715
    :catch_3
    move-exception v0

    goto :goto_0
.end method
