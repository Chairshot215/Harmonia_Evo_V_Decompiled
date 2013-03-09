.class public Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;
.super Ljava/lang/Object;
.source "PersonalizationDialogHelper.java"

# interfaces
.implements Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;,
        Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;,
        Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;
    }
.end annotation


# instance fields
.field private mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mContext:Landroid/content/Context;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 74
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    iput-object p1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mContext:Landroid/content/Context;

    .line 75
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 76
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 77
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 78
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;)Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;)Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method


# virtual methods
.method public createDialog(ILcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;)Landroid/app/Dialog;
    .locals 17
    .parameter "id"
    .parameter "callbacks"

    .prologue
    .line 97
    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mContext:Landroid/content/Context;

    const v15, 0x103006f

    invoke-direct {v3, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v3, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v14, 0x7f0a070f

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 101
    const-string v14, "layout_inflater"

    invoke-virtual {v3, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 106
    .local v6, inflater:Landroid/view/LayoutInflater;
    const/4 v10, 0x0

    .line 107
    .local v10, showHeader:Z
    const/4 v11, 0x0

    .line 110
    .local v11, showMoreInfo:Z
    packed-switch p1, :pswitch_data_0

    .line 149
    const-string v14, "PersonalizationOptInActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unknown dialog "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v4, 0x0

    .line 185
    :goto_0
    return-object v4

    .line 112
    :pswitch_0
    const v14, 0x7f0a0714

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v15}, Lcom/google/android/voicesearch/GservicesHelper;->getMobilePrivacyUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/android/voicesearch/util/TextUtil;->replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, text:Ljava/lang/String;
    const/4 v10, 0x1

    .line 117
    const/4 v11, 0x1

    .line 119
    const v14, 0x7f0a0717

    new-instance v15, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v3, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;Landroid/content/Context;I)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v14, 0x7f0a0718

    new-instance v15, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;I)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    :goto_1
    const v14, 0x7f040011

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 155
    .local v13, view:Landroid/view/View;
    if-nez v10, :cond_0

    .line 156
    const v14, 0x7f0e003c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    const v14, 0x7f0e003d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    .local v7, messageView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->replace(Landroid/text/Spanned;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)Landroid/text/Spanned;

    move-result-object v5

    .line 162
    .local v5, html:Landroid/text/Spanned;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 166
    const v14, 0x7f0e003e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 167
    .local v9, moreInfoView:Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 168
    const v14, 0x7f0a0715

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, moreInfoText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v14}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationMoreInfoUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/google/android/voicesearch/util/TextUtil;->createLinkTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/google/android/voicesearch/ui/URLObservableSpan;->replace(Landroid/text/Spanned;Lcom/google/android/voicesearch/ui/URLObservableSpan$URLSpanListener;)Landroid/text/Spanned;

    move-result-object v5

    .line 173
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    .end local v8           #moreInfoText:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 182
    .local v4, dialog:Landroid/app/AlertDialog;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 183
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 126
    .end local v4           #dialog:Landroid/app/AlertDialog;
    .end local v5           #html:Landroid/text/Spanned;
    .end local v7           #messageView:Landroid/widget/TextView;
    .end local v9           #moreInfoView:Landroid/widget/TextView;
    .end local v12           #text:Ljava/lang/String;
    .end local v13           #view:Landroid/view/View;
    :pswitch_1
    const v14, 0x7f0a0714

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v15}, Lcom/google/android/voicesearch/GservicesHelper;->getMobilePrivacyUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/android/voicesearch/util/TextUtil;->replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 130
    .restart local v12       #text:Ljava/lang/String;
    const/4 v11, 0x1

    .line 132
    const v14, 0x7f0a07d4

    new-instance v15, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v3, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;Landroid/content/Context;I)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v14, 0x7f0a07d5

    new-instance v15, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;I)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 139
    .end local v12           #text:Ljava/lang/String;
    :pswitch_2
    const v14, 0x7f0a0716

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v15}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationDashboardUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/android/voicesearch/util/TextUtil;->replaceLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 143
    .restart local v12       #text:Ljava/lang/String;
    const v14, 0x7f0a07d4

    new-instance v15, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$DisableButtonListener;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;I)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v14, 0x7f0a07d5

    new-instance v15, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v3, v1}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$EnableButtonListener;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;Landroid/content/Context;I)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 176
    .restart local v5       #html:Landroid/text/Spanned;
    .restart local v7       #messageView:Landroid/widget/TextView;
    .restart local v9       #moreInfoView:Landroid/widget/TextView;
    .restart local v13       #view:Landroid/view/View;
    :cond_1
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationMoreInfoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationMoreLink()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getPersonalizationDashboardUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->personalizationDashboardLink()V

    goto :goto_0
.end method

.method public showDialog(ILcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;Landroid/os/IBinder;)V
    .locals 4
    .parameter "id"
    .parameter "callbacks"
    .parameter "token"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->createDialog(ILcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;)Landroid/app/Dialog;

    move-result-object v0

    .line 84
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 86
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 92
    return-void
.end method
