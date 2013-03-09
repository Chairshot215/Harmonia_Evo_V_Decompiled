.class Lcom/htc/sdm/activity/SoundSetList$6;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetList;->getAddDialogVCAST()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$6;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 956
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 957
    packed-switch p2, :pswitch_data_0

    .line 972
    :goto_0
    return-void

    .line 961
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$6;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->GotoCreateNewPage()V

    goto :goto_0

    .line 966
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, newintent:Landroid/content/Intent;
    const-string v1, "getContent"

    const-string v2, "wh|rt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$6;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1, v0}, Lcom/htc/sdm/activity/SoundSetList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
