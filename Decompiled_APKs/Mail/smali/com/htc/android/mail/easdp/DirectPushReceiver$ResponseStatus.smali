.class Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;
.super Ljava/lang/Object;
.source "DirectPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/DirectPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseStatus"
.end annotation


# static fields
.field static final INIT:I = 0x0

.field static final NO_RESPONSE:I = 0x2

.field static final OK:I = 0x1


# instance fields
.field public currentStatus:I

.field public prevStatus:I

.field final synthetic this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->prevStatus:I

    .line 91
    iput v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->currentStatus:I

    return-void
.end method


# virtual methods
.method public addStatus(I)V
    .locals 1
    .parameter "newStatus"

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->currentStatus:I

    iput v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->prevStatus:I

    .line 94
    iput p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->currentStatus:I

    .line 95
    return-void
.end method
