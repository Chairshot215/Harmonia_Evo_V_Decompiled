.class Lcom/android/systemui/power/PowerUI$3;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PowerUI"

    const-string v1, "mLowBatteryListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v2, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Lcom/htc/dialog/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$3;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v2, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-void
.end method
