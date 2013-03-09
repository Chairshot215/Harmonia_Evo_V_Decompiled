.class Lcom/htc/android/mail/server/POP3Server$1;
.super Ljava/lang/Object;
.source "POP3Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/POP3Server;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/POP3Server;

.field final synthetic val$in:Ljava/io/BufferedInputStream;

.field final synthetic val$out:Ljava/io/BufferedOutputStream;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/POP3Server;Ljava/net/Socket;Ljava/io/BufferedOutputStream;Ljava/io/BufferedInputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/htc/android/mail/server/POP3Server$1;->this$0:Lcom/htc/android/mail/server/POP3Server;

    iput-object p2, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$socket:Ljava/net/Socket;

    iput-object p3, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$out:Ljava/io/BufferedOutputStream;

    iput-object p4, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$in:Ljava/io/BufferedInputStream;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1748
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1756
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$out:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    .line 1757
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1764
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$in:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_2

    .line 1765
    iget-object v0, p0, Lcom/htc/android/mail/server/POP3Server$1;->val$in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1770
    :cond_2
    :goto_2
    return-void

    .line 1767
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1759
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1751
    :catch_2
    move-exception v0

    goto :goto_0
.end method
