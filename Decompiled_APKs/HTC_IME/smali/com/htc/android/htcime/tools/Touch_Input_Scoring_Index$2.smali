.class Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$2;
.super Ljava/lang/Object;
.source "Touch_Input_Scoring_Index.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$2;->this$0:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;

    .line 73
    .local v0, data:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    iget v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->item_key:I

    .line 76
    .local v2, item_key:I
    if-eqz v2, :cond_0

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.htcime"

    const-string v4, "com.htc.android.htcime.tools.Touch_Input_Scoring_Statistic_Activity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v3, "item_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$2;->this$0:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;->startActivity(Landroid/content/Intent;)V

    .line 82
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
