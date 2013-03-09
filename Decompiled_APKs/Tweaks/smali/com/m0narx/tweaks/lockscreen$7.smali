.class Lcom/m0narx/tweaks/lockscreen$7;
.super Ljava/lang/Object;
.source "lockscreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/lockscreen;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/lockscreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen$7;->this$0:Lcom/m0narx/tweaks/lockscreen;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen$7;->this$0:Lcom/m0narx/tweaks/lockscreen;

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartPhone(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/m0narx/tweaks/lockscreen$7;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #calls: Lcom/m0narx/tweaks/lockscreen;->CheckButtonState()V
    invoke-static {v0}, Lcom/m0narx/tweaks/lockscreen;->access$1(Lcom/m0narx/tweaks/lockscreen;)V

    .line 246
    return-void
.end method
