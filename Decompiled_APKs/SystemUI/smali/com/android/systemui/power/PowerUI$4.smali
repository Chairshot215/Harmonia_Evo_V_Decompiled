.class Lcom/android/systemui/power/PowerUI$4;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object p2, p0, Lcom/android/systemui/power/PowerUI$4;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$4;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog2:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
