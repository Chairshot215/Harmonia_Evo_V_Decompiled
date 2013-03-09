.class Lcom/android/camera/actionscreen/CommonActionScreen$12;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

.field final synthetic val$cameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    iput-object p2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/android/camera/widget/PopupBubble;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$502(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$602(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a001d

    const v3, 0x7f020176

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen$12;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    return-void
.end method
