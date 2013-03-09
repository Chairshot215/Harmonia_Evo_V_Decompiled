.class Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;
.super Ljava/lang/Object;
.source "First_Auto_Comp_Word_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->editTextSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "START_1st_AUTO_COMP_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "src"

    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mGoogleWordLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$000(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "pauseTime"

    iget-object v2, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    #getter for: Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->mPauseTime:I
    invoke-static {v2}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->access$100(Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test$1;->this$0:Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/tools/First_Auto_Comp_Word_Test;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
