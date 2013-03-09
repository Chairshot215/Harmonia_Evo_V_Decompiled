.class Lcom/htc/android/mail/ReadScreen$MailHeader;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailHeader"
.end annotation


# instance fields
.field addr:Ljava/lang/String;

.field date:J

.field flags:I

.field from:Ljava/lang/String;

.field meetingConflict:Z

.field priority:I

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 5382
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$MailHeader;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5382
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen$MailHeader;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    return-void
.end method
