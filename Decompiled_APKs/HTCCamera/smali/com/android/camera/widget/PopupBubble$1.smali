.class Lcom/android/camera/widget/PopupBubble$1;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupBubble;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    invoke-static {v0}, Lcom/android/camera/widget/PopupBubble;->access$000(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    invoke-static {v0}, Lcom/android/camera/widget/PopupBubble;->access$000(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble$1;->this$0:Lcom/android/camera/widget/PopupBubble;

    invoke-interface {v0, v1}, Lcom/android/camera/widget/PopupBubble$OnClosedListener;->onClosed(Lcom/android/camera/widget/PopupBubble;)V

    :cond_0
    return-void
.end method
