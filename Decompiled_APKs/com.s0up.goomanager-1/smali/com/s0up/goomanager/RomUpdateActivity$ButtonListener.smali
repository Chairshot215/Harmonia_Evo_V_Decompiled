.class Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;
.super Ljava/lang/Object;
.source "RomUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/RomUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_GAPPS:I = 0x3

.field private static final SHARE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/RomUpdateActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/RomUpdateActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p2, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->type:I

    .line 304
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 308
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    const-class v5, Lcom/s0up/goomanager/WebViewActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v3, webViewIntent:Landroid/content/Intent;
    iget v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->type:I

    packed-switch v4, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 311
    :pswitch_0
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v4, v4, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v5, "///"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, downloadLink:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://goo.im"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string v4, "fileMd5"

    iget-object v5, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v5, v5, Lcom/s0up/goomanager/RomUpdateActivity;->fileMd5:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v4, "downloadLink"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v4, v3}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    .end local v1           #downloadLink:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v4, v4, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    const-string v5, "///"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, shareLink:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://goo.im"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v4, v2}, Lcom/s0up/goomanager/RomUpdateActivity;->share(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    .end local v2           #shareLink:Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v4, v4, Lcom/s0up/goomanager/RomUpdateActivity;->gappsFilePath:Ljava/lang/String;

    const-string v5, "///"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, downloadGappsLink:Ljava/lang/String;
    const-string v4, "fileMd5"

    iget-object v5, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    iget-object v5, v5, Lcom/s0up/goomanager/RomUpdateActivity;->gappsMd5:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://goo.im"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v4, "downloadLink"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/RomUpdateActivity;

    invoke-virtual {v4, v3}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
