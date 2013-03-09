.class final Lcom/htc/android/mail/NewMailNotification$1;
.super Ljava/lang/Object;
.source "NewMailNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/NewMailNotification;->showNotificationInLine(Landroid/content/Context;JIJ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accid:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$firstMessageId:J

.field final synthetic val$newUnread:I


# direct methods
.method constructor <init>(Landroid/content/Context;JIJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$accid:J

    iput p4, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$newUnread:I

    iput-wide p5, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$firstMessageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 210
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 211
    iget-object v0, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$accid:J

    iget v3, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$newUnread:I

    iget-wide v4, p0, Lcom/htc/android/mail/NewMailNotification$1;->val$firstMessageId:J

    #calls: Lcom/htc/android/mail/NewMailNotification;->showNotification(Landroid/content/Context;JIJ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/android/mail/NewMailNotification;->access$000(Landroid/content/Context;JIJ)I

    .line 212
    return-void
.end method
