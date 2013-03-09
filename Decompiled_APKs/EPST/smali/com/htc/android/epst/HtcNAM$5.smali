.class Lcom/htc/android/epst/HtcNAM$5;
.super Ljava/lang/Object;
.source "HtcNAM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/HtcNAM;->authenticateResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcNAM;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/HtcNAM;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/android/epst/HtcNAM$5;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/android/epst/HtcNAM$5;->this$0:Lcom/htc/android/epst/HtcNAM;

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    iget-object v0, p0, Lcom/htc/android/epst/HtcNAM$5;->this$0:Lcom/htc/android/epst/HtcNAM;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/HtcNAM;->removeDialog(I)V

    .line 230
    iget-object v0, p0, Lcom/htc/android/epst/HtcNAM$5;->this$0:Lcom/htc/android/epst/HtcNAM;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/HtcNAM;->showDialog(I)V

    .line 231
    return-void
.end method
