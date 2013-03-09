.class Lcom/htc/sdm/activity/SoundSetList$5;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetList;->getAddDialogTelstra(Ljava/lang/Boolean;)Landroid/app/Dialog;
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
    .line 911
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$5;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 914
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 915
    packed-switch p2, :pswitch_data_0

    .line 933
    :goto_0
    return-void

    .line 919
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$5;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->GotoCreateNewPage()V

    goto :goto_0

    .line 924
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://waprd.telstra.com/redirect?target=3glatesttones"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 925
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 926
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$5;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 930
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$5;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->GotoDownloadPage()V

    goto :goto_0

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
