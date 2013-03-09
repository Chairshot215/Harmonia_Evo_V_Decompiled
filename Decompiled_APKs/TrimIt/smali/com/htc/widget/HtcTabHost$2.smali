.class Lcom/htc/widget/HtcTabHost$2;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/widget/HtcTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcTabHost;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost$2;->this$0:Lcom/htc/widget/HtcTabHost;

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
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$2;->this$0:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTabHost;->setCurrentTab(I)V

    .line 138
    if-eqz p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcTabHost$2;->this$0:Lcom/htc/widget/HtcTabHost;

    #getter for: Lcom/htc/widget/HtcTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/widget/HtcTabHost;->access$100(Lcom/htc/widget/HtcTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 141
    :cond_0
    return-void
.end method
