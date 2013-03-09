.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickRecentButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickInputMethodSwitchButton()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onClickCompatModeButton()V

    goto :goto_0
.end method
