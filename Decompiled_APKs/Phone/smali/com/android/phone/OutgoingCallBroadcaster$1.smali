.class Lcom/android/phone/OutgoingCallBroadcaster$1;
.super Ljava/lang/Thread;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 417
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$1;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e01ee

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 418
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 419
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 420
    return-void
.end method
