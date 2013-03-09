.class public Lcom/s0up/goomanager/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/AboutActivity$ButtonListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/AboutActivity;->setContentView(I)V

    .line 14
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 15
    .local v0, btnBack:Landroid/widget/Button;
    new-instance v1, Lcom/s0up/goomanager/AboutActivity$ButtonListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/s0up/goomanager/AboutActivity$ButtonListener;-><init>(Lcom/s0up/goomanager/AboutActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method
