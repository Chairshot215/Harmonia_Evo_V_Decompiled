.class Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;
.super Landroid/os/AsyncTask;
.source "TetherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->this$1:Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;

    iput-boolean p2, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->val$desiredState:Z

    iput-object p3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->val$context:Landroid/content/Context;

    .line 208
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "args"

    .prologue
    .line 211
    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->val$desiredState:Z

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "state"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->val$desiredState:Z

    if-nez v1, :cond_1

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.googlecode.android.wifi.tether.intent.MANAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "state"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
