.class final Lcom/jme3/app/AndroidHarness$3;
.super Ljava/lang/Object;
.source "AndroidHarness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/app/AndroidHarness;->removeSplashScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/app/AndroidHarness;


# direct methods
.method constructor <init>(Lcom/jme3/app/AndroidHarness;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/jme3/app/AndroidHarness$3;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness$3;->this$0:Lcom/jme3/app/AndroidHarness;

    #getter for: Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jme3/app/AndroidHarness;->access$000(Lcom/jme3/app/AndroidHarness;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness$3;->this$0:Lcom/jme3/app/AndroidHarness;

    #getter for: Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/jme3/app/AndroidHarness;->access$100(Lcom/jme3/app/AndroidHarness;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/app/AndroidHarness$3;->this$0:Lcom/jme3/app/AndroidHarness;

    #getter for: Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jme3/app/AndroidHarness;->access$000(Lcom/jme3/app/AndroidHarness;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 392
    return-void
.end method
