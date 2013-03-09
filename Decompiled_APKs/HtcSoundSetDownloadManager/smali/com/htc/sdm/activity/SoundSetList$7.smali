.class Lcom/htc/sdm/activity/SoundSetList$7;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetList;->getAddDialog()Landroid/app/Dialog;
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
    .line 1031
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$7;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1034
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1035
    packed-switch p2, :pswitch_data_0

    .line 1048
    :goto_0
    return-void

    .line 1039
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$7;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetList;->GotoCreateNewPage()V

    goto :goto_0

    .line 1044
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$7;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SoundSetList;->GotoDownloadPage()V

    goto :goto_0

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
