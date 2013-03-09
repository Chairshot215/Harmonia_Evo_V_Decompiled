.class public Lcom/google/android/marvin/talkback/test/TextActivity;
.super Landroid/app/Activity;
.source "TextActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/test/TextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 36
    .local v0, window:Landroid/view/Window;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 37
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/test/TextActivity;->setContentView(I)V

    .line 40
    return-void
.end method
