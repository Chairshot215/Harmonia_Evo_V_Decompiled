.class public Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;
.super Landroid/app/ListActivity;
.source "TutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_TutorialActivity"


# instance fields
.field private mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field private mbBackFinish:Z

.field private mbBackKey:Z

.field protected mbLaunchByOOBE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbLaunchByOOBE:Z

    .line 77
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbBackKey:Z

    .line 79
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbBackFinish:Z

    return-void
.end method


# virtual methods
.method protected enableBackKey()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbBackKey:Z

    .line 189
    return-void
.end method

.method protected fillInitData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LaunchBySetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbLaunchByOOBE:Z

    .line 194
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbBackFinish:Z

    .line 196
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 283
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 287
    const-string v0, "OOBE_TutorialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 201
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->finish()V

    goto :goto_0

    .line 206
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->finish()V

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0059 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 99
    const-string v0, "OOBE_TutorialActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->fillInitData()V

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setLayout()V

    .line 102
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    const-string v0, "OOBE_TutorialActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->fillInitData()V

    .line 93
    new-instance v0, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 94
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setLayout()V

    .line 95
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 255
    const-string v1, "OOBE_TutorialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onKeyDown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mbLaunchByOOBE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbLaunchByOOBE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbLaunchByOOBE:Z

    if-nez v1, :cond_1

    .line 258
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 276
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 260
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 276
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 262
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbBackKey:Z

    if-ne v0, v1, :cond_2

    .line 263
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 264
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setResult(I)V

    .line 265
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 270
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 242
    const-string v0, "OOBE_TutorialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 246
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0059

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 236
    const-string v0, "OOBE_TutorialActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 220
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 215
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 225
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 230
    const-string v0, "OOBE_TutorialActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method protected setLayout()V
    .locals 19

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mbLaunchByOOBE:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getLearnMoreLink()Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, strUrl:Ljava/lang/String;
    if-nez v12, :cond_0

    .line 109
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f0a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 112
    :cond_0
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 113
    .local v15, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v5, intent:Landroid/content/Intent;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setResult(I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->finish()V

    .line 185
    .end local v5           #intent:Landroid/content/Intent;
    .end local v12           #strUrl:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 118
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v12       #strUrl:Ljava/lang/String;
    .restart local v15       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 119
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v16, "OOBE_TutorialActivity"

    const-string v17, " URL doesn\'t exist"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v16, "OOBE_TutorialActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " URL = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    .line 123
    .local v4, e:Ljava/lang/Exception;
    const-string v16, "OOBE_TutorialActivity"

    const-string v17, " Browser, exception occurs"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v16, "OOBE_TutorialActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Browser exception cause, "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v16, "OOBE_TutorialActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Browser exception, "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v16, "OOBE_TutorialActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " URL = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v12           #strUrl:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_1
    const v16, 0x7f03002f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->setContentView(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    move-object/from16 v16, v0

    const-string v17, "Flickr"

    invoke-virtual/range {v16 .. v17}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasSocialNetworkConfig(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 136
    const v16, 0x7f0d0051

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 137
    .local v13, tv_description_2:Landroid/widget/TextView;
    const v16, 0x7f0a004d

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 140
    .end local v13           #tv_description_2:Landroid/widget/TextView;
    :cond_2
    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v17, 0x1b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 141
    const v16, 0x7f0d0050

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 142
    .local v8, ll_description_2:Landroid/view/View;
    const v16, 0x7f0d0052

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 143
    .local v9, ll_description_3:Landroid/view/View;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .end local v8           #ll_description_2:Landroid/view/View;
    .end local v9           #ll_description_3:Landroid/view/View;
    :cond_3
    sget-short v16, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 148
    const v16, 0x7f0d0056

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 149
    .local v10, ll_description_5:Landroid/view/View;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .end local v10           #ll_description_5:Landroid/view/View;
    :cond_4
    const v16, 0x7f0d0058

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 153
    .local v14, tv_url:Landroid/widget/TextView;
    if-eqz v14, :cond_6

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getLearnMoreName()Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, name:Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 157
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getLearnMoreLink()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, link:Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 162
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v7           #link:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    :cond_6
    :goto_2
    const v16, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 170
    .local v3, btnClose:Landroid/widget/Button;
    if-eqz v3, :cond_7

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_7
    const v16, 0x7f0d0003

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 174
    .local v2, btnBack:Landroid/widget/Button;
    if-eqz v2, :cond_8

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :cond_8
    const v16, 0x7f0d003f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 178
    .local v6, layout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 180
    const/16 v16, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v6, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/TutorialActivity;->enableBackKey()V

    goto/16 :goto_1

    .line 165
    .end local v2           #btnBack:Landroid/widget/Button;
    .end local v3           #btnClose:Landroid/widget/Button;
    .end local v6           #layout:Landroid/widget/LinearLayout;
    .restart local v7       #link:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_2
.end method
