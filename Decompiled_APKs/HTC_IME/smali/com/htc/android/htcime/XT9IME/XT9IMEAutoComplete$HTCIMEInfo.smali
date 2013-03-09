.class public Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;
.super Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.source "XT9IMEAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTCIMEInfo"
.end annotation


# instance fields
.field private AUTOCOMPLETE_SPAN:Landroid/text/style/BackgroundColorSpan;

.field private FG_AUTOCOMPLETE_SPAN:Landroid/text/style/ForegroundColorSpan;

.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;

    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V

    return-void
.end method


# virtual methods
.method protected getSapnBGColor()Landroid/text/style/BackgroundColorSpan;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->AUTOCOMPLETE_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method protected getSapnFGColor()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->FG_AUTOCOMPLETE_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "imm"

    .prologue
    .line 1118
    invoke-super {p0, p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 1121
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->access$002(I)I

    .line 1123
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->refreshSkinColorSpans()V

    .line 1124
    return-void
.end method

.method protected refreshSkinColorSpans()V
    .locals 2

    .prologue
    .line 1135
    invoke-super {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->refreshSkinColorSpans()V

    .line 1137
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->AUTOCOMPLETE_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 1138
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete;->access$000()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->FG_AUTOCOMPLETE_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 1139
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1127
    invoke-super {p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;->reset()V

    .line 1129
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->AUTOCOMPLETE_SPAN:Landroid/text/style/BackgroundColorSpan;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->currentBgSpan:Landroid/text/style/BackgroundColorSpan;

    .line 1130
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->FG_AUTOCOMPLETE_SPAN:Landroid/text/style/ForegroundColorSpan;

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IMEAutoComplete$HTCIMEInfo;->currentFgSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1131
    return-void
.end method
