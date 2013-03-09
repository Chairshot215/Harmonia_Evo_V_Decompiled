.class public Lcom/htc/android/mail/content/MailAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MailAsyncQueryHandler"


# instance fields
.field private mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "cr"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/content/MailAsyncQueryHandler;)Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    return-object v0
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 46
    new-instance v0, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;-><init>(Lcom/htc/android/mail/content/MailAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V
    .locals 0
    .parameter "messageStatusMap"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 42
    return-void
.end method
