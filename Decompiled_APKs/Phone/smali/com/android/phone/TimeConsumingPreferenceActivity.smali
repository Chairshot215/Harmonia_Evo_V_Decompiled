.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Lcom/android/phone/TimeConsumingPreferenceListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final BUSY_READING_DIALOG:I = 0x64

.field private static final BUSY_SAVING_DIALOG:I = 0xc8

.field static final EXCEPTION_ERROR:I = 0x12c

.field static final FDN_CHECK_FAILURE:I = 0x258

.field private static final LOG_TAG:Ljava/lang/String; = "TimeConsumingPreferenceActivity"

.field static final RADIO_OFF_ERROR:I = 0x1f4

.field static final RESPONSE_ERROR:I = 0x190


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method dumpState()V
    .locals 5

    .prologue
    .line 235
    const-string v2, "TimeConsumingPreferenceActivity"

    const-string v3, "dumpState begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, key:Ljava/lang/String;
    const-string v2, "TimeConsumingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBusyList: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "TimeConsumingPreferenceActivity"

    const-string v3, "dumpState end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    .line 218
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0e02bb

    .line 50
    const/16 v5, 0x64

    if-eq p1, v5, :cond_0

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_1

    .line 51
    :cond_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v1, v8}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 54
    invoke-virtual {v1, v7}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    sparse-switch p1, :sswitch_data_0

    move-object v1, v4

    .line 157
    .end local v1           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v1

    .line 58
    .restart local v1       #dialog:Lcom/htc/app/HtcProgressDialog;
    :sswitch_0
    invoke-virtual {v1, v8}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 60
    const v4, 0x7f0e02b4

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual {v1, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 64
    const v4, 0x7f0e02b5

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    .end local v1           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_1
    const/16 v5, 0x190

    if-eq p1, v5, :cond_2

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_2

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x258

    if-eq p1, v5, :cond_2

    const/16 v5, 0x2711

    if-eq v5, p1, :cond_2

    const/16 v5, 0x4e20

    if-eq v5, p1, :cond_2

    const/16 v5, 0x2714

    if-eq v5, p1, :cond_2

    const/16 v5, 0x2715

    if-eq v5, p1, :cond_2

    const/16 v5, 0x2716

    if-ne v5, p1, :cond_3

    .line 77
    :cond_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0e02b3

    .line 82
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 126
    const v2, 0x7f0e02b8

    .line 129
    .local v2, msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 133
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 134
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 136
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 137
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 140
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 84
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f0e02b7

    .line 87
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 90
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f0e02ba

    .line 92
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 95
    .end local v2           #msgId:I
    :sswitch_4
    const v2, 0x7f0e02b9

    .line 97
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 101
    .end local v2           #msgId:I
    :sswitch_5
    const v2, 0x7f0e007d

    .line 102
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 105
    .end local v2           #msgId:I
    :sswitch_6
    const v2, 0x7f0e0024

    .line 106
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 109
    .end local v2           #msgId:I
    :sswitch_7
    const v2, 0x7f0e0025

    .line 110
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 113
    .end local v2           #msgId:I
    :sswitch_8
    const v2, 0x7f0e0026

    .line 114
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 117
    .end local v2           #msgId:I
    :sswitch_9
    const v2, 0x7f0e0027

    .line 118
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 122
    .end local v2           #msgId:I
    :sswitch_a
    const v2, 0x7f0e02b8

    .line 123
    .restart local v2       #msgId:I
    invoke-virtual {v0, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 145
    .end local v0           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_3
    const/16 v5, 0x2712

    if-ne v5, p1, :cond_4

    .line 146
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .restart local v0       #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x108009b

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 148
    const v5, 0x7f0e0017

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 149
    const v5, 0x7f0e0023

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 150
    const v5, 0x7f0e004a

    invoke-virtual {v0, v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 151
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 152
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 153
    .restart local v1       #dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .end local v0           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_4
    move-object v1, v4

    .line 157
    goto/16 :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 82
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_a
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
        0x2711 -> :sswitch_5
        0x2714 -> :sswitch_7
        0x2715 -> :sswitch_8
        0x2716 -> :sswitch_9
        0x4e20 -> :sswitch_6
    .end sparse-switch
.end method

.method public onError(Lcom/htc/preference/HtcPreference;I)V
    .locals 1
    .parameter "preference"
    .parameter "error"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public onException(Lcom/htc/preference/HtcPreference;Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .parameter "preference"
    .parameter "exception"

    .prologue
    .line 208
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 209
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 212
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0
.end method

.method public onFinished(Lcom/htc/preference/HtcPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    if-eqz p2, :cond_1

    .line 191
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_0
.end method

.method public onStarted(Lcom/htc/preference/HtcPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    if-eqz p2, :cond_1

    .line 175
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onSuccessed(Lcom/htc/preference/HtcPreference;I)V
    .locals 1
    .parameter "preference"
    .parameter "type"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 248
    :cond_0
    return-void
.end method
