.class Lcom/htc/android/htcime/ezsip/KeyboardView$4;
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
    .line 2974
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$4;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$4;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->hideSwitchMenuInner()V

    .line 2977
    return-void
.end method
