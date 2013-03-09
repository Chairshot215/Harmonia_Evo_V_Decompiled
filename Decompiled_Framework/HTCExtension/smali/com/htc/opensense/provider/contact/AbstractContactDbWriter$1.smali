.class Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;
.super Ljava/lang/Thread;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->deleteLoginUserId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;


# direct methods
.method constructor <init>(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v2, v2, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    #getter for: Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->access$000(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "mimetype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v7, v7, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_LOGIN_ID:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v2, v2, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIME_LOGIN_ID deleted for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v4, v4, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " numDeleted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v2, v2, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to deleteLoginUserId!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
