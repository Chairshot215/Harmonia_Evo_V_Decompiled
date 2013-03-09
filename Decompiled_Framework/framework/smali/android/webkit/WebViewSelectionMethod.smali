.class public Landroid/webkit/WebViewSelectionMethod;
.super Ljava/lang/Object;
.source "WebViewSelectionMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    }
.end annotation


# instance fields
.field private mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

.field private mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    sget-object v0, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    iput-object v0, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-void
.end method


# virtual methods
.method public getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    return-object v0
.end method

.method public setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z
    .locals 4

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    iget-object v2, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v2}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v2

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/textselection/SelectionWatcher;->onModeChanged(II)V

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-gt v1, v0, :cond_2

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-le v1, v0, :cond_2

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/textselection/SelectionWatcher;->onStartSelection(I)V

    :cond_1
    :goto_1
    iput-object p1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mMode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {v1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    #getter for: Landroid/webkit/WebViewSelectionMethod$SelectionMode;->value:I
    invoke-static {p1}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->access$000(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/textselection/SelectionWatcher;->onEndSelection(I)V

    goto :goto_1
.end method

.method public setSelectionWatcher(Lcom/htc/textselection/SelectionWatcher;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebViewSelectionMethod;->mSelectionWatcher:Lcom/htc/textselection/SelectionWatcher;

    return-void
.end method
