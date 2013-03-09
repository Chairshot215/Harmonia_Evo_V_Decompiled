.class public Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;
.super Ljava/lang/Object;
.source "PersonalizeMain.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/PersonalizeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalizeOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v5, 0x1

    .line 602
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 603
    .local v2, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    iget-object v1, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 604
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.intent.ACTION_PERSONALIZE_ADD_TO_HOME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    :goto_0
    return-void

    .line 608
    :cond_0
    if-eqz v0, :cond_2

    const-string v3, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 610
    invoke-static {}, Lcom/htc/home/personalize/config/SettingUtil;->isLiveWallaperSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 612
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    #calls: Lcom/htc/home/personalize/PersonalizeMain;->startWallpaper()V
    invoke-static {v3}, Lcom/htc/home/personalize/PersonalizeMain;->access$900(Lcom/htc/home/personalize/PersonalizeMain;)V

    goto :goto_0

    .line 614
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/PersonalizeMain;->showDialog(I)V

    goto :goto_0

    .line 617
    :cond_2
    if-eqz v0, :cond_4

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 618
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 620
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 621
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v4, 0xd

    invoke-virtual {v3, v1, v4}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 625
    :cond_3
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 626
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    const/16 v4, 0xe

    invoke-virtual {v3, v1, v4}, Lcom/htc/home/personalize/PersonalizeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 631
    :cond_4
    iget-object v3, p0, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    iget-object v4, v2, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/PersonalizeMain;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method
