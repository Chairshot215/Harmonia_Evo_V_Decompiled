.class Lcom/android/phone/CallNotifier$CallWaitingInfo;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallWaitingInfo"
.end annotation


# instance fields
.field date:J

.field number:Ljava/lang/String;

.field presentation:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 2
    .parameter

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo;->number:Ljava/lang/String;

    .line 2559
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo;->presentation:I

    .line 2560
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/CallNotifier$CallWaitingInfo;->date:J

    .line 2561
    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CallNotifier$CallWaitingInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2550
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$CallWaitingInfo;->saveCallWaiting()V

    return-void
.end method

.method private saveCallWaiting()V
    .locals 1

    .prologue
    .line 2565
    new-instance v0, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallNotifier$CallWaitingInfo$1;-><init>(Lcom/android/phone/CallNotifier$CallWaitingInfo;)V

    .line 2584
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2585
    return-void
.end method
