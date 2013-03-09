.class Lcom/htc/android/mail/mimemessage/MimeViewer$1;
.super Ljava/lang/Object;
.source "MimeViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/mimemessage/MimeViewer;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mimemessage/MimeViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 82
    const/4 v1, -0x1

    .line 84
    .local v1, result:I
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v3}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/Util;->getKeepTempMessage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 85
    .local v2, value:I
    if-lez v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v3}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/Util;->writeKeepTempMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-nez v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v3}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :cond_1
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MimeViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy: delete temp mMessageUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2           #value:I
    :goto_0
    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MimeViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy: delete temp mMessageUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "MimeViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDestroy: delete temp mMessageUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$1;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v3
.end method
