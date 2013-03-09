.class Lcom/htc/android/mail/SMTPAccountErrorNotification$1;
.super Ljava/lang/Object;
.source "SMTPAccountErrorNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/SMTPAccountErrorNotification;->clearNotificationInLine(J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/SMTPAccountErrorNotification;

.field final synthetic val$accid:J


# direct methods
.method constructor <init>(Lcom/htc/android/mail/SMTPAccountErrorNotification;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/android/mail/SMTPAccountErrorNotification$1;->this$0:Lcom/htc/android/mail/SMTPAccountErrorNotification;

    iput-wide p2, p0, Lcom/htc/android/mail/SMTPAccountErrorNotification$1;->val$accid:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/SMTPAccountErrorNotification$1;->this$0:Lcom/htc/android/mail/SMTPAccountErrorNotification;

    iget-wide v1, p0, Lcom/htc/android/mail/SMTPAccountErrorNotification$1;->val$accid:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->clearNotification(J)I

    .line 178
    return-void
.end method
