.class Lcom/htc/android/htcime/HTCIMMView$11;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/HTCIMMView;->getMailBtnView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMMView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$11;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$11;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v1, 0x733

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 3127
    return-void
.end method
