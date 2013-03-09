.class Lcom/htc/android/htcime/util/SIPSwitcher$3;
.super Ljava/lang/Object;
.source "SIPSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 909
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcher$3;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher$3;->this$0:Lcom/htc/android/htcime/util/SIPSwitcher;

    #calls: Lcom/htc/android/htcime/util/SIPSwitcher;->handleSwitchMenuClick(I)V
    invoke-static {v0, p2}, Lcom/htc/android/htcime/util/SIPSwitcher;->access$500(Lcom/htc/android/htcime/util/SIPSwitcher;I)V

    .line 912
    return-void
.end method
