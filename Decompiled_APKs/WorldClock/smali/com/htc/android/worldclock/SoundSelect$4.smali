.class Lcom/htc/android/worldclock/SoundSelect$4;
.super Ljava/lang/Object;
.source "SoundSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SoundSelect;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SoundSelect;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SoundSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/android/worldclock/SoundSelect$4;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v1, myIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, myBundle:Landroid/os/Bundle;
    const-string v2, "SDMPickerType"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v2, "SDMPicketTitle"

    iget-object v3, p0, Lcom/htc/android/worldclock/SoundSelect$4;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/SoundSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$4;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    #getter for: Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/worldclock/SoundSelect;->access$000(Lcom/htc/android/worldclock/SoundSelect;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "SDMDefStrUri"

    iget-object v3, p0, Lcom/htc/android/worldclock/SoundSelect$4;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    #getter for: Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/android/worldclock/SoundSelect;->access$000(Lcom/htc/android/worldclock/SoundSelect;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect$4;->this$0:Lcom/htc/android/worldclock/SoundSelect;

    invoke-virtual {v2, v1, v5}, Lcom/htc/android/worldclock/SoundSelect;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method
