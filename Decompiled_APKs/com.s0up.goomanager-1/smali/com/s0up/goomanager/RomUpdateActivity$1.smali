.class Lcom/s0up/goomanager/RomUpdateActivity$1;
.super Ljava/lang/Object;
.source "RomUpdateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/RomUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/RomUpdateActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/RomUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 172
    .local v0, BUTTON_1:I
    const/4 v1, 0x1

    .line 173
    .local v1, BUTTON_2:I
    const/4 v2, 0x2

    .line 174
    .local v2, BUTTON_3:I
    const/4 v3, 0x3

    .line 175
    .local v3, BUTTON_4:I
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    const-class v10, Lcom/s0up/goomanager/WebViewActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v8, webViewIntent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, downloadLink:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.goo.im"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    const-string v9, "fileMd5"

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->fileMd5:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v9, "downloadLink"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v8}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    .end local v6           #downloadLink:Ljava/lang/String;
    :pswitch_1
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    .line 186
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, shareLink:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.goo-inside.me"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 188
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v7}, Lcom/s0up/goomanager/RomUpdateActivity;->share(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v7           #shareLink:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 190
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->gappsFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, downloadGappsLink:Ljava/lang/String;
    const-string v9, "fileMd5"

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->gappsMd5:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://goo.im"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    const-string v9, "downloadLink"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v8}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    .end local v4           #downloadGappsLink:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://goo.im/incremental/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, downloadIncrementalLink:Ljava/lang/String;
    const-string v9, "fileMd5"

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalMd5:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v9, "downloadLink"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v8}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    .end local v5           #downloadIncrementalLink:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->gappsFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .restart local v4       #downloadGappsLink:Ljava/lang/String;
    const-string v9, "fileMd5"

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->gappsMd5:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://goo.im"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v9, "downloadLink"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v8}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 209
    .end local v4           #downloadGappsLink:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    :cond_4
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_5

    .line 212
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 213
    .restart local v7       #shareLink:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.goo-inside.me"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 214
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v7}, Lcom/s0up/goomanager/RomUpdateActivity;->share(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v7           #shareLink:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 216
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 217
    .restart local v7       #shareLink:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.goo-inside.me"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v7}, Lcom/s0up/goomanager/RomUpdateActivity;->share(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v7           #shareLink:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    #getter for: Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    invoke-static {v9}, Lcom/s0up/goomanager/RomUpdateActivity;->access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://goo.im/incremental/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .restart local v5       #downloadIncrementalLink:Ljava/lang/String;
    const-string v9, "fileMd5"

    iget-object v10, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v10, v10, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalMd5:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v9, "downloadLink"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v8}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 227
    .end local v5           #downloadIncrementalLink:Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v9, v9, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v10, "///"

    const-string v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .restart local v7       #shareLink:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.goo-inside.me"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 229
    iget-object v9, p0, Lcom/s0up/goomanager/RomUpdateActivity$1;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v9, v7}, Lcom/s0up/goomanager/RomUpdateActivity;->share(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
