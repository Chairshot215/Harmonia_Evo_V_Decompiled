.class Lcom/htc/android/htcime/util/SIPSwitcher$1;
.super Ljava/lang/Object;
.source "SIPSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/SIPSwitcher;->showSwitchMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/SIPSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 902
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$1;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$1;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    #calls: Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenuInner()V
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->access$300(Lcom/htc/android/htcime/util/SIPSwitcher;)V

    .line 905
    return-void
.end method
