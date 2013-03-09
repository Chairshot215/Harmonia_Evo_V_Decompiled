.class Lcom/android/systemui/statusbar/preference/CarrierApp$1;
.super Ljava/lang/Object;
.source "CarrierApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/CarrierApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/CarrierApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    #getter for: Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->access$000(Lcom/android/systemui/statusbar/preference/CarrierApp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    #getter for: Lcom/android/systemui/statusbar/preference/CarrierApp;->mCarrierAppIntentAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/CarrierApp;->access$000(Lcom/android/systemui/statusbar/preference/CarrierApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/CarrierApp$1;->this$0:Lcom/android/systemui/statusbar/preference/CarrierApp;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->exitKeyguardSecurely()V

    :cond_1
    return-void
.end method
