.class Lcom/android/htccontacts/util/TimeUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/TimeUtils;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/TimeUtils;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/TimeUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/htccontacts/util/TimeUtils$1;->this$0:Lcom/android/htccontacts/util/TimeUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    #calls: Lcom/android/htccontacts/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/htccontacts/util/TimeUtils;->access$000(Landroid/content/Context;)V

    .line 85
    return-void
.end method
