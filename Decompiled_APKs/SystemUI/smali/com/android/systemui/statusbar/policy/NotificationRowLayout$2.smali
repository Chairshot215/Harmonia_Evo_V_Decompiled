.class Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationRowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field final synthetic val$childF:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->val$childF:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->val$childF:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    return-void
.end method
