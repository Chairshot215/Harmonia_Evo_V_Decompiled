.class Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$4;
.super Ljava/lang/Object;
.source "HtcEnterBlacklistPwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 451
    const v1, 0x7f070063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 452
    .local v0, box:Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->toggle()V

    .line 453
    return-void
.end method
