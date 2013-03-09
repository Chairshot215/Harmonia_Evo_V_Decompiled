.class Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$2;
.super Ljava/lang/Object;
.source "HandwriteBaseSIP.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1696
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$2;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$2;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->hideSwitchMenuInner()V

    .line 1699
    return-void
.end method
