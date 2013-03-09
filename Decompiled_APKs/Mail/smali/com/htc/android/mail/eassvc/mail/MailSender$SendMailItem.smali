.class public Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
.super Ljava/lang/Object;
.source "MailSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/mail/MailSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendMailItem"
.end annotation


# instance fields
.field public meetingResp:I

.field public sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 906
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 907
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    return-void
.end method
