.class Lcom/htc/usage/DataUsageSummary$8;
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
    .line 1157
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$8;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$8;->this$0:Lcom/htc/usage/DataUsageSummary;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$8;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$2900(Lcom/htc/usage/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/usage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 1162
    return-void
.end method
