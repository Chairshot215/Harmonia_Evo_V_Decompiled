.class Lcom/htc/android/psclient/UsbConnectionSettings$1$1;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "New thread to start setting UI."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    new-instance v23, Landroid/content/Intent;

    const-string v24, "INTENT_USBCONNECTIONSETTINGS"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const v23, 0x7f030003

    invoke-virtual/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->setContentView(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    const-string v23, "common_app_bkg"

    const v24, 0x20806b7

    invoke-static/range {v22 .. v24}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 136
    .local v5, bgId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 140
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02000f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    .line 141
    .local v21, xpp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v23

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$202(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02000e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v23

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$302(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v21           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const v23, 0x7f090013

    invoke-virtual/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HeaderBarText;

    .line 149
    .local v11, headerText:Lcom/htc/widget/HeaderBarText;
    if-nez v11, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "headerText = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    .line 374
    :goto_1
    return-void

    .line 144
    .end local v11           #headerText:Lcom/htc/widget/HeaderBarText;
    :catch_0
    move-exception v10

    .line 145
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #headerText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const v23, 0x7f090017

    invoke-virtual/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcFooterButton;

    .line 155
    .local v8, done:Lcom/htc/widget/HtcFooterButton;
    if-nez v8, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "done = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    goto :goto_1

    .line 160
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const v23, 0x7f090015

    invoke-virtual/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 161
    .local v6, checkboxBkg:Landroid/widget/LinearLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const v23, 0x7f090016

    invoke-virtual/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 163
    .local v9, dontAskAgain:Landroid/widget/CheckBox;
    if-nez v9, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "dontAskAgain = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    goto/16 :goto_1

    .line 168
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const v24, 0x7f090014

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "list = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    goto/16 :goto_1

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    .line 176
    .local v19, orientation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 177
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const-string v24, "layout_inflater"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    const/high16 v24, 0x7f03

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$402(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/view/View;)Landroid/view/View;

    .line 179
    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$400(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060012

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "Charge Only"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "Disk Drive"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 189
    :cond_4
    const/16 v22, 0x1

    sput-boolean v22, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 194
    :goto_3
    const v22, 0x7f070002

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 195
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 196
    const/16 v22, 0x10

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/htc/widget/HeaderBarText;->setPadding(IIII)V

    .line 199
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0x1b

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07004b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 206
    .local v12, htc_sync:Ljava/lang/String;
    :goto_4
    sget-short v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v23, 0xa8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 211
    .local v15, internet_sharing:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070009

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 212
    .local v18, modem_link:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, media_sync:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 215
    .local v14, internet_pass_through:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isHTCSyncAvaliable()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "HTC Sync"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/PSCommon;->isInternetSharingAvaliable(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "Internet Sharing"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v22, "ro.cid"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, CID:Ljava/lang/String;
    const-string v22, "ORANG202"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$802(Lcom/htc/android/psclient/UsbConnectionSettings;Z)Z

    .line 231
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "Internet Sharing"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const-string v23, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .end local v4           #CID:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isModemLinkAvaliable()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "Modem link"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v22, "ro.cid"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .restart local v4       #CID:Ljava/lang/String;
    const-string v22, "ORANG202"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$802(Lcom/htc/android/psclient/UsbConnectionSettings;Z)Z

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "Modem link"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    const-string v23, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .end local v4           #CID:Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMediaSyncAvaliable()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "Media Sync"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_a
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isInternetPassThroughAvaliable()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v22

    const-string v23, "Internet Pass Through"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->items:[Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$902(Lcom/htc/android/psclient/UsbConnectionSettings;[Ljava/lang/String;)[Ljava/lang/String;

    .line 263
    const/4 v13, 0x0

    .local v13, i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_10

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->items:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$900(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    aput-object v22, v23, v13

    .line 263
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 184
    .end local v12           #htc_sync:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #internet_pass_through:Ljava/lang/String;
    .end local v15           #internet_sharing:Ljava/lang/String;
    .end local v17           #media_sync:Ljava/lang/String;
    .end local v18           #modem_link:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$400(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060011

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 191
    :cond_d
    const/16 v22, 0x0

    sput-boolean v22, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    goto/16 :goto_3

    .line 202
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #htc_sync:Ljava/lang/String;
    goto/16 :goto_4

    .line 209
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f070005

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #internet_sharing:Ljava/lang/String;
    goto/16 :goto_5

    .line 267
    .restart local v13       #i:I
    .restart local v14       #internet_pass_through:Ljava/lang/String;
    .restart local v17       #media_sync:Ljava/lang/String;
    .restart local v18       #modem_link:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #calls: Lcom/htc/android/psclient/UsbConnectionSettings;->setListViewContent()V
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1000(Lcom/htc/android/psclient/UsbConnectionSettings;)V

    .line 269
    sget-boolean v22, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    if-nez v22, :cond_11

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 271
    .local v16, mapStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    #setter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static/range {v22 .. v23}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I

    .line 274
    .end local v16           #mapStr:Ljava/lang/String;
    :cond_11
    const/4 v7, 0x0

    .line 275
    .local v7, checked:Z
    sget v22, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v22, :cond_12

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "usb_dont_ask"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 277
    if-eqz v7, :cond_14

    .line 278
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    const-string v23, "usb_dont_ask"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 286
    :cond_12
    sget v22, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "dock_dont_ask"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 288
    if-eqz v7, :cond_15

    .line 289
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    const-string v23, "dock_dont_ask"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "deskdock_ask_me"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 297
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    :cond_13
    new-instance v22, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$1;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$1$1;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v22, 0x7f070013

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 327
    new-instance v22, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings$1$1$2;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings$1$1;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 281
    :cond_14
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    const-string v23, "usb_dont_ask"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_7

    .line 293
    :cond_15
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    const-string v23, "dock_dont_ask"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1$1;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$1;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    move-object/from16 v22, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "deskdock_ask_me"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_8
.end method
