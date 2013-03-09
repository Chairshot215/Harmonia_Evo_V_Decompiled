.class Lcom/m0narx/tweaks/systemui$5;
.super Ljava/lang/Object;
.source "systemui.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/systemui;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/systemui;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/systemui;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartSystemUI(Landroid/content/Context;)V

    .line 329
    iget-object v0, p0, Lcom/m0narx/tweaks/systemui$5;->this$0:Lcom/m0narx/tweaks/systemui;

    #calls: Lcom/m0narx/tweaks/systemui;->CheckButtonState()V
    invoke-static {v0}, Lcom/m0narx/tweaks/systemui;->access$1(Lcom/m0narx/tweaks/systemui;)V

    .line 330
    return-void
.end method
