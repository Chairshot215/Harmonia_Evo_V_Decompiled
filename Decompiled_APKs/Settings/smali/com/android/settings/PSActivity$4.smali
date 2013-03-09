.class Lcom/android/settings/PSActivity$4;
.super Ljava/lang/Object;
.source "PSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PSActivity;->ShowNoticeDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/PSActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    iput-object p2, p0, Lcom/android/settings/PSActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    #getter for: Lcom/android/settings/PSActivity;->DBG:Z
    invoke-static {v0}, Lcom/android/settings/PSActivity;->access$000(Lcom/android/settings/PSActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PSReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP in PSActivity is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    iget-object v2, v2, Lcom/android/settings/PSActivity;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    #getter for: Lcom/android/settings/PSActivity;->DBG:Z
    invoke-static {v0}, Lcom/android/settings/PSActivity;->access$000(Lcom/android/settings/PSActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PSReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkbox.isChecked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PSActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    iget-object v0, v0, Lcom/android/settings/PSActivity;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notshow_notice"

    iget-object v2, p0, Lcom/android/settings/PSActivity$4;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget-object v0, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    iget-object v0, v0, Lcom/android/settings/PSActivity;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    #getter for: Lcom/android/settings/PSActivity;->DBG:Z
    invoke-static {v0}, Lcom/android/settings/PSActivity;->access$000(Lcom/android/settings/PSActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PSReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not ShowNotice saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    iget-object v2, v2, Lcom/android/settings/PSActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "notshow_notice"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/settings/PSActivity$4;->this$0:Lcom/android/settings/PSActivity;

    invoke-virtual {v0}, Lcom/android/settings/PSActivity;->finish()V

    .line 140
    return-void
.end method
