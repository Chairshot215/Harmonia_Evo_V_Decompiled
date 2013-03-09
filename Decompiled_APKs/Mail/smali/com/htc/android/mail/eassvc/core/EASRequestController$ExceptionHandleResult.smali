.class Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExceptionHandleResult"
.end annotation


# instance fields
.field errorCode:I

.field needRetry:Z

.field syncResult:I

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
