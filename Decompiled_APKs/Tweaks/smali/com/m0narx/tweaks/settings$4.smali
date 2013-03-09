.class Lcom/m0narx/tweaks/settings$4;
.super Ljava/lang/Object;
.source "settings.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/widget/HtcAdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/settings$4;->this$0:Lcom/m0narx/tweaks/settings;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 124
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/settings$ViewHolder;

    .line 125
    .local v0, ListItem:Lcom/m0narx/tweaks/settings$ViewHolder;
    iget-object v2, p0, Lcom/m0narx/tweaks/settings$4;->this$0:Lcom/m0narx/tweaks/settings;

    iget-object v1, v0, Lcom/m0narx/tweaks/settings$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    #calls: Lcom/m0narx/tweaks/settings;->restoreProfile(Ljava/lang/Integer;)V
    invoke-static {v2, v1}, Lcom/m0narx/tweaks/settings;->access$5(Lcom/m0narx/tweaks/settings;Ljava/lang/Integer;)V

    .line 126
    return-void
.end method
