.class Lcom/htc/android/htcime/ui/WordCandidateList$1;
.super Ljava/lang/Object;
.source "WordCandidateList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/WordCandidateList;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandidateList;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/WordCandidateList;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSwitchClose:Z
    invoke-static {v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$500(Lcom/htc/android/htcime/ui/WordCandidateList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$600(Lcom/htc/android/htcime/ui/WordCandidateList;)Lcom/htc/android/htcime/HTCIMMView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$600(Lcom/htc/android/htcime/ui/WordCandidateList;)Lcom/htc/android/htcime/HTCIMMView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$700(Lcom/htc/android/htcime/ui/WordCandidateList;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->requestHideSelf(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandidateList$1;->this$0:Lcom/htc/android/htcime/ui/WordCandidateList;

    #getter for: Lcom/htc/android/htcime/ui/WordCandidateList;->mbWclSpreaded:Z
    invoke-static {v2}, Lcom/htc/android/htcime/ui/WordCandidateList;->access$000(Lcom/htc/android/htcime/ui/WordCandidateList;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSpread(Z)Z

    goto :goto_0
.end method
