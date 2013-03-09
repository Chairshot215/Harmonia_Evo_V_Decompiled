.class Lcom/htc/android/htcime/util/SIPSwitcherHWKB$3;
.super Ljava/lang/Object;
.source "SIPSwitcherHWKB.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 554
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$3;->this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$3;->this$0:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    #calls: Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->handleSwitchMenuClick(I)V
    invoke-static {v0, p2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->access$400(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;I)V

    .line 557
    return-void
.end method
