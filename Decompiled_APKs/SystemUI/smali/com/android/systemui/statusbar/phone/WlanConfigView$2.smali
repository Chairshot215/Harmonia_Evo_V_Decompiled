.class Lcom/android/systemui/statusbar/phone/WlanConfigView$2;
.super Ljava/lang/Object;
.source "WlanConfigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WlanConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/WlanConfigView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    #getter for: Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$300(Lcom/android/systemui/statusbar/phone/WlanConfigView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    #getter for: Lcom/android/systemui/statusbar/phone/WlanConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$400(Lcom/android/systemui/statusbar/phone/WlanConfigView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    #getter for: Lcom/android/systemui/statusbar/phone/WlanConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$400(Lcom/android/systemui/statusbar/phone/WlanConfigView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    #getter for: Lcom/android/systemui/statusbar/phone/WlanConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$400(Lcom/android/systemui/statusbar/phone/WlanConfigView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->exitKeyguardSecurely()V

    :cond_0
    return-void
.end method
