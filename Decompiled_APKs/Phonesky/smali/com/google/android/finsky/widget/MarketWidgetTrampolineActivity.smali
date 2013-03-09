.class public Lcom/google/android/finsky/widget/MarketWidgetTrampolineActivity;
.super Lcom/google/android/finsky/widget/TrampolineActivity;
.source "MarketWidgetTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableMultiCorpus()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method protected getWidgetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const-class v0, Lcom/android/vending/MarketWidgetProvider;

    return-object v0
.end method

.method protected shouldAllowConfiguration()Z
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/finsky/config/G;->enableCorpusWidgets:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
