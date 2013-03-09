.class Lcom/htc/widget/HtcTabHost1$2;
.super Ljava/lang/Object;
.source "HtcTabHost1.java"

# interfaces
.implements Lcom/htc/widget/HtcTabWidget1$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcTabHost1;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcTabHost1;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcTabHost1;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1$2;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$2;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabHost1;->setCurrentTab(I)V

    .line 138
    if-eqz p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost1$2;->this$0:Lcom/htc/widget/HtcTabHost1;

    #getter for: Lcom/htc/widget/HtcTabHost1;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/widget/HtcTabHost1;->access$100(Lcom/htc/widget/HtcTabHost1;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 141
    :cond_0
    return-void
.end method
