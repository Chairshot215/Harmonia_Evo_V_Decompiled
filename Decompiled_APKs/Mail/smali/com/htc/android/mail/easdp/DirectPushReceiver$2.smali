.class Lcom/htc/android/mail/easdp/DirectPushReceiver$2;
.super Ljava/lang/Object;
.source "DirectPushReceiver.java"

# interfaces
.implements Lcom/htc/android/mail/easdp/util/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/DirectPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$2;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFinish()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$2;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #calls: Lcom/htc/android/mail/easdp/DirectPushReceiver;->setConnectFinish()V
    invoke-static {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$500(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    .line 386
    return-void
.end method

.method public onConnectStart()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$2;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #calls: Lcom/htc/android/mail/easdp/DirectPushReceiver;->setConnectStart()V
    invoke-static {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$400(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V

    .line 381
    return-void
.end method
