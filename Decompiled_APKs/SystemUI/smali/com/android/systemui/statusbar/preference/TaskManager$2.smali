.class Lcom/android/systemui/statusbar/preference/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/TaskManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$2;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.taskmanager"

    const-string v2, "com.htc.taskmanager.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "recent_apps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$2;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$000(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$2;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$2;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->exitKeyguardSecurely()V

    return-void
.end method
