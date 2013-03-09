.class public Lcom/htc/android/mail/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebug:Landroid/widget/CheckBox;

.field private mEnableDetailDebug:Landroid/widget/CheckBox;

.field private mEnableExchangeDebug:Landroid/widget/CheckBox;

.field private mEnableRDVersion:Landroid/widget/CheckBox;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 46
    :pswitch_0
    sput-boolean p2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    goto :goto_0

    .line 49
    :pswitch_1
    sput-boolean p2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    goto :goto_0

    .line 52
    :pswitch_2
    sput-boolean p2, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    goto :goto_0

    .line 55
    :pswitch_3
    sput-boolean p2, Lcom/htc/android/mail/Mail;->RD_VERSION:Z

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x7f09006a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DebugActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mVersionView:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableDebug:Landroid/widget/CheckBox;

    .line 26
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableDetailDebug:Landroid/widget/CheckBox;

    .line 27
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableExchangeDebug:Landroid/widget/CheckBox;

    .line 28
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableRDVersion:Landroid/widget/CheckBox;

    .line 30
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableDebug:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 31
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableDetailDebug:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableExchangeDebug:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableRDVersion:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mVersionView:Landroid/widget/TextView;

    const v1, 0x7f0b034f

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableDebug:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableDetailDebug:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableExchangeDebug:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lcom/htc/android/mail/DebugActivity;->mEnableRDVersion:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/htc/android/mail/Mail;->RD_VERSION:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    return-void
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    const-string v0, "DebugActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", detail_debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Exchange_debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RD_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/android/mail/Mail;->RD_VERSION:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
