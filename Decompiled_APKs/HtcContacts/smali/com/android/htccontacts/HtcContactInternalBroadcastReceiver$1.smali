.class Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "HtcContactInternalBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;->this$0:Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver;

    iput-object p2, p0, Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;->val$finalContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;->val$finalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingContact(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;->val$finalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingGroups(Landroid/content/Context;)V

    .line 69
    return-void
.end method
