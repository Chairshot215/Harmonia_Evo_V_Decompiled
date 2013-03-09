.class Lcom/m0narx/tweaks/misc$5;
.super Ljava/lang/Object;
.source "misc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/misc;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/misc;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/misc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/misc$5;->this$0:Lcom/m0narx/tweaks/misc;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/m0narx/tweaks/misc$5;->this$0:Lcom/m0narx/tweaks/misc;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartPhone(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/m0narx/tweaks/misc$5;->this$0:Lcom/m0narx/tweaks/misc;

    #calls: Lcom/m0narx/tweaks/misc;->CheckButtonState()V
    invoke-static {v0}, Lcom/m0narx/tweaks/misc;->access$1(Lcom/m0narx/tweaks/misc;)V

    .line 220
    return-void
.end method
