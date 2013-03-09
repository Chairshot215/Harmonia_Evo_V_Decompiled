.class Lcom/android/CSDFunctionG/moretestitems$3;
.super Ljava/lang/Object;
.source "moretestitems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/moretestitems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/moretestitems;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/moretestitems;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, intentToSend:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v2, testDataBundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    check-cast p1, Landroid/widget/Button;

    .end local p1
    #setter for: Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v3, p1}, Lcom/android/CSDFunctionG/moretestitems;->access$102(Lcom/android/CSDFunctionG/moretestitems;Landroid/widget/Button;)Landroid/widget/Button;

    .line 424
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    #getter for: Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/CSDFunctionG/moretestitems;->access$100(Lcom/android/CSDFunctionG/moretestitems;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, strBtnName:Ljava/lang/String;
    const-string v3, "About"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/moretestitems;->Copyright()V

    .line 430
    :cond_0
    const-string v3, "Run"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/moretestitems;->Run()V

    .line 433
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/CSDFunctionG/moretestitems;->CheckAllchkbox(Z)V

    .line 435
    :cond_1
    const-string v3, "Back"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/moretestitems;->back_MainPage()V

    .line 438
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems$3;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/moretestitems;->finish()V

    .line 441
    :cond_2
    return-void
.end method
