.class Lcom/htc/usage/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


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
    .line 582
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$4;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "tag"

    .prologue
    .line 585
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$4;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1000(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
