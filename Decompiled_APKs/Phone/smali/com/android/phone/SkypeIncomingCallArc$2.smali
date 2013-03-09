.class Lcom/android/phone/SkypeIncomingCallArc$2;
.super Ljava/lang/Object;
.source "SkypeIncomingCallArc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SkypeIncomingCallArc;->setupAlertingLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SkypeIncomingCallArc;


# direct methods
.method constructor <init>(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/phone/SkypeIncomingCallArc$2;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc$2;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #calls: Lcom/android/phone/SkypeIncomingCallArc;->incomingCallAnswerCall()V
    invoke-static {v0}, Lcom/android/phone/SkypeIncomingCallArc;->access$100(Lcom/android/phone/SkypeIncomingCallArc;)V

    .line 335
    return-void
.end method
