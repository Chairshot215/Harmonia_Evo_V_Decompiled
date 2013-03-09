.class Lcom/android/camera/actionscreen/RequestActionScreen$2;
.super Ljava/lang/Object;
.source "RequestActionScreen.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/RequestActionScreen;->prepareActionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

.field final synthetic val$footer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/RequestActionScreen;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    iput-object p2, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->val$footer:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->val$footer:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcFooter;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$100(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0017

    const v3, 0x208073c

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$100(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0016

    const v3, 0x208072d

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$100(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0015

    const v3, 0x2080181

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_DoneButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$100(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$2;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/RequestActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0014

    const v3, 0x2080009

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
