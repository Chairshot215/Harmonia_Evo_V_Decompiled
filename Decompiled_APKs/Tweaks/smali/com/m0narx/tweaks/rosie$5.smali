.class Lcom/m0narx/tweaks/rosie$5;
.super Ljava/lang/Object;
.source "rosie.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/rosie;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/rosie;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/rosie;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/rosie$5;->this$0:Lcom/m0narx/tweaks/rosie;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie$5;->this$0:Lcom/m0narx/tweaks/rosie;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartSense(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/m0narx/tweaks/rosie$5;->this$0:Lcom/m0narx/tweaks/rosie;

    #calls: Lcom/m0narx/tweaks/rosie;->CheckButtonState()V
    invoke-static {v0}, Lcom/m0narx/tweaks/rosie;->access$1(Lcom/m0narx/tweaks/rosie;)V

    .line 277
    return-void
.end method
