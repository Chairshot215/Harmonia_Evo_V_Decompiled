.class Lcom/android/providers/applications/ApplicationsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/applications/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/applications/ApplicationsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/applications/ApplicationsProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/providers/applications/ApplicationsProvider$1;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider$1;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    #calls: Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V
    invoke-static {v1}, Lcom/android/providers/applications/ApplicationsProvider;->access$000(Lcom/android/providers/applications/ApplicationsProvider;)V

    .line 170
    :cond_0
    return-void
.end method
