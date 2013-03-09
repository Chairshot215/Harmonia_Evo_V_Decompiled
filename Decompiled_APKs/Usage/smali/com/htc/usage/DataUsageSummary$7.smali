.class Lcom/htc/usage/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$7;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1138
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$7;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$2600(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1140
    .local v0, restrictBackground:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1141
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$7;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->hasLimitedNetworks()Z
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$2700(Lcom/htc/usage/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1145
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$7;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    .line 1154
    :goto_1
    return-void

    .end local v0           #restrictBackground:Z
    :cond_0
    move v0, v1

    .line 1138
    goto :goto_0

    .line 1149
    .restart local v0       #restrictBackground:Z
    :cond_1
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$7;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    goto :goto_1

    .line 1152
    :cond_2
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$7;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/htc/usage/DataUsageSummary;->access$2800(Lcom/htc/usage/DataUsageSummary;Z)V

    goto :goto_1
.end method
