.class Lcom/htc/android/psclient/SwitchUsbSettings$1$1;
.super Ljava/lang/Object;
.source "SwitchUsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/SwitchUsbSettings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 132
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "New thread to start setting UI."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const v21, 0x7f030003

    invoke-virtual/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->setContentView(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "common_app_bkg"

    const v22, 0x20806b7

    invoke-static/range {v20 .. v22}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 135
    .local v5, bgId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getWindow()Landroid/view/Window;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->items:[Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$402(Lcom/htc/android/psclient/SwitchUsbSettings;[Ljava/lang/String;)[Ljava/lang/String;

    .line 143
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02000f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 144
    .local v19, xpp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v21

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$502(Lcom/htc/android/psclient/SwitchUsbSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02000e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v21

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$602(Lcom/htc/android/psclient/SwitchUsbSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v19           #xpp:Landroid/content/res/XmlResourceParser;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const v21, 0x7f090013

    invoke-virtual/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HeaderBarText;

    .line 152
    .local v8, headerText:Lcom/htc/widget/HeaderBarText;
    if-nez v8, :cond_0

    .line 153
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "headerText = null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    .line 312
    :goto_1
    return-void

    .line 147
    .end local v8           #headerText:Lcom/htc/widget/HeaderBarText;
    :catch_0
    move-exception v7

    .line 148
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #headerText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const v21, 0x7f090017

    invoke-virtual/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcFooterButton;

    .line 158
    .local v6, done:Lcom/htc/widget/HtcFooterButton;
    if-nez v6, :cond_1

    .line 159
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "done = null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    goto :goto_1

    .line 163
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const v22, 0x7f090014

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 165
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "list = null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    goto/16 :goto_1

    .line 170
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 171
    .local v16, orientation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 172
    .local v17, params:Landroid/view/ViewGroup$LayoutParams;
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060014

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "Charge Only"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "Disk Drive"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 180
    :cond_3
    const/16 v20, 0x1

    sput-boolean v20, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 185
    :goto_3
    const v20, 0x7f070002

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 186
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 187
    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/htc/widget/HeaderBarText;->setPadding(IIII)V

    .line 190
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v21, 0x1b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07004b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, htc_sync:Ljava/lang/String;
    :goto_4
    sget-short v20, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v21, 0xa8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070006

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    .local v12, internet_sharing:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, modem_link:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070007

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, media_sync:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07000a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, internet_pass_through:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isHTCSyncAvaliable()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    const-string v21, "HTC Sync"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/PSCommon;->isInternetSharingAvaliable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    const-string v21, "Internet Sharing"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v20, "ro.cid"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, CID:Ljava/lang/String;
    const-string v20, "ORANG202"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$802(Lcom/htc/android/psclient/SwitchUsbSettings;Z)Z

    .line 222
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "Internet Sharing"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const-string v21, "Charge Only"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .end local v4           #CID:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isModemLinkAvaliable()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    const-string v21, "Modem link"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v20, "ro.cid"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4       #CID:Ljava/lang/String;
    const-string v20, "ORANG202"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$802(Lcom/htc/android/psclient/SwitchUsbSettings;Z)Z

    .line 238
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "Modem link"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    const-string v21, "Charge Only"

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .end local v4           #CID:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMediaSyncAvaliable()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    const-string v21, "Media Sync"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_9
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isInternetPassThroughAvaliable()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    const-string v21, "Internet Pass Through"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->items:[Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$402(Lcom/htc/android/psclient/SwitchUsbSettings;[Ljava/lang/String;)[Ljava/lang/String;

    .line 254
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_f

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->items:[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$400(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v21, v10

    .line 254
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 176
    .end local v9           #htc_sync:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #internet_pass_through:Ljava/lang/String;
    .end local v12           #internet_sharing:Ljava/lang/String;
    .end local v14           #media_sync:Ljava/lang/String;
    .end local v15           #modem_link:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060013

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 182
    :cond_c
    const/16 v20, 0x0

    sput-boolean v20, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    goto/16 :goto_3

    .line 193
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070003

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #htc_sync:Ljava/lang/String;
    goto/16 :goto_4

    .line 200
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #internet_sharing:Ljava/lang/String;
    goto/16 :goto_5

    .line 257
    .restart local v10       #i:I
    .restart local v11       #internet_pass_through:Ljava/lang/String;
    .restart local v14       #media_sync:Ljava/lang/String;
    .restart local v15       #modem_link:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #calls: Lcom/htc/android/psclient/SwitchUsbSettings;->setListViewContent()V
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$900(Lcom/htc/android/psclient/SwitchUsbSettings;)V

    .line 259
    sget-boolean v20, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    if-nez v20, :cond_10

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 261
    .local v13, mapStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .line 262
    .local v18, prev_btn_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/SwitchUsbSettings$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/psclient/SwitchUsbSettings$1;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    #setter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v0, v1}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I

    .line 265
    .end local v13           #mapStr:Ljava/lang/String;
    .end local v18           #prev_btn_id:I
    :cond_10
    const v20, 0x7f070013

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 266
    new-instance v20, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/psclient/SwitchUsbSettings$1$1$1;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings$1$1;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method
