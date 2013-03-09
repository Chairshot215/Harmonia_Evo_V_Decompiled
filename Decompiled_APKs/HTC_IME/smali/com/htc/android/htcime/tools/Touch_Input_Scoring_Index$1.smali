.class Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$1;
.super Ljava/lang/Object;
.source "Touch_Input_Scoring_Index.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$1;->this$0:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index;

    iput-object p2, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Index$1;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "scoring_idx_mode"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
