.class Lcom/android/camera/widget/Panel$6;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/Panel;->postProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/Panel;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/Panel$6;->this$0:Lcom/android/camera/widget/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/Panel$6;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->panelListener:Lcom/android/camera/widget/Panel$OnPanelListener;
    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$1900(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$OnPanelListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/Panel$6;->this$0:Lcom/android/camera/widget/Panel;

    invoke-interface {v0, v1}, Lcom/android/camera/widget/Panel$OnPanelListener;->onPanelOpened(Lcom/android/camera/widget/Panel;)V

    iget-object v0, p0, Lcom/android/camera/widget/Panel$6;->this$0:Lcom/android/camera/widget/Panel;

    sget-object v1, Lcom/android/camera/widget/Panel$State;->READY:Lcom/android/camera/widget/Panel$State;

    #setter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v0, v1}, Lcom/android/camera/widget/Panel;->access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;

    iget-object v0, p0, Lcom/android/camera/widget/Panel$6;->this$0:Lcom/android/camera/widget/Panel;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z
    invoke-static {v0, v1}, Lcom/android/camera/widget/Panel;->access$1802(Lcom/android/camera/widget/Panel;Z)Z

    return-void
.end method
