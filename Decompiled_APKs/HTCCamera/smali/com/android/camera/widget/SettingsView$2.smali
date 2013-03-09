.class Lcom/android/camera/widget/SettingsView$2;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SettingsView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SettingsView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$2;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$2;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$100(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const/4 v0, 0x0

    return v0
.end method
