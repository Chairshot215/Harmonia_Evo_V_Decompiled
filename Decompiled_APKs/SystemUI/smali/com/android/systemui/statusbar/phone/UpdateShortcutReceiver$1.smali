.class Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;
.super Ljava/lang/Thread;
.source "UpdateShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v13, -0x1

    const/4 v12, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "favorite_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$data:Landroid/content/Intent;

    const-string v1, "selectArgs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_0

    cmp-long v0, v8, v13

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    aget-object v0, v10, v12

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v11, v11, 0x1

    :cond_2
    aget-object v0, v10, v12

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v7, v7, -0x1

    :cond_3
    aget-object v0, v10, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v11, v0, :cond_0

    if-lez v7, :cond_0

    aget-object v0, v10, v12

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->updateShortcut(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;->access$000(Lcom/android/systemui/statusbar/phone/UpdateShortcutReceiver;Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "UpdateShortcutReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive: pkgname="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " where="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " (Ignore)"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
