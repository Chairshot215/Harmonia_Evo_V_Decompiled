.class Lcom/android/systemui/statusbar/preference/AutoSync$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/AutoSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AutoSync;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$2;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$2;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    #calls: Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/AutoSync;->access$000(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    :cond_0
    return-void
.end method
