.class Lcom/htc/widget/TabSwitchHost$2;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/TabSwitchHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$2;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 245
    sparse-switch p2, :sswitch_data_0

    .line 256
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$2;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$800(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 252
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
