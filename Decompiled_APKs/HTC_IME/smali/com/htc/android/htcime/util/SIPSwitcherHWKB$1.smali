.class Lcom/htc/android/htcime/util/SIPSwitcherHWKB$1;
.super Ljava/lang/Object;
.source "SIPSwitcherHWKB.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->showSwitchMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$1;->this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$1;->this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    #calls: Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->hideSwitchMenuInner()V
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->access$200(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    .line 550
    return-void
.end method
