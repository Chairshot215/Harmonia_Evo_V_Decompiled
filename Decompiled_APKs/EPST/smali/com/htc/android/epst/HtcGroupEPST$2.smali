.class Lcom/htc/android/epst/HtcGroupEPST$2;
.super Ljava/lang/Object;
.source "HtcGroupEPST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/HtcGroupEPST;->returnDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcGroupEPST;

.field final synthetic val$iMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/HtcGroupEPST;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/android/epst/HtcGroupEPST$2;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    iput-object p2, p0, Lcom/htc/android/epst/HtcGroupEPST$2;->val$iMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 264
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$2;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/HtcGroupEPST;->removeDialog(I)V

    .line 265
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$2;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/HtcGroupEPST$2;->val$iMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    return-void
.end method
