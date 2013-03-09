.class final Lcom/htc/android/mail/MailCommon$11;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon;->checkReply(Landroid/content/Context;Ljava/lang/ref/WeakReference;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageId:J

.field final synthetic val$weakHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3282
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$11;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/android/mail/MailCommon$11;->val$messageId:J

    iput-object p4, p0, Lcom/htc/android/mail/MailCommon$11;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3284
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$11;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3285
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v2, p0, Lcom/htc/android/mail/MailCommon$11;->val$messageId:J

    #calls: Lcom/htc/android/mail/MailCommon;->isMailbodyDownloaded(Landroid/content/ContentResolver;J)Z
    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/MailCommon;->access$1900(Landroid/content/ContentResolver;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3286
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$11;->val$weakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 3287
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 3288
    new-instance v2, Lcom/htc/android/mail/MailCommon$11$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailCommon$11$1;-><init>(Lcom/htc/android/mail/MailCommon$11;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3295
    .end local v1           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method
