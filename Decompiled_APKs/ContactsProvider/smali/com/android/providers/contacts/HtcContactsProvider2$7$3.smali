.class Lcom/android/providers/contacts/HtcContactsProvider2$7$3;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/contacts/HtcContactsProvider2$7;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2$7;)V
    .locals 0
    .parameter

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7$3;->this$1:Lcom/android/providers/contacts/HtcContactsProvider2$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    const/16 v3, 0x31

    .line 2515
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7$3;->this$1:Lcom/android/providers/contacts/HtcContactsProvider2$7;

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->removeBackgroundTask(I)V

    .line 2516
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$7$3;->this$1:Lcom/android/providers/contacts/HtcContactsProvider2$7;

    iget-object v0, v0, Lcom/android/providers/contacts/HtcContactsProvider2$7;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->scheduleBackgroundTaskDelayed(IJ)V

    .line 2518
    const/4 v0, 0x0

    return v0
.end method
