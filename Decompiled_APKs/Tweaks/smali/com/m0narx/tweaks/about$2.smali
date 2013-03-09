.class Lcom/m0narx/tweaks/about$2;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/about;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/about;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/about;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 87
    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    .line 88
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 93
    :goto_0
    const/4 v1, 0x1

    .line 98
    :goto_1
    return v1

    .line 91
    :cond_0
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    const-class v2, Lcom/m0narx/tweaks/settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/about$2;->this$0:Lcom/m0narx/tweaks/about;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/about;->startActivity(Landroid/content/Intent;)V

    .line 98
    const/4 v1, 0x0

    goto :goto_1
.end method
