.class Lcom/android/camera/widget/PopupMenu$3;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PopupMenu;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/PopupMenu;->m_Menu:Lcom/htc/widget/PopupBubbleWindow;
    invoke-static {v0, v1}, Lcom/android/camera/widget/PopupMenu;->access$002(Lcom/android/camera/widget/PopupMenu;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    #getter for: Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z
    invoke-static {v0}, Lcom/android/camera/widget/PopupMenu;->access$100(Lcom/android/camera/widget/PopupMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupMenu;->open()V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/PopupMenu;->m_NeedReopen:Z
    invoke-static {v0, v1}, Lcom/android/camera/widget/PopupMenu;->access$102(Lcom/android/camera/widget/PopupMenu;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    #getter for: Lcom/android/camera/widget/PopupMenu;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/widget/PopupMenu;->access$200(Lcom/android/camera/widget/PopupMenu;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Menu.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupMenu$3;->this$0:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x2

    #setter for: Lcom/android/camera/widget/PopupMenu;->m_MenuState:I
    invoke-static {v0, v1}, Lcom/android/camera/widget/PopupMenu;->access$302(Lcom/android/camera/widget/PopupMenu;I)I

    goto :goto_0
.end method
