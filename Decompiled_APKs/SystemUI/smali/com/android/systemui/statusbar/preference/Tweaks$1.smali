.class Lcom/android/systemui/statusbar/preference/Tweaks$1;
.super Ljava/lang/Object;
.source "Tweaks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/Tweaks;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Tweaks;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Tweaks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Tweaks$1;->this$0:Lcom/android/systemui/statusbar/preference/Tweaks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Tweaks$1;->this$0:Lcom/android/systemui/statusbar/preference/Tweaks;

    iget-object v0, v2, Lcom/android/systemui/statusbar/preference/Tweaks;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.m0narx.tweaks"

    const-string v4, "com.m0narx.tweaks.main"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Tweaks$1;->this$0:Lcom/android/systemui/statusbar/preference/Tweaks;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/preference/Tweaks;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Tweaks$1;->this$0:Lcom/android/systemui/statusbar/preference/Tweaks;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Tweaks;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    return-void
.end method
