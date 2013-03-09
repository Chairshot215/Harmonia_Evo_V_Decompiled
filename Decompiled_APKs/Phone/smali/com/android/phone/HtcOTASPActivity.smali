.class public Lcom/android/phone/HtcOTASPActivity;
.super Landroid/app/Activity;
.source "HtcOTASPActivity.java"


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field btnActivate:Landroid/widget/Button;

.field btnEmgcall:Landroid/widget/Button;

.field tvOTANoti:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const-string v0, "OTASP"

    iput-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcOTASPActivity;->DBG:Z

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x67

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->HasHardwareSendKey:Z

    if-eqz v0, :cond_1

    .line 56
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcOTASPActivity;->setContentView(I)V

    .line 61
    :goto_0
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcOTASPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcOTASPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnActivate:Landroid/widget/Button;

    .line 64
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->HasHardwareSendKey:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnActivate:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 76
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 77
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/HtcOTASPActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcOTASPActivity$1;-><init>(Lcom/android/phone/HtcOTASPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnActivate:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/HtcOTASPActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcOTASPActivity$2;-><init>(Lcom/android/phone/HtcOTASPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 58
    :cond_1
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcOTASPActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 108
    const-string v1, "OTASP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/HtcOTASPActivity;->finish()V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:*228"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/HtcOTASPActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    const/4 v1, 0x1

    .line 118
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/android/phone/HtcOTASPActivity;->btnEmgcall:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    return-void
.end method
