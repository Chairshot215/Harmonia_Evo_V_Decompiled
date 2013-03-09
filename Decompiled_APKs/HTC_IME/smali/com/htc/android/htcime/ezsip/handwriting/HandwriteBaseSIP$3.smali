.class Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$3;
.super Ljava/lang/Object;
.source "HandwriteBaseSIP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->showContinuousSwitchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V
    .locals 0
    .parameter

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$3;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$3;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    #calls: Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->handleSwitchMenuClick(I)V
    invoke-static {v0, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;I)V

    .line 1705
    return-void
.end method
