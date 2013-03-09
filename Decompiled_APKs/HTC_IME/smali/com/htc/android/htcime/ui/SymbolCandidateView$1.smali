.class Lcom/htc/android/htcime/ui/SymbolCandidateView$1;
.super Ljava/lang/Object;
.source "SymbolCandidateView.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/SymbolCandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/SymbolCandidateView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/SymbolCandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView$1;->this$0:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 138
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 145
    return-void
.end method

.method public onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v0, "RRRLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSymbolKbuttonHandler onKeyPress - char - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView$1;->this$0:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    #getter for: Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->access$000(Lcom/htc/android/htcime/ui/SymbolCandidateView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView$1;->this$0:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    #getter for: Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->access$000(Lcom/htc/android/htcime/ui/SymbolCandidateView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v1, 0xf00

    invoke-virtual {p1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 131
    :cond_0
    return-void
.end method
