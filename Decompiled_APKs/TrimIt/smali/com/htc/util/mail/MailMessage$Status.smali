.class public Lcom/htc/util/mail/MailMessage$Status;
.super Ljava/lang/Object;
.source "MailMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/MailMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Status"
.end annotation


# instance fields
.field mFlag:I

.field mIsUnread:Z

.field final synthetic this$0:Lcom/htc/util/mail/MailMessage;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/MailMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/util/mail/MailMessage$Status;->this$0:Lcom/htc/util/mail/MailMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
