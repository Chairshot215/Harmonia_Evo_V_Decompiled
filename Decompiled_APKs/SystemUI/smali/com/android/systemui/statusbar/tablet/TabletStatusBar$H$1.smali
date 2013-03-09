.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "do_not_disturb"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    return-void
.end method
