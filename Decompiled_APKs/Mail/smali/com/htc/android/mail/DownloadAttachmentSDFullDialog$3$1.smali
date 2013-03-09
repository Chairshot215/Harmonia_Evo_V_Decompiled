.class Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3$1;
.super Ljava/lang/Object;
.source "DownloadAttachmentSDFullDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3$1;->this$1:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id = \'%d\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3$1;->this$1:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;

    iget-object v7, v7, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$3;->this$0:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;

    #getter for: Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->mAccountId:J
    invoke-static {v7}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->access$100(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, where:Ljava/lang/String;
    const-string v3, "_enableSDsave"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
