.class Lcom/htc/android/htcime/ezsip/KeyboardView$5;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/KeyboardView;->showKeyboardTypeSwitchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 2986
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$5;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$5;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    #calls: Lcom/htc/android/htcime/ezsip/KeyboardView;->handleSwitchMenuClick(I)V
    invoke-static {v0, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->access$200(Lcom/htc/android/htcime/ezsip/KeyboardView;I)V

    .line 2989
    return-void
.end method
