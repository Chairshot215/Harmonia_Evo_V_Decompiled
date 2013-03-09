.class Lcom/htc/widget/TabSwitchActivity$1;
.super Ljava/lang/Object;
.source "TabSwitchActivity.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/TabSwitchActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchActivity;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchDown()V

    .line 113
    return-void
.end method

.method public onTouchMove()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchMove()V

    .line 117
    return-void
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchUp()V

    .line 121
    return-void
.end method
