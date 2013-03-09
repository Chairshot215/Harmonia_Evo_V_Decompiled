.class public Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalizeOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 8338
    iput-object p1, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

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

    .line 8343
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 8344
    .local v2, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget-object v1, v2, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 8345
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8346
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.intent.ACTION_PERSONALIZE_ADD_TO_HOME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8347
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v3, v5}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 8348
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Launcher;->onClickAddtoHome(Lcom/htc/launcher/CellInfo;)V

    .line 8366
    :goto_0
    return-void

    .line 8349
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "com.htc.intent.ACTION_PERSONALIZE_WALLPAPER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8350
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v3, v5}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 8351
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->startWallpaper()V
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$5400(Lcom/htc/launcher/Launcher;)V

    goto :goto_0

    .line 8352
    :cond_1
    if-eqz v0, :cond_3

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8353
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 8354
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8355
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v4, 0xd

    invoke-virtual {v3, v1, v4}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 8357
    :cond_2
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8358
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    const/16 v4, 0xe

    invoke-virtual {v3, v1, v4}, Lcom/htc/launcher/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 8362
    :cond_3
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    #setter for: Lcom/htc/launcher/Launcher;->mAddHtcWidgetByOtherActivity:Z
    invoke-static {v3, v5}, Lcom/htc/launcher/Launcher;->access$5102(Lcom/htc/launcher/Launcher;Z)Z

    .line 8363
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v4, v2, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method
