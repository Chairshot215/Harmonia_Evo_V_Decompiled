.class Lcom/htc/WifiRouter/WifiRouter$4;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$4;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter$4;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$4;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1800(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setShowPassword(Z)V
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1900(Lcom/htc/WifiRouter/WifiRouter;Z)V

    .line 609
    return-void
.end method
