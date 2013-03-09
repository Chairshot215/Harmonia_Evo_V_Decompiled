.class Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;
.super Ljava/lang/Object;
.source "GooManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GooManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final BROWSE_FILES:I = 0x2

.field private static final DOWNLOAD_GAPPS:I = 0x1

.field private static final DOWNLOAD_ROMS:I = 0x5


# instance fields
.field public listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;I)V
    .locals 1
    .parameter
    .parameter "type"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener$1;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener$1;-><init>(Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    iput p2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->type:I

    .line 232
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;)Lcom/s0up/goomanager/GooManagerActivity;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v3, Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, i:Landroid/content/Intent;
    iget v2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->type:I

    packed-switch v2, :pswitch_data_0

    .line 260
    :goto_0
    :pswitch_0
    return-void

    .line 245
    :pswitch_1
    const-string v2, "path"

    const-string v3, "/gapps"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v2, v0}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :pswitch_2
    const-string v2, "path"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v2, v0}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    .line 254
    const-class v3, Lcom/s0up/goomanager/FileListActivity;

    .line 253
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v1, romDownloadsIntent:Landroid/content/Intent;
    const-string v2, "board"

    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getBoardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v2, "path"

    const-string v3, "/devs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v2, v1}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
