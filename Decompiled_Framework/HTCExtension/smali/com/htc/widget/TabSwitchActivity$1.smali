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

    iput-object p1, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchDown()V

    return-void
.end method

.method public onTouchMove()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchMove()V

    return-void
.end method

.method public onTouchUp()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity$1;->this$0:Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchActivity;->onTabTouchUp()V

    return-void
.end method
