.class Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;
.super Ljava/lang/Object;
.source "MailSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/mail/MailSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Range"
.end annotation


# instance fields
.field from:I

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

.field to:I


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/eassvc/mail/MailSearcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 747
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->this$0:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->from:I

    .line 749
    iput v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->to:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/eassvc/mail/MailSearcher;Lcom/htc/android/mail/eassvc/mail/MailSearcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 747
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;-><init>(Lcom/htc/android/mail/eassvc/mail/MailSearcher;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 752
    iput v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->from:I

    .line 753
    iput v0, p0, Lcom/htc/android/mail/eassvc/mail/MailSearcher$Range;->to:I

    .line 754
    return-void
.end method
